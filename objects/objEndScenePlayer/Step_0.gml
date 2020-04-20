/// @description Insert description here
// You can write your code in this editor
var prevX = x;
var prevY = y;
	
x += autoX;
y += autoY;
	
if (prevX > x) {
	dir = 1;
} else if (prevX < x) {
	dir = 0;
}

if (y == prevY && x == prevX) {
	image_index = 4;
	return;
}
	
animCounter++;
	
if (animCounter >= timeBetweenFrames) {
	curMoveFrame++;
		
	if (curMoveFrame > endMoveFrame) {
		curMoveFrame = 0;	
	}
		
	animCounter = 0;
		
	if (dir = 0) {
		image_index = curMoveFrame;	
	} else {
		image_index = curMoveFrame + 4;	
	}
}