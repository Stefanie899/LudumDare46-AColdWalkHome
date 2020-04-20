if (room == rmMain) {
	if (global.events[? Events.IntroComplete]) {
		objButtonSearchForWood.visible = true;
	}

	if (global.events[? Events.FoundFirstWood]) {
		objButtonAddWoodToFire.visible = true;
		objProgressBarSearchForWood.visible = true;
	}

	if (global.events[? Events.CreatureAwoken]) {
		with (objGUI) {
			fireY = y + guiHeight / 4 * 1;
		}
	
		objButtonEatFood.visible = true;
		objButtonEatFood.enabled = true;
	}

	if (global.events[? Events.AteSecondFood]) {
		objButtonLeaveCamp.visible = true;
	}
	
	if (global.events[? Events.FilledHungerMeterFirstTime]) {
		objButtonSearchForStones.visible = true;
	}
	
	if (global.events[? Events.FoundFirstStone]) {
		objProgressBarSearchForStone.visible = true;
		var upgradeMap = global.upgradeOptions[? Upgrades.WoodCapacity];
		
		upgradeMap[? UpgradeKeys.Available] = true;
		
		var stoneUpgradeMap = global.upgradeOptions[? Upgrades.StoneCapacity];
		
		stoneUpgradeMap[? UpgradeKeys.Available] = true;
	}
	
	if (global.events[? Events.UpgradeStoneCapacity1]) {
		global.resources[? Resources.MaxStone] = 50;
		var stoneUpgradeMap = global.upgradeOptions[? Upgrades.StoneCapacity];
		
		stoneUpgradeMap[? UpgradeKeys.Available] = false;
	}
	
	if (global.events[? Events.UpgradeWoodCapacity1]) {
		global.resources[? Resources.MaxWood] = 50;
		var woodUpgradeMap = global.upgradeOptions[? Upgrades.WoodCapacity];
		
		woodUpgradeMap[? UpgradeKeys.Available] = false;
	}
	
	if (global.events[? Events.UpgradeStoneCapacity1] && global.events[? Events.UpgradeWoodCapacity1] && !global.events[? Events.UpgradeAttack]) {
		var attackMap = global.upgradeOptions[? Upgrades.Attack];
		
		attackMap[? UpgradeKeys.Available] = true;
	}
	
	if (global.events[? Events.WentToLevel2] && !global.events[? Events.UpgradeScavenger]) {
		var scavengeMap = global.upgradeOptions[? Upgrades.ScavengePower];
		
		scavengeMap[? UpgradeKeys.Available] = true;
	}
	
	if (global.events[? Events.UpgradeAttack]) {
		global.canAttack = true;	
	}
	
	if (global.events[? Events.UpgradeScavenger]) {
		global.hasScavenger = true;	
	}
	
	if (global.events[? Events.UpgradeRope]) {
		global.hasRope = true;	
	}
	
	if (global.events[? Events.FoundRopeTieOn] && global.events[? Events.KilledFirstGlorn] && !global.events[? Events.UpgradeRope]) {
		var ropeMap = global.upgradeOptions[? Upgrades.Rope];
		
		ropeMap[? UpgradeKeys.Available] = true;
	}
	
	if (global.events[? Events.WentToLevel3] && !global.events[? Events.UpgradeMaxFoodEaten]) {
		var foodEatenMap = global.upgradeOptions[? Upgrades.MaxFoodEaten];
		
		foodEatenMap[? UpgradeKeys.Available] = true;
	}
	
	if (global.events[? Events.KilledTheBoar] && global.events[? Events.SeenTheBridge] && !global.events[? Events.BuiltTheBridge]) {
		var bridgeMap = global.upgradeOptions[? Upgrades.Bridge];
		
		bridgeMap[? UpgradeKeys.Available] = true;
	}
	
	// Enable/Disable buttons
	if (room == rmMain) {
		if (global.resources[? Resources.Wood] <= 0) {
			objButtonAddWoodToFire.enabled = false;	
		}
		
		if (global.resources[? Resources.Food] <= 0) {
			objButtonEatFood.enabled = false;	
		}
	}
}