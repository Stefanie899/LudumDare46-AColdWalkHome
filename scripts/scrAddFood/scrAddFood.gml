var amount = argument0;

if (room == rmMain) {
	objButtonEatFood.enabled = true;
}

global.resources[? Resources.Food] += amount;

// Seems like the player doesn't know what to do, so give them a hint.
if (global.resources[? Resources.Food] > 8 && !global.events[? Events.ShowedFoodHint] && !global.events[? Events.FilledHungerMeterFirstTime] && global.numTimesFed < 6) {
	global.events[? Events.ShowedFoodHint] = true;
		
	scrWriteTextDelayed("You can't carry much more food. The creature's belly rumbles. It points to it, as if asking you to fill your belly.", 0);
}

var diff = global.resources[? Resources.MaxFood] - global.resources[? Resources.Food]

if (global.resources[? Resources.Food] >= global.resources[? Resources.MaxFood]) {
	global.resources[? Resources.Food] = global.resources[? Resources.MaxFood];	
	
	scrAddFloatingText(objGUI.foodX + 48, objGUI.foodY - 32, "+" + string(diff), c_green);
}


scrAddFloatingText(objGUI.foodX + 48, objGUI.foodY - 32, "+" + string(amount), c_green);