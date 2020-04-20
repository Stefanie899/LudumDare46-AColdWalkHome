/// @description Insert description here
// You can write your code in this editor
if (collision_rectangle(x, y, x + sprite_width, y + sprite_height, objPlayer, false, false)) {
	if (!global.events[? Events.FinalCreatureText3] && global.events[? Events.BuiltTheBridge]) {
		global.events[? Events.FinalCreatureText3] = true;
		
		scrWriteTextDelayed("As you approach the bridge, you feel something different. Turning your head to look, the creature smiles one last time, waves goodbye, and disappears. ", 0)
		
		objCreature.image_alpha = 0;
	}
	
	instance_destroy();
}