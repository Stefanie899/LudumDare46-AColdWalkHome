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

if (place_meeting(x, y, objPlayer)) {
	switch (global.currentLevel) {
		case Levels.One:
		default:
			scrGetAcorn(self, Levels.One, Level1Keys.Acorns, Level1Keys.ExpectedAcorns);
			break;
		case Levels.Two:
			scrGetAcorn(self, Levels.Two, Level2Keys.Acorns, Level2Keys.ExpectedAcorns);
			break;
		case Levels.Three:
			scrGetAcorn(self, Levels.Three, Level3Keys.Acorns, Level3Keys.ExpectedAcorns);
			break;
	}
	instance_destroy();	
}