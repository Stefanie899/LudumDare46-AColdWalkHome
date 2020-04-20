var amount = argument0;

global.resources[? Resources.Fur] -= amount;

if (global.resources[? Resources.Fur] < 0) {
	global.resources[? Resources.Fur] = 0;	
}

scrAddFloatingText(objGUI.furX + 48, objGUI.furY - 32, "-" + string(amount), c_red);