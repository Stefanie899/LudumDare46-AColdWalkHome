/// @description Insert description here
// You can write your code in this editor
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, objPlayer, false, false)) {
	if (!global.events[? Events.FinalCreatureText2] && global.events[? Events.BuiltTheBridge]) {
		global.events[? Events.FinalCreatureText2] = true;
		
		scrWriteTextDelayed("You wonder where it came from. What it was. Why it decided to help you. You're certain you would have died on this mountain without it.", 0)
		
		objCreature.image_alpha = 0.3;
	}
	
	instance_destroy();
}