var amount = argument0;

global.resources[? Resources.Fur] += amount;

var diff = global.resources[? Resources.MaxFur] - global.resources[? Resources.Fur]

if (global.resources[? Resources.Fur] >= global.resources[? Resources.MaxFur]) {
	global.resources[? Resources.Fur] = global.resources[? Resources.MaxFur];	
	
	scrAddFloatingText(objGUI.furX + 48, objGUI.furY - 32, "+" + string(diff), c_red);
}


scrAddFloatingText(objGUI.furX + 48, objGUI.furY - 32, "+" + string(amount), c_red);