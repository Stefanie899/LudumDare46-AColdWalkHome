/// @description Insert description here
// You can write your code in this editor
if (!global.isPaused) {
	return;	
}

draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0, 0, 1280, 720, false);
draw_set_color(c_white);
draw_set_alpha(1);

scrDraw9Tile(400, 200, 480, 320, sprButtonBase, 2);

butX = 562;
butY = 264;
butWidth = 160;
butHeight = 48;

var imIndex = 0;

if (mouse_x > butX && mouse_x < butX + butWidth && mouse_y > butY && mouse_y < butY + butHeight) {
	imIndex = 1;
	
	if (mouse_check_button(mb_left)) {
		imIndex = 2;	
	}
	
	if (mouse_check_button_released(mb_left)) {
		room_goto(rmMenu);
		
		audio_stop_all();
		
		global.isPaused = false;
		
		instance_destroy(objGUI);
		instance_destroy(objTextHandler);

		instance_destroy();
	}
}

scrDraw9Tile(butX, butY, butWidth, butHeight, sprButtonBase, imIndex);

draw_text(596, 278, "Exit Game");


draw_text_ext(416, 360, "IMPORTANT: You will lose all progress! This game has no save feature!", 32, 470);
