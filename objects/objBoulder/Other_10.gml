/// @description Insert description here
// You can write your code in this editor
if (immune) {
	return;	
}

instance_create_layer(x + sprite_width / 2, y + sprite_height / 2, "Particles", objBoulderParticles); 

curHealth--;
immune = true;

image_blend = c_ltgray;

if (curHealth <= 0) {
	scrAddStone(irandom_range(1,3));
	
	instance_create_layer(x + sprite_width / 2, y + sprite_height / 2, "Particles", objBoulderParticles); 
	instance_create_layer(x + sprite_width / 2, y + sprite_height / 2, "Particles", objBoulderParticles); 

	instance_destroy();	
	
	if (!global.events[? Events.FirstBoulderDestroyed]) {
		global.events[? Events.FirstBoulderDestroyed] = true;
		
		scrWriteTextDelayed("You smash through the boulder, and the creature seems overjoyed. It motions for you to continue down the path to whatever lies ahead.", 0);
	}
	
	switch (global.currentLevel) {
		case Levels.One:
			var levelMap = global.levelData[? Levels.One];
		
			var boulderKeys = levelMap[? Level1Keys.DestroyedBoulderKeys];
		
			ds_list_add(boulderKeys, boulderKey);
		default:
			break;
		case Levels.Two:
			var levelMap = global.levelData[? Levels.Two];
		
			var boulderKeys = levelMap[? Level2Keys.DestroyedBoulderKeys];
		
			ds_list_add(boulderKeys, boulderKey);
		case Levels.Three:
			var levelMap = global.levelData[? Levels.Three];
		
			var boulderKeys = levelMap[? Level3Keys.DestroyedBoulderKeys];
		
			ds_list_add(boulderKeys, boulderKey);
	}
}