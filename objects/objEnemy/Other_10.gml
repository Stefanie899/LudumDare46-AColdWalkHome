/// @description Insert description here
// You can write your code in this editor
if (immune) {
	return;	
}

curHealth--;
immune = true;

image_blend = c_red;

if (curHealth <= 0) {
	switch (global.currentLevel) {
		case Levels.One:
		default:
			break;
		case Levels.Two:
			scrRemoveMonster(self, Levels.Two, Level2Keys.Monsters, Level2Keys.ExpectedMonsters);
			break;
		case Levels.Three:
			scrRemoveMonster(self, Levels.Three, Level3Keys.Monsters, Level3Keys.ExpectedMonsters);
			break;
	}
	
	instance_destroy();
	
	var numFur = irandom_range(1, 2);
	
	for (var i = 0; i < numFur; i++) {
		instance_create_layer(irandom_range(x - sprite_width / 2, x + sprite_width / 2), irandom_range(y - sprite_height / 2, y + sprite_height / 2), "Instances", objFur);	
	}
	
	if (!global.events[? Events.KilledFirstGlorn]) {
		global.events[? Events.KilledFirstGlorn] = true;
		
		scrWriteTextDelayed("As the monster you faced falls down, dead, a memory pops in your head. These are Glorns. They're what chased you to the top of the mountain... But something else was with them... You can't remember what.", 0);
		
		if (global.events[? Events.FoundRopeTieOn]) {
			scrWriteTextDelayed("You have a thought... Maybe you can make rope with the fur for that tie on you found? The creature, seemingly reading your thoughts, smirks and nods.", 0);
		}
		
		scrHandleEventsChanged();
	}
}