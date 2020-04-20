var amount = argument0;

global.resources[? Resources.Stone] -= amount;

if (global.resources[? Resources.Stone] <= 0) {
	global.resources[? Resources.Stone] = 0;
}

scrAddFloatingText(objGUI.stoneX + 48, objGUI.stoneY - 32, "-" + string(amount), c_ltgray);