if (!global.events[? Events.LeftCampFirstTime]) {
	global.events[? Events.LeftCampFirstTime] = true;
	
	scrWriteTextDelayed("You hardly remember where you are. It appears you're on top of a mountain. The cold is even more bitter out here, away from your fire. You had better be fast.", 0);
}

ds_map_copy(global.savedResources, global.resources);
ds_map_copy(global.savedUpgradeOptions, global.upgradeOptions);

room_goto(global.currentRoom);

if (!is_undefined(global.currentMusic)) {
	audio_stop_sound(global.currentMusic);
}

if (!global.muteMusic) {	
	global.currentMusic = audio_play_sound(forestTheme, 1, true);

	audio_sound_gain(global.currentMusic, 0, 0);
	audio_sound_gain(global.currentMusic, 1, 1000);
}