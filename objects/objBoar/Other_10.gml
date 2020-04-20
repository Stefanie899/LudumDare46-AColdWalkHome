/// @description Insert description here
// You can write your code in this editor
if (immune) {
	return;	
}

curHealth--;
immune = true;

image_blend = c_red;

if (curHealth <= 0) {
	instance_destroy();
	
	var numFur = irandom_range(4, 6);
	
	for (var i = 0; i < numFur; i++) {
		instance_create_layer(irandom_range(x - sprite_width / 2, x + sprite_width / 2), irandom_range(y - sprite_height / 2, y + sprite_height / 2), "Instances", objFur);	
	}
	
	if (!global.events[? Events.KilledTheBoar]) {
		global.events[? Events.KilledTheBoar] = true;
		
		scrWriteTextDelayed("The boar is gone. All that's left is to make it home.", 0);
		
		if (global.events[? Events.SeenTheBridge]) {
			scrWriteTextDelayed("There was that bridge east of the boar. If only I can fix that, I can go home. The creature nods hopefully.", 0);
		}
		
		scrHandleEventsChanged();
	}
}