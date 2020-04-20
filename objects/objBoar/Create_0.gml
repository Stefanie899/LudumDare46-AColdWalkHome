/// @description Insert description here
// You can write your code in this editor
if (global.events[? Events.KilledTheBoar]) {
	instance_destroy();	
}

curHealth = 18;
immune = false;

immuneCounter = 0;
timeImmune = 45;

atWaypoint = false;

destWaypoint = undefined;

dir = 0;

pauseCounter = 0;
pauseAtWaypointTime = 45;
pauseAtEndTime = 30;

hitPlayerThisRun = false;