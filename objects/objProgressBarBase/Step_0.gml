/// @description Insert description here
// You can write your code in this editor
if (!isRunning) {
	return;	
}

counter += global.timeMulti;

if (counter >= timeToComplete) {
	counter = 0;
	
	if (!is_undefined(scriptWhenDone)) {
		script_execute(scriptWhenDone);
	}
	
	isRunning = false;
}