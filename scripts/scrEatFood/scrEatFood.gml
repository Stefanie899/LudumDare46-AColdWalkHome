if (global.events[? Events.AteFirstFood] == true && global.events[? Events.AteSecondFood] == false) {
	scrWriteTextDelayed("You don't have much food left, and your immediate vicinity is barren. You decide you'll have to head away from camp to look for more.", 0);
	
	global.events[? Events.AteSecondFood] = true;
	
	scrHandleEventsChanged();
}

if (global.events[? Events.AteFirstFood] == false) {
	scrWriteTextDelayed("You eat some food, and share it with the creature.", 0);
	
	global.events[? Events.AteFirstFood] = true;
	
	scrHandleEventsChanged();
}

scrRemoveFood(1);

scrAddFedAmount(10);