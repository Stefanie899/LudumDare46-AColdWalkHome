/// @description Insert description here
// You can write your code in this editor
if (!global.events[? Events.IntroComplete]) {
	return;	
}

draw_rectangle(x, y, room_width, y + 2, false);

draw_set_valign(fa_center);

draw_text(fireX, fireY, "Fire Strength: ");

var steps = 304 / global.resources[? Resources.MaxFire];

draw_set_color(c_red);

draw_rectangle(fireBarX, fireY - 8, fireBarX + steps * global.resources[? Resources.Fire], fireY + 8, false);

draw_set_color(c_white);

draw_rectangle(fireBarX, fireY - 8, room_width - 16, fireY + 8, true);

#region Hunger and Food

if (global.events[? Events.CreatureAwoken]) {
	draw_set_valign(fa_center);

	draw_text(creatureHungerX, creatureHungerY, "Creature Hunger: ");
	//draw_text(hungerX, hungerY, "Hunger: ");

	var steps = 304 / global.resources[? Resources.MaxFedAmount];
	var hungerSteps = 304 / global.resources[? Resources.MaxFedAmount];

	draw_set_color(c_yellow);

	draw_rectangle(creatureHungerBarX, creatureHungerY - 8, creatureHungerBarX + steps * global.resources[? Resources.FedAmount], creatureHungerY + 8, false);
	//draw_rectangle(hungerBarX, hungerY - 8, hungerBarX + hungerSteps * global.resources[? Resources.FedAmount], hungerY + 8, false);

	draw_set_color(c_white);

	draw_rectangle(creatureHungerBarX, creatureHungerY - 8, room_width - 16, creatureHungerY + 8, true);
	//draw_rectangle(hungerBarX, hungerY - 8, room_width - 16, hungerY + 8, true);
	
	draw_text(foodX, foodY, "Food:  " + string(global.resources[? Resources.Food]) + " / " + string(global.resources[? Resources.MaxFood]));	
}

#endregion Creature Hunger and Food

if (global.events[? Events.FoundFirstWood]) {
	draw_text(woodX, woodY, "Wood:  " + string(global.resources[? Resources.Wood]) + " / " + string(global.resources[? Resources.MaxWood]));	
}

if (global.events[? Events.FoundFirstStone]) {
	draw_text(stoneX, stoneY, "Stone:  " + string(global.resources[? Resources.Stone]) + " / " + string(global.resources[? Resources.MaxStone]));
}

if (global.events[? Events.KilledFirstGlorn]) {
	draw_text(furX, furY, "Fur:  " + string(global.resources[? Resources.Fur]) + " / " + string(global.resources[? Resources.MaxFur]));	
}

draw_set_valign(fa_top);