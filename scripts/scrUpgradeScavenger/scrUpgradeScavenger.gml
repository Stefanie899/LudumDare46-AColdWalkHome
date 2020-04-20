var scavengeMap = global.upgradeOptions[? Upgrades.ScavengePower];

if (!scavengeMap[? UpgradeKeys.Available]) {
	return;
}

scrRemoveStone(scavengeMap[? UpgradeKeys.StoneCost]);
scrRemoveWood(scavengeMap[? UpgradeKeys.WoodCost]);
scrRemoveFood(scavengeMap[? UpgradeKeys.FoodCost]);

scavengeMap[? UpgradeKeys.Available] = false;

global.events[? Events.UpgradeScavenger] = true;

scrWriteTextDelayed("You remember being a great hunter. You used to be able to throw together a makeshift tool or a fire in moments. You feel like you'll be faster at finding materials now.", 0);

scrHandleEventsChanged();