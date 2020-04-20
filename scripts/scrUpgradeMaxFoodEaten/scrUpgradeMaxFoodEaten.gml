var foodEatenMap = global.upgradeOptions[? Upgrades.MaxFoodEaten];

if (!foodEatenMap[? UpgradeKeys.Available]) {
	return;
}

scrRemoveStone(foodEatenMap[? UpgradeKeys.StoneCost]);
scrRemoveWood(foodEatenMap[? UpgradeKeys.WoodCost]);
scrRemoveFood(foodEatenMap[? UpgradeKeys.FoodCost]);
scrRemoveFood(foodEatenMap[? UpgradeKeys.FurCost]);
		
if (!global.events[? Events.UpgradeMaxFoodEaten]) {
	scrWriteTextDelayed("The creature rubs its belly, reminding you to feed it much as you can before you attempt to make it home.", 0);
}

foodEatenMap[? UpgradeKeys.Available] = false;
		
global.events[? Events.UpgradeMaxFoodEaten] = true;
		
scrHandleEventsChanged();
		
global.resources[? Resources.MaxFedAmount] = 100;