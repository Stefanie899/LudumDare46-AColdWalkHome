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

if (!enabled) {
	image_index = 3;
}

if (mouse_check_button_pressed(mb_left)) {
	buttonDownPrior = true;
}

if (mouseIn && mouse_check_button_released(mb_left) && enabled && buttonDownPrior) {
	event_user(0);
	scrButtonClickSound();
}

if (mouse_check_button_released(mb_left)) {
	buttonDownPrior = false;	
}

scrDraw9Tile(x, y, width, height, sprButtonBase, image_index);

draw_set_halign(fa_center);

if (!enabled) {
	draw_set_alpha(0.75);	
}

draw_text(x + width / 2, y + height / 2 - string_height(text) / 2, text);

draw_set_halign(fa_left);
draw_set_alpha(1);