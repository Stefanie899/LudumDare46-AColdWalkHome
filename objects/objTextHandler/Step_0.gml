/// @description Insert description here
// You can write your code in this editor
if (global.isPaused) {
	return;	
}

if (ds_queue_size(textQueue) > 0 && is_undefined(timeToNextText)) {
	timeToNextText = ds_queue_dequeue(timerQueue);
	nextText	   = ds_queue_dequeue(textQueue);
}

if (!is_undefined(timeToNextText) && !fadingIn) {
	nextTextCounter += global.timeMulti;

	if (nextTextCounter >= timeToNextText) {
		scrWriteText(nextText);
		timeToNextText = undefined;
		nextTextCounter = 0;
	}
}

if (ds_queue_size(scriptQueue) > 0 && is_undefined(timeToNextScript)) {
	timeToNextScript = ds_queue_dequeue(scriptTimerQueue);
	nextScript	     = ds_queue_dequeue(scriptQueue);
}

if (!is_undefined(timeToNextScript) && !fadingIn) {
	nextScriptCounter += global.timeMulti;

	if (nextScriptCounter >= timeToNextScript) {
		script_execute(nextScript);
		
		timeToNextScript = undefined;
		nextScriptCounter = 0;
		nextScript = undefined;
	}
}