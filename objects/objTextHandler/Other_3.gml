/// @description Insert description here
// You can write your code in this editor
scrCleanupGlobals();

ds_list_destroy(consoleText);

ds_queue_destroy(textQueue);
ds_queue_destroy(timerQueue);

ds_queue_destroy(scriptQueue);
ds_queue_destroy(scriptTimerQueue);