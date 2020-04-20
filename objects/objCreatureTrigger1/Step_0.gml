/// @description Insert description here
// You can write your code in this editor
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, objPlayer, false, false)) {
	if (!global.events[? Events.FinalCreatureText1] && global.events[? Events.BuiltTheBridge]) {
		global.events[? Events.FinalCreatureText1] = true;
		
		scrWriteTextDelayed("The creature follows closely behind as you make your way home. You can feel the happiness and pride beaming from it as it walks behind you.", 0)
		
		objCreature.image_alpha = 0.6;
	}
	
	instance_destroy();
}