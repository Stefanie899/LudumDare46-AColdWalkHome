var amount = argument0;

global.resources[? Resources.Fire] -= amount;

if (global.resources[? Resources.Fire] < 0) {
	global.resources[? Resources.Fire] = 0;	
}