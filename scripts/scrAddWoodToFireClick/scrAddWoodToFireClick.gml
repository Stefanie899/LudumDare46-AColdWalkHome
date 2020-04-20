if (global.resources[? Resources.Wood] <= 0) {
	scrWriteTextDelayed("You don't have any wood to burn.", 0);
	return;
}

if (global.events[? Events.AddedFirstWoodToFire] == false) {
	scrWriteTextDelayed("You add some more wood to the fire. The creature smiles and points to its belly. It seems he won't get hungry as quickly when the fire is lit. Your warmth encourages you to work faster.", 0);
	
	global.events[? Events.AddedFirstWoodToFire] = true;
}

scrRemoveWood(1);

scrAddFire(20);