objProgressBarSearchForWood.visible = true;

var progressBase = 300;

if (global.resources[? Resources.Fire] > 0) {
	progressBase = 210;	
}

objProgressBarSearchForWood.timeToComplete = global.hasScavenger ? progressBase / 2 : progressBase;
objProgressBarSearchForWood.isRunning = true;
objProgressBarSearchForWood.scriptWhenDone = scrWoodButtonComplete;

objButtonSearchForWood.enabled = false;

if (global.events[? Events.SearchedForFirstWood] == false) {
	scrWriteTextDelayed("You look around the camp for wood...", 0);
	
	global.events[? Events.SearchedForFirstWood] = true;
	
	scrHandleEventsChanged();
}