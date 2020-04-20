var amount = argument0;

if (global.resources[? Resources.Fire] > 0 && room == rmMain) {
	amount = amount / 2;	
}

global.resources[? Resources.FedAmount] -= amount;

if (global.resources[? Resources.FedAmount] < 5 && !global.events[? Events.ShowedHungerMessage]) {
	global.events[? Events.ShowedHungerMessage] = true;
	
	scrWriteTextDelayed("The creature looks distressed and points at its stomach... You should feed it food as quickly as possible.", 0);
}

if (global.resources[? Resources.FedAmount] < 0) {
	global.events[? Events.ShowedHungerMessage] = false;
	
	if (global.savedResources[? Resources.FedAmount] < 15) {
		global.savedResources[? Resources.FedAmount] = 15;	
	}

	scrWriteTextDelayed("The creature's belly is sunken and distorted. The hunger gets the best of it, and it passes out. You follow shortly behind. The world fades, and so does -- it seems -- the creature. You awaken at camp, as if you had never left, the creature by your side.", 0);
	ds_map_copy(global.resources, global.savedResources);
	ds_map_copy(global.upgradeOptions, global.savedUpgradeOptions);	
	
	scrLoadLevels();
	
	global.pauseHunger = true;
	
	scrRunScriptDelayed(scrUnpauseHunger, 300);

	if (room != rmMain) {
		room_goto(rmMain);
		
		if (!is_undefined(global.currentMusic)) {
			audio_stop_sound(global.currentMusic);
		
			global.currentMusic = undefined;
		}
	}
}