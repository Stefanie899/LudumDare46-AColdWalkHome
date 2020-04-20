/// @description Insert description here
// You can write your code in this editor
if (global.isPaused) {
	return;	
}

if (instance_exists(objPlayer) && objPlayer.tempPause) {
	return;	
}

if (global.resources[? Resources.Fire] > 0) {
	fireCounter += 1;

	if (fireCounter >= timeToReduceFire) {	
		scrRemoveFire(1);
		
		fireCounter = 0;
	}
}

if (global.events[? Events.CreatureAwoken] && !global.events[? Events.FinalCreatureText1] && !global.pauseHunger) {
	foodCounter += 1;

	if (foodCounter >= timeToReduceFedAmount) {
		scrRemoveFedAmount(1);
		
		foodCounter = 0;
	}
}

scrLevelHandler();