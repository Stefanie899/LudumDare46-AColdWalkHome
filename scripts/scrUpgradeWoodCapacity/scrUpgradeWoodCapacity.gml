var woodMap = global.upgradeOptions[? Upgrades.WoodCapacity];

if (!woodMap[? UpgradeKeys.Available]) {
	return;
}

woodMap[? UpgradeKeys.LevelsPurchased]++;

scrRemoveStone(woodMap[? UpgradeKeys.StoneCost]);
scrRemoveWood(woodMap[? UpgradeKeys.WoodCost]);
scrRemoveFood(woodMap[? UpgradeKeys.FoodCost]);

switch (woodMap[? UpgradeKeys.LevelsPurchased]) {
	case 1: 		
		if (!global.events[? Events.UpgradeStoneCapacity1]) {
			scrWriteTextDelayed("The creature looks at you and smiles. It seems happy with your progress.", 0);
		}
		
		global.events[? Events.UpgradeWoodCapacity1] = true;
				
		if (global.events[? Events.UpgradeStoneCapacity1] && global.events[? Events.UpgradeWoodCapacity1]) {
			scrWriteTextDelayed("More memories return to you. A foggy night. You were out hunting for your family. You couldn't see where you were going. The forest swallowed you up. The memory flees from you as quickly as it came.", 0);	
		}
		
		scrHandleEventsChanged();
		
		global.resources[? Resources.MaxWood] = 50;

		woodMap[? UpgradeKeys.StoneCost] = 20;
		woodMap[? UpgradeKeys.WoodCost] = 35;
		woodMap[? UpgradeKeys.FoodCost] = 5;

		break;
}