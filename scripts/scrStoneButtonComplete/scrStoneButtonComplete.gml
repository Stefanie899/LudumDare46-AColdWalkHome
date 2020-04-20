objButtonSearchForStones.enabled = true;

objButtonSearchForStones.timeSinceLastStoneFind++;

if (irandom_range(0, 100) <= 100 || 
	(!global.events[? Events.FoundFirstStone]) ||
	objButtonSearchForStones.timeSinceLastStoneFind > 5) 
{
	scrAddStone(global.hasScavenger ? irandom_range(3, 6) : irandom_range(1, 3));
	
	if (!global.events[? Events.FoundFirstStone]) {
		global.events[? Events.FoundFirstStone] = true;
		
		scrWriteTextDelayed("As you pick up the stone, a memory returns. You used to know how to craft tools. You remember some of the old things you used to build. You just need the resources.", 0);
		
		scrHandleEventsChanged();
	}
	
	objButtonSearchForStones.timeSinceLastStoneFind = 0;
	
	return;
}

// Show the player they didn't find anything.
scrAddStone(0);