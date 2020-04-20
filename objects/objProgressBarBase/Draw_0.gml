/// @description Insert description here
// You can write your code in this editor
if (isRunning) {
	draw_set_color(c_red);

	var step = width / timeToComplete;

	draw_rectangle(x, y + 1, x + counter * step, y + height - 2, false);
}

draw_set_color(c_white);
	
draw_rectangle(x, y, x + width, y + height, true);

draw_set_color(c_white);