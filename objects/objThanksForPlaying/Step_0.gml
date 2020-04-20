/// @description Insert description here
// You can write your code in this editor
if (fadeIn && image_alpha <= 1) {
	actualCounter++;
	
	if (actualCounter < timeToActual) {
		return;	
	}
	
	image_alpha += 0.005;
	
	if (image_alpha >= 1) {
		image_alpha = 1;
		fadeIn = false;
		
		alarm_set(0, 900);
	}
}

if (image_alpha == 1 && keyboard_check_pressed(vk_escape)) {
	room_goto(rmMenu);
	
	if (instance_exists(objInGameMenuHandler)) {
		instance_destroy(objInGameMenuHandler);
	}
}