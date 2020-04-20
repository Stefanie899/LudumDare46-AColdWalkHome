var ropeMap = global.upgradeOptions[? Upgrades.Rope];

if (!ropeMap[? UpgradeKeys.Available]) {
	return;
}

scrRemoveStone(ropeMap[? UpgradeKeys.StoneCost]);
scrRemoveWood(ropeMap[? UpgradeKeys.WoodCost]);
scrRemoveFood(ropeMap[? UpgradeKeys.FoodCost]);
scrRemoveFur(ropeMap[? UpgradeKeys.FurCost]);

ropeMap[? UpgradeKeys.Available] = false;

global.events[? Events.UpgradeRope] = true;

scrWriteTextDelayed("You remember what drove you up that rope in the first place. A huge beast... A boar, as you recall. Almost killed you. Your side aches almost in response.", 0);

scrWriteTextDelayed("Lifting your shirt, you see a gash, barely finished bleeding. The entire left half of your torso is a deep purple and blue. The boar must have done this to you.", 120);

scrWriteTextDelayed("The creature moves closer to you, and places its hand on your side. The pain subsides at the cool touch. It looks you in the eye, its face somber.", 120);

scrWriteTextDelayed("You have to get home to your family. They must be wondering where you are. Time to climb back down the mountain.", 120);

scrHandleEventsChanged();