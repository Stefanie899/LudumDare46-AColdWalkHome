/// @description Insert description here
// You can write your code in this editor
depth = layer_get_depth("Instances") - y;

if (!objPlayer.attacking && immune) {
	immune = false;	
	image_blend = c_white;
}