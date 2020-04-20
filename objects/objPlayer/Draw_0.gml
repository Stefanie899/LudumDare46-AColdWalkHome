/// @description Insert description here
// You can write your code in this editor
if (global.canAttack) {
	var angle = point_direction(x + sprite_width / 2, y + sprite_height / 2, mouse_x, mouse_y);
	
	var newX = lengthdir_x(16, angle) + x + sprite_width / 2;
	var newY = lengthdir_y(16, angle) + y + sprite_height / 2;
	
	if (attacking) {
		newX = lengthdir_x(8, attackAngle) + x + sprite_width / 2;
		newY = lengthdir_y(8, attackAngle) + y + sprite_height / 2;
		
		draw_sprite_ext(sprAttackArc, attackAnim, newX, newY, 1, 1, attackAngle - 90, c_white, 0.75);	
	} else {
		draw_sprite_ext(sprAttackDirection, 0, newX, newY, 1, 1, angle - 90, c_white, 0.5);	
	}
}

var tempAlpha = 1;

var ropeInst = collision_rectangle(x, y, x + sprite_width, y + sprite_width, objRopePath, false, true);
if (ropeInst != noone) {
	image_index = 8;
	
	tempAlpha = ropeInst.alpha;
}

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, tempAlpha);
