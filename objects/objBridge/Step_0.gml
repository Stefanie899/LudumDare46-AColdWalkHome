/// @description Insert description here
// You can write your code in this editor
if (distance_to_object(objPlayer) < 64 && !global.events[? Events.SeenTheBridge]) {
	global.events[? Events.SeenTheBridge] = true;
	
	scrWriteTextDelayed("This is the bridge you crossed when you first came to this mountain to hunt. Something has broken it.", 0);
			
	if (global.events[? Events.KilledTheBoar]) {
		scrWriteTextDelayed("Now the boar has been killed. You just need to build a bridge and you can get home. Get back to your family. The creature smiles and nods.", 0);
	}	
	
	scrHandleEventsChanged();
}