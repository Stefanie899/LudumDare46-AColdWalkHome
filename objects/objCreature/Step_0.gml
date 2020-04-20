/// @description Insert description here
// You can write your code in this editor
depth = layer_get_depth("Instances") - y;

if (global.events[? Events.FinalCreatureText1]) {
	return;	
}

var steps = 0.6 / 10;

if (global.resources[? Resources.CreatureFedAmount] < 10) {
	image_alpha = 0.4 + global.resources[? Resources.CreatureFedAmount] * steps;
}