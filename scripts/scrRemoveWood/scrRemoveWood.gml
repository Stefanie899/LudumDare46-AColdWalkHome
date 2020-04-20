var amount = argument0;

global.resources[? Resources.Wood] -= amount;

if (global.resources[? Resources.Wood] <= 0) {
	global.resources[? Resources.Wood] = 0;	
	
	objButtonAddWoodToFire.enabled = false;
}

scrAddFloatingText(objGUI.woodX + 48, objGUI.woodY - 32, "-" + string(amount), make_color_rgb(222, 192, 160));