/// @description Insert description here
// You can write your code in this editor
if (!isChasing) {
	if (distance_to_object(objPlayer) < 32) {
		pauseCounter++;

		if (pauseCounter > pauseTime) {
			isChasing = true;
		}
	} else {
		pauseCounter = 0;	
	}
	
	return;
}

image_angle = point_direction(x, y, objPlayer.bbox_left + 4, objPlayer.bbox_bottom - 4);
move_towards_point(objPlayer.bbox_left + 4, objPlayer.bbox_bottom - 4, 3);

if (place_meeting(x, y, objPlayer) && isChasing) {
	scrAddFur(1);
	instance_destroy();	
}