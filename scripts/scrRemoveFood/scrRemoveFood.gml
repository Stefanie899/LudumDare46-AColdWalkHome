var amount = argument0;

global.resources[? Resources.Food] -= amount;

if (global.resources[? Resources.Food] <= 0) {
	global.resources[? Resources.Food] = 0;
	
	objButtonEatFood.enabled = false;
}

scrAddFloatingText(objGUI.foodX + 48, objGUI.foodY - 32, "-" + string(amount), c_green);