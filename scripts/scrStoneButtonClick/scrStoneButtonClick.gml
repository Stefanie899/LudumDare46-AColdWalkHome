objProgressBarSearchForStone.visible = true;

var progressBase = 420;

if (global.resources[? Resources.Fire] > 0) {
	progressBase = 270;	
}

objProgressBarSearchForStone.timeToComplete = global.hasScavenger ? progressBase / 2 : progressBase;
objProgressBarSearchForStone.isRunning = true;
objProgressBarSearchForStone.scriptWhenDone = scrStoneButtonComplete;

objButtonSearchForStones.enabled = false;

if (global.events[? Events.SearchedForFirstStone] == false) {
	scrWriteTextDelayed("You look around the camp for stones...", 0);
	
	global.events[? Events.SearchedForFirstStone] = true;
	
	scrHandleEventsChanged();
}