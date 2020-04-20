/// @description Insert description here
// You can write your code in this editor
draw_set_font(fntExtraLarge);
draw_set_color(c_green);
draw_set_halign(fa_right);

draw_text(760, 320, "0:0" + string(second));
draw_set_halign(fa_left);

draw_set_alpha(1);
draw_set_color(c_white);