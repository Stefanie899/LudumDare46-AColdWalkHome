/// @description Insert description here
// You can write your code in this editor
if (!global.hasRope) {
	instance_destroy();
	return;
}

with (instance_position(x, y, objCollision)) {
	instance_destroy();	
}