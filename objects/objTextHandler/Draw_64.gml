/// @description Insert description here
// You can write your code in this editor
draw_set_font(fntMain);

var startIndex = 0;
var endIndex = ds_list_size(consoleText) - 1;

var height = y;
var maxHeight = objGUI.y - y - 64;
var maxWidth = room_width - x - 16;

for (var i = ds_list_size(consoleText) - 1; i >= 0; i--) {
	height += string_height_ext(consoleText[| i], 24, maxWidth) + 16;
	
	if (height >= maxHeight - 8) {
		startIndex = i;
		break;
	}
}

var curY = y;

for (var i = startIndex; i <= endIndex; i++) {
	if (i >= ds_list_size(consoleText)) {
		continue;	
	}
	
	draw_set_alpha(1);
	
	if (i == endIndex && fadingIn) {
		textFadeInCounter += global.timeMulti;

		var fadeStep = (1 / timeToFadeIn);

		draw_set_alpha(fadeStep * textFadeInCounter);
		
		if (textFadeInCounter >= timeToFadeIn) {
			draw_set_alpha(1);
			fadingIn = false;
		}
	}
	
	draw_text_ext(x, curY, consoleText[| i], 24, maxWidth);
	
	curY += string_height_ext(consoleText[| i], 24, maxWidth) + 16;
}

draw_set_alpha(1);