/// @description Insert description here
// You can write your code in this editor
room_goto(rmMain);

global.pauseHunger = true;

scrWriteTextDelayed("You continue down the mountain path. Slowly, you move your existing camp to another further down the mountainside. After you move the last stash of goods, exhaustion overcomes you and you fall asleep.", 0);

scrWriteTextDelayed("You awake, cold as ever. The fire is out. The creature hasn't left your side, and perks up when your eyes open, as if it doubted you would awaken. It points to its stomach, asking for food.", 240);

scrWriteTextDelayed("Flashbacks pop in and out of your head. Your family was starving. You hadn't found food in weeks, so you had to do something desperate. You climbed the mountain to find something -- anything.", 240);

scrWriteTextDelayed("Noises from outside interrupt your recall. The creature looks warily out the entrance of your camp.", 120);

scrRunScriptDelayed(scrUnpauseHunger, 500);

global.resources[? Resources.Fire] = 0;
global.resources[? Resources.CreatureFedAmount] = 20;
global.resources[? Resources.MaxFood] = 20;

global.events[? Events.WentToLevel2] = true;

scrHandleEventsChanged();

// Save the game. TODO: Put this in a script!!
ds_map_copy(global.savedResources, global.resources);
ds_map_copy(global.savedUpgradeOptions, global.upgradeOptions);

global.currentRoom = rmOutsideLevel2;
global.currentLevel = Levels.Two;

if (!is_undefined(global.currentMusic)) {
	audio_stop_sound(global.currentMusic);
		
	global.currentMusic = undefined;
}