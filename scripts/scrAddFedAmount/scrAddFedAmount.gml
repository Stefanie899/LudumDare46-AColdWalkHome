var amount = argument0;

global.resources[? Resources.FedAmount] += amount;

global.numTimesFed++;

if ((global.resources[? Resources.FedAmount] >= global.resources[? Resources.MaxFedAmount] - 10 || global.numTimesFed > 6) && !global.events[? Events.FilledHungerMeterFirstTime])  {
	global.events[? Events.FilledHungerMeterFirstTime] = true;
		
	scrWriteTextDelayed("The creature seems satiated, and as you look around the camp you notice the creature staring at something on the ground. It's a rock. Maybe you could do something with them...", 0);
		
	scrHandleEventsChanged();
}

if (global.resources[? Resources.FedAmount] >= global.resources[? Resources.MaxFedAmount]) {
	global.resources[? Resources.FedAmount] = global.resources[? Resources.MaxFedAmount];
}