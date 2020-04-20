if (global.muteSound) {
	return;
}

var snd = audio_play_sound(sndClick, 1, false);
audio_sound_pitch(snd, 1 + random_range(-0.02, 0.02));