var amount = argument0;

global.resources[? Resources.Fire] += amount;

if (!global.events[? Events.MidwayFirstFireBar] && global.resources[? Resources.Fire] > global.resources[? Resources.MaxFire] / 2) {
	global.events[? Events.MidwayFirstFireBar] = true;
		
	scrWriteTextDelayed("The fire glows brighter, embers start streaming into the sky. It's begging to be fed.", 120);
}
	
if (!global.events[? Events.FilledFirstFireBar] && global.resources[? Resources.Fire] > global.resources[? Resources.MaxFire] - 20) {
	global.events[? Events.FilledFirstFireBar] = true;
	
	scrWriteTextDelayed("The fire is roaring now. You feel the warmth returning to your bones.", 120);
	
	scrWriteTextDelayed("As your body warms, your stomach starts grumbling. You look at the meager rations you scrounged yesterday and wonder whether or not you have the strength to carry on.", 120);
	
	scrWriteTextDelayed("The creature looks hungry too. It seems so helpless. You feel compelled to feed it.", 240);
	
	scrRunScriptDelayed(scrAwakenCreature, 600);
}

if (global.resources[? Resources.Fire] > global.resources[? Resources.MaxFire]) {
	global.resources[? Resources.Fire] = global.resources[? Resources.MaxFire];	
}