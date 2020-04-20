/// @description Insert description here
// You can write your code in this editor
if (global.isPaused) {
	return;	
}

if (global.events[? Events.FinalCreatureText1]) {
	instance_destroy();	
}

depth = layer_get_depth("Instances") - y + 16;

prevX = x;

if (immune) {
	immuneCounter++;
	
	if (immuneCounter >= timeImmune) {
		immune = false;	
		image_blend = c_white;
		
		immuneCounter = 0;
	}
	
	return;
}

if (attacking) {
	var grid = mp_grid_create(x - 160, y - 160, 20, 20, 16, 16);
	mp_grid_add_instances(grid, objPineTree, false);
	mp_grid_add_instances(grid, objCollision, false);
	mp_grid_add_instances(grid, objBoulder, false);

	var path = path_add();
	if (mp_grid_path(grid, path, x, y, targetX, targetY, 1))
	{
		path_start(path, 4, path_action_stop, 0);
	}
	
	var buffer = 4;
	
	if (collision_rectangle(x - sprite_width / 2 - buffer, y - sprite_height / 2 - buffer, x + sprite_width / 2 + buffer, y + sprite_height / 2 + buffer, objPlayer, false, true) != noone) {
		if (!objPlayer.immune) {
			if (!global.events[? Events.HitByGlorn]) {
				scrWriteTextDelayed("The monster hits you. Amazingly, the creature darts in front of you and takes the brunt of the attack. The effort made the creature hungrier...", 0)
				
				global.events[? Events.HitByGlorn] = true;	
			}
			
			scrRemoveFedAmount(2);	
			
			objPlayer.image_blend = c_red;
			objPlayer.immune = true;
		}
	}
	
	if (distance_to_point(targetX, targetY) < 8) {
		attacking = false;
		attackCounter = 0;
		canAttack = false;
	}
	
	return;
}

if (chargingAttack) {
	if (distance_to_object(objPlayer) > 48) {
		chargingAttack = false;
		attackCounter = 0;
		canAttack = true;
		return;
	}
	
	attackCounter++;
	
	if (attackCounter > timeToAttack) {
		targetX = objPlayer.x + sprite_get_width(sprPlayer) / 2;
		targetY = objPlayer.y + sprite_get_height(sprPlayer) / 2;
		chargingAttack = false;
		attacking = true;
		attackCounter = 0;
	}
	
	return;
}

if (!canAttack) {
	attackCounter++;
	
	if (attackCounter >= timeBetweenAttacks) {
		attackCounter = 0;
		
		canAttack = true;
	}
}

if (distance_to_object(objPlayer) > 96 && distance_to_point(origX, origY) > 16) { 
	var grid = mp_grid_create(x - 160, y - 160, 20, 20, 16, 16);
	mp_grid_add_instances(grid, objPineTree, false);
	mp_grid_add_instances(grid, objCollision, false);
	mp_grid_add_instances(grid, objBoulder, false);

	var path = path_add();
	if (mp_grid_path(grid, path, x, y, origX, origY, 1))
	{
		path_start(path, 1, path_action_stop, 0);
	}
} else if (distance_to_object(objPlayer) > 20 && distance_to_object(objPlayer) < 96) {
	var grid = mp_grid_create(x - 160, y - 160, 20, 20, 16, 16);
	mp_grid_add_instances(grid, objPineTree, false);
	mp_grid_add_instances(grid, objCollision, false);
	mp_grid_add_instances(grid, objBoulder, false);

	var path = path_add();
	if (mp_grid_path(grid, path, x, y, objPlayer.x + sprite_get_width(sprPlayer) / 2, objPlayer.y + sprite_get_height(sprPlayer) / 2, 1))
	{
		path_start(path, 1, path_action_stop, 0);
	}
} else {
	if (canAttack) {
		attacking = false;
		chargingAttack = true;
	}
	path_end();
}