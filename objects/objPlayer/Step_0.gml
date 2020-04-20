/// @description Insert description here
// You can write your code in this editor
if (global.isPaused) {
	return;	
}

depth = layer_get_depth("Instances") - y;

if (immune) {
	immuneCounter++;
	
	if (immuneCounter >= timeImmune) {
		immune = false;	
		image_blend = c_white;
		
		immuneCounter = 0;
	}
	
	with (objCreature) {
		var grid = mp_grid_create(x - 160, y - 160, 20, 20, 16, 16);

		var path = path_add();
		if (mp_grid_path(grid, path, x, y, objPlayer.x, objPlayer.y, 1))
		{
			path_start(path, 4, path_action_stop, 0);
		}
	}
}

if (tempPause) {
	var prevX = x;
	
	x += autoX;
	y += autoY;
	
	if (prevX > x) {
		dir = 1;
	} else if (prevX < x) {
		dir = 0;
	}
	
	animCounter++;
	
	if (animCounter >= timeBetweenFrames) {
		curMoveFrame++;
		
		if (curMoveFrame > endMoveFrame) {
			curMoveFrame = 0;	
		}
		
		animCounter = 0;
		
		if (dir = 0) {
			image_index = curMoveFrame;	
		} else {
			image_index = curMoveFrame + 4;	
		}
	}
	return;	
}

var up = keyboard_check(188) || keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(ord("Z"));
var down = keyboard_check(ord("O")) || keyboard_check(vk_down) || keyboard_check(ord("S"));
var left = keyboard_check(ord("A")) || keyboard_check(vk_left) || keyboard_check(ord("A")) || keyboard_check(ord("Q"));
var right = keyboard_check(ord("E")) || keyboard_check(vk_right) || keyboard_check(ord("D"));

var tempY = y;
var tempX = x;

if (up) {
	tempY -= mvSpeed;
}

if (down) {
	tempY += mvSpeed;
}

if (left) { 
	tempX -= mvSpeed;	
}

if (right) {
	tempX += mvSpeed;	
}

if (!place_free(tempX, y)) {
	tempX = x;
}

if (!place_free(x, tempY)) {
	tempY = y;
}

if (place_meeting(tempX, tempY, objTent)) {
	room_goto(rmMain);	
	
	if (!is_undefined(global.currentMusic)) {
		audio_stop_sound(global.currentMusic);
	}
	
	scrSaveLevels();
}

var tempInst = instance_position(x, y, objWarpParent);

if (tempInst != noone) {
	warpInst = tempInst;
	
	autoX = warpInst.autoX;
	autoY = warpInst.autoY;
	
	alarm_set(0, warpInst.pauseLength);
	
	tempPause = true;
}

if (tempX < x) {
	dir = 1;
} else if (tempX > x) {
	dir = 0;
}

// We can't move while attacking.
if (attacking) {
	tempX = x;
	tempY = y;
}

// We're moving.
if (tempX != x || tempY != y) {
	if (os_browser == browser_not_a_browser) {
		footStepCounter++;
	
		if (footStepCounter > timeBetweenSteps) {
			if (!global.muteSound) {
				var ftSnd = audio_play_sound(sndFootstep, 2, false);
				audio_sound_pitch(ftSnd, 0.4 + random_range(-0.2, 0.2));
			}
		
			footStepCounter = 0;
		
			instance_create_layer(x + sprite_width / 2, y + sprite_height - 4, "Instances", objFootstep);
		}
	}
	
	animCounter++;
	
	if (animCounter >= timeBetweenFrames) {
		curMoveFrame++;
		
		if (curMoveFrame > endMoveFrame) {
			curMoveFrame = 0;	
		}
		
		animCounter = 0;
		
		if (dir = 0) {
			image_index = curMoveFrame;	
		} else {
			image_index = curMoveFrame + 4;	
		}
	}

	with (objCreature) {
		var spd = clamp(distance_to_object(objPlayer) / 20, 0, 5);
		move_towards_point(objPlayer.x, objPlayer.y, spd);	
		
		if (objPlayer.x < x) {
			image_index = 1;	
		} else if (objPlayer.x > x) {
			image_index = 0;	
		}
	}
} else {
	footStepCounter = 0;
	objCreature.speed = 0;	
	
	if (dir = 0) {
		image_index = 0;	
	} else {
		image_index = 4;	
	}
}

y = tempY;
x = tempX;

if ((mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right)) && global.canAttack && !attacking) {
	attacking = true;
	
	attackCounter = 0;
	attackAnim = 0;
	
	attackAngle = point_direction(x + sprite_width / 2, y + sprite_height / 2, mouse_x, mouse_y);
}

attackCounter++;

if (attackCounter >= attackTimeBetweenFrame) {
	attackCounter = 0;
	attackAnim++;
	
	if (attackAnim >= sprite_get_number(sprAttackArc)) {
		attacking = false;
		attackAnim = 0;
	}
}

// Check to see if we hit something
if (attacking) {
	var startX = lengthdir_x(6, attackAngle) + x + sprite_width / 2;
	var startY = lengthdir_y(6, attackAngle) + y + sprite_height / 2;
	var endX = lengthdir_x(18, attackAngle) + x + sprite_width / 2;
	var endY = lengthdir_y(18, attackAngle) + y + sprite_height / 2;
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(startX, startY, endX, endY, objBoulder, false, true, _list, false);
	
	if (_num > 0)
	{
		for (var i = 0; i < _num; ++i;)
	    {
			with (_list[| i]) {
				event_user(0);
			}
	    }
	}
	
	ds_list_destroy(_list);
	
	var _list = ds_list_create();
	var _num = collision_rectangle_list(startX, startY, endX, endY, objEnemyParent, false, true, _list, false);
	
	if (_num > 0)
	{
		for (var i = 0; i < _num; ++i;)
	    {
			with (_list[| i]) {
				event_user(0);
			}
	    }
	}
	
	ds_list_destroy(_list);
}