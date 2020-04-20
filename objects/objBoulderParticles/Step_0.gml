/// @description Insert description here
// You can write your code in this editor
x += xspeed;
y += yspeed;

if (xspeed < 0) {
	xspeed += 0.01;
} else if (xspeed > 0) {
	xspeed -= 0.01;
}

counter++;

if (counter >= life) {
	instance_destroy();	
}

if (counter >= life / 2) {
	image_alpha = image_alpha - 0.02;
}