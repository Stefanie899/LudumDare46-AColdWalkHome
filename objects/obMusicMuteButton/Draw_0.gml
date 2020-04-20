/// @description Insert description here
// You can write your code in this editor
var mouseIn = mouse_x >= x && mouse_x <= x + width && mouse_y >= y && mouse_y <= y + height;

image_index = 0;

if (mouseIn) {
	image_index = 1;
}

if (mouseIn && mouse_check_button(mb_left)) {
	image_index = 2;	
}

if (global.muteMusic) {
	image_index += 3;	
}

if (mouseIn && mouse_check_button_released(mb_left) && enabled) {
	event_user(0);
}

draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, c_white, 1);