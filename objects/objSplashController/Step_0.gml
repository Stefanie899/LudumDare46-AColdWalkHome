/// @description Insert description here
// You can write your code in this editor
if (done) {
	return;	
}

counter++;

if (counter > 60) {
	counter = 0;	
	second--;
	
	if (second <= 0) {
		done = true;
		
		room_goto(rmMenu);
	}
}

if (mouse_check_button_pressed(mb_left)) {
	counter = 60;
	second = 1;
}