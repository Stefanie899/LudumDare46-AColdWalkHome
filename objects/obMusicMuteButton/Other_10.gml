/// @description Insert description here
// You can write your code in this editor
global.muteMusic = !global.muteMusic;

if (global.muteMusic) {
	audio_stop_sound(global.currentMusic);
} else {
	global.currentMusic = audio_play_sound(forestTheme, 1, true);	
	
	audio_sound_gain(global.currentMusic, 0, 0);
	audio_sound_gain(global.currentMusic, 1, 1000);
}

scrButtonClickSound();