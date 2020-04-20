var attackMap = global.upgradeOptions[? Upgrades.Attack];

if (!attackMap[? UpgradeKeys.Available]) {
	return;
}

scrRemoveStone(attackMap[? UpgradeKeys.StoneCost]);
scrRemoveWood(attackMap[? UpgradeKeys.WoodCost]);
scrRemoveFood(attackMap[? UpgradeKeys.FoodCost]);

attackMap[? UpgradeKeys.Available] = false;

global.events[? Events.UpgradeAttack] = true;

scrWriteTextDelayed("You remember being able to use a tool to attack things. You tie a piece of stone to wood, a primitive instrument, but it should do the job.", 0);

scrWriteTextDelayed("The creature looks at you warily. It can't seem to decide if it should be happy, or frightened for you. It keeps its distance.", 60);

scrWriteTextDelayed("Regardless, you're certain you could break some rocks with this tool...", 60);

scrHandleEventsChanged();