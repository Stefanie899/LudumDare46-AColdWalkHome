/// @description Insert description here
// You can write your code in this editor
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, objPlayer, false, false)) {
	objLevel3Controller.boarActive = true;
	
	instance_destroy();
}