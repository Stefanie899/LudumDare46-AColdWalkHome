/// @description Insert description here
// You can write your code in this editor
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, objEndScenePlayer, false, false)) {
	objEndScenePlayer.autoX = 0;
	objEndScenePlayer.autoY = 0;
	
	objEndLogo.fadeIn = true;
	
	instance_destroy();
}