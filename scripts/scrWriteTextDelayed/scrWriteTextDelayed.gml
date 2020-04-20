if (!instance_exists(objTextHandler)) {
	return;	
}

var textToAdd = argument0;
var delay = argument1;

with (objTextHandler) {
	ds_queue_enqueue(textQueue, textToAdd);
	ds_queue_enqueue(timerQueue, delay);
}