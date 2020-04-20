/// @description Insert description here
// You can write your code in this editor
xPos -= 1;
xPos2 -= 1;

if (xPos < sprite_get_width(sprMenuBackground) * -1) {
	xPos = xPos2 + sprite_get_width(sprMenuBackground);	
}

if (xPos2 < sprite_get_width(sprMenuBackground) * -1) {
	xPos2 = xPos + sprite_get_width(sprMenuBackground);	
}