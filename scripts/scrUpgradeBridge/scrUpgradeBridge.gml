var bridgeMap = global.upgradeOptions[? Upgrades.Bridge];

if (!bridgeMap[? UpgradeKeys.Available]) {
	return;
}

scrRemoveStone(bridgeMap[? UpgradeKeys.StoneCost]);
scrRemoveWood(bridgeMap[? UpgradeKeys.WoodCost]);
scrRemoveFood(bridgeMap[? UpgradeKeys.FoodCost]);
scrRemoveFur(bridgeMap[? UpgradeKeys.FurCost]);

bridgeMap[? UpgradeKeys.Available] = false;

global.events[? Events.BuiltTheBridge] = true;

scrWriteTextDelayed("After what feels like weeks, you've finally made it down the mountain and built the bridge to take you home.", 0);

scrWriteTextDelayed("The creature is ecstatic. It appears to be grinning. However, there is sadness in its eyes.", 60);

scrWriteTextDelayed("You're not entirely sure why -- but one thing is certain. It's time to go home.", 60);

scrHandleEventsChanged();