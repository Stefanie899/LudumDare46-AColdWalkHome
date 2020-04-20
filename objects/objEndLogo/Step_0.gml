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
		
		objThanksForPlaying.fadeIn = true;
	}
}