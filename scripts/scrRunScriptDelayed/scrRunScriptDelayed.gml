if (!instance_exists(objTextHandler)) {
	return;	
}

var scriptToAdd = argument0;
var delay = argument1;

with (objTextHandler) {
	ds_queue_enqueue(scriptQueue, scriptToAdd);
	ds_queue_enqueue(scriptTimerQueue, delay);
}