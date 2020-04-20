/// @description Insert description here
// You can write your code in this editor
if (!global.events[? Events.FoundFirstStone]) {
	return;	
}

scrDraw9Tile(x, y, width, height, sprGroupUIBase, image_index);

draw_text(x + 16, y + 16, "Upgrades");

draw_set_color(c_ltgray);

draw_rectangle(x + 1, y + 16 + string_height("Upgrades") + 8, x + width - 1, y + 16 + string_height("Upgrades") + 9, false);

draw_set_color(c_white);

var upgradeBoxY = y + 48;

var descriptionText = hasHovered ? "" : "Hover over an upgrade to view the description.";

var hoveredOverMap = undefined;

if (startIndex > 0) {
	upgradeBoxY += 40;
}

for (var i = startIndex; i < startIndex + maxShow; i++) {
	if (i >= ds_list_size(upgradeList)) {
		continue;	
	}
	
	var upgradeMap = upgradeList[| i];
	
	if (mouse_x >= x && mouse_x <= x + width && mouse_y >= upgradeBoxY && mouse_y <= upgradeBoxY + 64) {
		hoveredOverMap = upgradeMap;	
		
		draw_set_alpha(0.25);
		draw_rectangle(x, upgradeBoxY, x + width, upgradeBoxY + 64, false);
		draw_set_alpha(1);
		
		hasHovered = true;
	}
		
	var stoneCost = upgradeMap[? UpgradeKeys.StoneCost];
	var woodCost = upgradeMap[? UpgradeKeys.WoodCost];
	var foodCost = upgradeMap[? UpgradeKeys.FoodCost];
	var furCost = upgradeMap[? UpgradeKeys.FurCost];
	
	var hasTheStone = stoneCost <= global.resources[? Resources.Stone];
	var hasTheWood = woodCost <= global.resources[? Resources.Wood];
	var hasTheFood = foodCost <= global.resources[? Resources.Food];
	var hasTheFur = furCost <= global.resources[? Resources.Fur];
	
	if (hasTheWood && hasTheFood && hasTheStone && hasTheFur) {	
		draw_set_color(c_green);
	} else {
		draw_set_color(c_white);
	}
	
	draw_text(x + 16, upgradeBoxY + 8, upgradeMap[? UpgradeKeys.Name]);

	var costText = "Cost - ";
	
	if (upgradeMap[? UpgradeKeys.StoneCost] > 0) {
		costText += string(upgradeMap[? UpgradeKeys.StoneCost]) + " Stone, ";	
	}
	
	if (upgradeMap[? UpgradeKeys.WoodCost] > 0) {
		costText += string(upgradeMap[? UpgradeKeys.WoodCost]) + " Wood, ";	
	}
	
	if (upgradeMap[? UpgradeKeys.FoodCost] > 0) {
		costText += string(upgradeMap[? UpgradeKeys.FoodCost]) + " Food, ";	
	}
	
	if (upgradeMap[? UpgradeKeys.FurCost] > 0) {
		costText += string(upgradeMap[? UpgradeKeys.FurCost]) + " Fur, ";	
	}
	
	costText = string_delete(costText, string_length(costText) - 1, 2);

	draw_text(x + 16, upgradeBoxY + 40, costText);
	
	draw_rectangle(x + 1, upgradeBoxY + 64, x + width - 1, upgradeBoxY + 64, false);
	
	upgradeBoxY += 64;
}

draw_set_color(c_white);


if (startIndex > 0) {
	upgradeBoxY = y + 48;
	
	if (mouse_x >= x && mouse_x <= x + width && mouse_y >= upgradeBoxY && mouse_y <= upgradeBoxY + 40) {
		draw_set_alpha(0.25);
		draw_rectangle(x, upgradeBoxY, x + width, upgradeBoxY + 40, false);
		draw_set_alpha(1);
		
		if (mouse_check_button_pressed(mb_left)) {
			startIndex = 0;	
		}
	}
	
	draw_set_halign(fa_center);
	draw_set_color(c_green);
	draw_text(x + width / 2, upgradeBoxY + 8, "Click to Show More");
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	
	draw_rectangle(x + 1, upgradeBoxY + 40, x + width - 1, upgradeBoxY + 40, false);
} else if (ds_list_size(upgradeList) > startIndex + maxShow) {
	if (mouse_x >= x && mouse_x <= x + width && mouse_y >= upgradeBoxY && mouse_y <= upgradeBoxY + 40) {
		draw_set_alpha(0.25);
		draw_rectangle(x, upgradeBoxY, x + width, upgradeBoxY + 40, false);
		draw_set_alpha(1);
		
		if (mouse_check_button_pressed(mb_left)) {
			startIndex = 3;	
		}
	}
	
	draw_set_halign(fa_center);
	draw_set_color(c_green);
	draw_text(x + width / 2, upgradeBoxY + 8, "Click to Show More");
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}

draw_rectangle(x + 1, y + height - 104, x + width - 1, y + height - 104, false);

if (!is_undefined(hoveredOverMap)) {
	descriptionText = hoveredOverMap[? UpgradeKeys.Description];
	
	if (mouse_check_button_pressed(mb_left)) {
		var stoneCost = hoveredOverMap[? UpgradeKeys.StoneCost];
		var woodCost = hoveredOverMap[? UpgradeKeys.WoodCost];
		var foodCost = hoveredOverMap[? UpgradeKeys.FoodCost];
		var furCost = hoveredOverMap[? UpgradeKeys.FurCost];
	
		var hasTheStone = stoneCost <= global.resources[? Resources.Stone];
		var hasTheWood = woodCost <= global.resources[? Resources.Wood];
		var hasTheFood = foodCost <= global.resources[? Resources.Food];
		var hasTheFur = furCost <= global.resources[? Resources.Fur];
	
		if (hasTheWood && hasTheFood && hasTheStone && hasTheFur) {	
			script_execute(hoveredOverMap[? UpgradeKeys.ScriptToRun]);
		}
	}
}

draw_text_ext(x + 16, y + height - 96, "Description: " + descriptionText, 28, width - 16);