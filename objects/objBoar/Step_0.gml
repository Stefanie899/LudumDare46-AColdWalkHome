/// @description Insert description here
// You can write your code in this editor
if (global.isPaused) {
	return;	
}

depth = layer_get_depth("Instances") - y + 16;

if (!objLevel3Controller.boarActive) {
	return;	
}

if (immune) {
	immuneCounter++;
	
	if (immuneCounter >= timeImmune) {
		immune = false;	
		image_blend = c_white;
		
		immuneCounter = 0;
	}
}

if (!atWaypoint) {
	pauseCounter++;
	
	if (pauseCounter < pauseAtEndTime) {
		return;	
	}
	
		
	var buffer = 2;
	
	if (collision_rectangle(x - sprite_width / 2 - buffer, y - sprite_height / 2, x + sprite_width / 2 + buffer, y + sprite_height / 2 + 8, objPlayer, false, true) != noone) {
		if (!hitPlayerThisRun) {
			if (!global.events[? Events.HitByGlorn]) {
				scrWriteTextDelayed("The monster hits you. Amazingly, the creature darts in front of you and takes the brunt of the attack. The effort made the creature hungrier...", 0)
				
				global.events[? Events.HitByGlorn] = true;	
			}
			
			scrRemoveFedAmount(5);	
			
			objPlayer.image_blend = c_red;
			objPlayer.immune = true;
			hitPlayerThisRun = true;
		}
	}
	
	if (is_undefined(destWaypoint)) {
		destWaypoint = instance_find(objBoarWaypoint, irandom(instance_number(objBoarWaypoint) - 1));
	}
	
	if (point_distance(x, y, destWaypoint.x, destWaypoint.y) >= 4) {
		if (destWaypoint.x > x + 2) {
			x += 2;
		} else if (destWaypoint.x < x - 2) {
			x -= 2;
		}
		
		if (destWaypoint.y > y + 2) {
			y += 2;	
		} else if (destWaypoint.y < y - 2) {
			y -= 2;	
		}
	} else {
		atWaypoint = true;	
		pauseCounter = 0;
		destWaypoint = undefined;
	}
	
	return;
}

if (atWaypoint) {
	pauseCounter++;
	
	if (pauseCounter < pauseAtWaypointTime) {
		return;	
	}
	
	var leftInst = collision_line(x, y, x - 1000, y, objBoarEnd, false, true);
	var rightInst = collision_line(x, y, x + 1000, y, objBoarEnd, false, true);
	
	if (leftInst) {
		x -= 3;
		destWaypoint = leftInst;
	} else if (rightInst) {
		x += 3;
		destWaypoint = rightInst;
	}

	
	var buffer = 2;
	
	if (collision_rectangle(x - sprite_width / 2 - buffer, y - sprite_height / 2, x + sprite_width / 2 + buffer, y + sprite_height / 2 + 8, objPlayer, false, true) != noone) {
		if (!hitPlayerThisRun) {
			if (!global.events[? Events.HitByGlorn]) {
				scrWriteTextDelayed("The monster hits you. Amazingly, the creature darts in front of you and takes the brunt of the attack. The effort made the creature hungrier...", 0)
				
				global.events[? Events.HitByGlorn] = true;	
			}
			
			scrRemoveFedAmount(5);	
			
			objPlayer.image_blend = c_red;
			objPlayer.immune = true;
			hitPlayerThisRun = true;
		}
	}
	
	if (distance_to_point(destWaypoint.x, destWaypoint.y) < 8) { 
		destWaypoint = undefined;
		atWaypoint = false;
		pauseCounter = 0;
		hitPlayerThisRun = false;
	}
}