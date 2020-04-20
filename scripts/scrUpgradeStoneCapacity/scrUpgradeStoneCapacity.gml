var stoneMap = global.upgradeOptions[? Upgrades.StoneCapacity];

if (!stoneMap[? UpgradeKeys.Available]) {
	return;
}

stoneMap[? UpgradeKeys.LevelsPurchased]++;

scrRemoveStone(stoneMap[? UpgradeKeys.StoneCost]);
scrRemoveWood(stoneMap[? UpgradeKeys.WoodCost]);
scrRemoveFood(stoneMap[? UpgradeKeys.FoodCost]);

switch (stoneMap[? UpgradeKeys.LevelsPurchased]) {
	case 1: 
		if (!global.events[? Events.UpgradeWoodCapacity1]) {
			scrWriteTextDelayed("The creature looks at you and smiles. It seems happy with your progress.", 0);
		}
		
		global.events[? Events.UpgradeStoneCapacity1] = true;
		
		if (global.events[? Events.UpgradeStoneCapacity1] && global.events[? Events.UpgradeWoodCapacity1]) {
			scrWriteTextDelayed("More memories return to you. A foggy night. You were out hunting for your family. You couldn't see where you were going. The forest swallowed you up. The memory flees from you as quickly as it came.", 0);	
		}
		
		scrHandleEventsChanged();
		
		global.resources[? Resources.MaxStone] = 50;

		stoneMap[? UpgradeKeys.StoneCost] = 15;
		stoneMap[? UpgradeKeys.WoodCost] = 40;
		stoneMap[? UpgradeKeys.FoodCost] = 5;

		break;
}