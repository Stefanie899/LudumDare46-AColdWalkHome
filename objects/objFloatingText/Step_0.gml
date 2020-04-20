/// @description Insert description here
// You can write your code in this editor
if (global.isPaused) {
	return;	
}

counter++;

y -= 2;

if (counter >= timeToExist) { 
	instance_destroy();	
}