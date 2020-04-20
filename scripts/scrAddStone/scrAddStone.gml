var amount = argument0;

var diff = global.resources[? Resources.MaxStone] - global.resources[? Resources.Stone]

global.resources[? Resources.Stone] += amount;

if (global.resources[? Resources.Stone] > global.resources[? Resources.MaxStone]) {
	global.resources[? Resources.Stone] = global.resources[? Resources.MaxStone];	
	
	scrAddFloatingText(objGUI.stoneX + 48, objGUI.stoneY - 32, "+" + string(diff), c_ltgray);
	
	return;
}

scrAddFloatingText(objGUI.stoneX + 48, objGUI.stoneY - 32, "+" + string(amount), c_ltgray);