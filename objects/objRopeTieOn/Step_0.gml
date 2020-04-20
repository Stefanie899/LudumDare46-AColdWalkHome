/// @description Insert description here
// You can write your code in this editor
depth = layer_get_depth("Instances") - y + 6;

if (distance_to_object(objPlayer) < 64 && !global.events[? Events.FoundRopeTieOn]) {
	global.events[? Events.FoundRopeTieOn] = true;
	
	scrWriteTextDelayed("Looks like someone made a path here with a rope... A memory pops into your head. It was you. You were trying to escape, hammered this in real quick, but before you could use it, you were chased away.", 0);
			
	if (global.events[? Events.KilledFirstGlorn]) {
		scrWriteTextDelayed("You have a thought... Maybe you can make rope with fur? The creature, seemingly reading your thoughts, smirks and nods.", 0);
	}	
	
	scrHandleEventsChanged();
}