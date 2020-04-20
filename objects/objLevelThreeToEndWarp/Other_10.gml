/// @description Insert description here
// You can write your code in this editor
room_goto(rmEndRoom);

instance_destroy(objGUI);
instance_destroy(objTextHandler);

if (!is_undefined(global.currentMusic)) {
	audio_stop_sound(global.currentMusic);
		
	global.currentMusic = undefined;
}