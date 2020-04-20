/// @description Insert description here
// You can write your code in this editor
life--;

if (life <= 0) {
	instance_destroy();	
}

if (life < 60) {
	image_alpha = 0.4 + life * 0.1;	
}