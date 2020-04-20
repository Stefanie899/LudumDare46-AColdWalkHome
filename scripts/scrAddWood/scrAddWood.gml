var amount = argument0;

var diff = global.resources[? Resources.MaxWood] - global.resources[? Resources.Wood]

global.resources[? Resources.Wood] += amount;

objButtonAddWoodToFire.enabled = true;

if (global.resources[? Resources.Wood] > global.resources[? Resources.MaxWood]) {
	global.resources[? Resources.Wood] = global.resources[? Resources.MaxWood];	
	
	scrAddFloatingText(objGUI.woodX + 48, objGUI.woodY - 32, "+" + string(diff), make_color_rgb(222, 192, 160));
	
	return;
}

scrAddFloatingText(objGUI.woodX + 48, objGUI.woodY - 32, "+" + string(amount), make_color_rgb(222, 192, 160));