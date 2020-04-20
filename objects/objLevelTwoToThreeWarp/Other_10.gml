/// @description Insert description here
// You can write your code in this editor
room_goto(rmMain);

global.pauseHunger = true;

scrWriteTextDelayed("You climb down the rope. Slowly, you move your existing camp to another further down the mountainside. After you move the last stash of goods, exhaustion overcomes you and you fall asleep.", 0);

scrWriteTextDelayed("You awake, cold as ever. The fire is out and you're hungry. The creature hasn't left your side, and perks up when your eyes open, as if it doubted you would awaken.", 300);

scrWriteTextDelayed("Most of your memory has returned. Your family. The hunger. The journey for food. Finally, being chased by the boar and the Glorns up the mountain.", 240);

scrWriteTextDelayed("You passed out from the cold and awoke with this creature by your side in a camp you barely threw together.", 180);

scrWriteTextDelayed("Something stirs in the distance. The creature is pacing back and forth, like it's nervous.", 120);

scrRunScriptDelayed(scrUnpauseHunger, 850);

global.resources[? Resources.Fire] = 0;
global.resources[? Resources.CreatureFedAmount] = 20;
global.resources[? Resources.MaxFood] = 20;

if (global.resources[? Resources.Food] < 2) {
	global.resources[? Resources.Food] = 2;	
}

global.events[? Events.WentToLevel3] = true;

scrHandleEventsChanged();

// Save the game. TODO: Put this in a script!!
ds_map_copy(global.savedResources, global.resources);
ds_map_copy(global.savedUpgradeOptions, global.upgradeOptions);

global.currentRoom = rmOutsideLevel3;
global.currentLevel = Levels.Three;

if (!is_undefined(global.currentMusic)) {
	audio_stop_sound(global.currentMusic);
		
	global.currentMusic = undefined;
}