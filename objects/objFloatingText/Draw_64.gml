/// @description Insert description here
// You can write your code in this editor
draw_set_color(color);
draw_set_halign(fa_center);

var alphaStep = 0.3 / timeToExist;

if (counter >= timeToExist * 0.75) {
	draw_set_alpha(1 - alphaStep * counter);
}

draw_text(x, y, text);

draw_set_halign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);