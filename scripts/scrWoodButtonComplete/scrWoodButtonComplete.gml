objButtonSearchForWood.timeSinceLastWoodFind++;

objButtonSearchForWood.enabled = true;

if (irandom_range(0, 100) <= 100 || 
	(!global.events[? Events.FoundFirstWood]) ||
	objButtonSearchForWood.timeSinceLastWoodFind > 5) 
{
	if (!global.events[? Events.FoundFirstWood]) {
		global.events[? Events.FoundFirstWood] = true;
		
		scrHandleEventsChanged();
	}
	
	scrAddWood(global.hasScavenger ? irandom_range(2, 5) : irandom_range(1, 3));
	
	objButtonSearchForWood.timeSinceLastWoodFind = 0;
	
	return;
}

// Show the player they didn't find anything.
scrAddWood(0);