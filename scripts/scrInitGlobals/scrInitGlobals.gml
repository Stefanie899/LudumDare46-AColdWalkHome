randomize();

global.events = ds_map_create();

global.events[? Events.IntroComplete] = false;
global.events[? Events.SearchedForFirstWood] = false;
global.events[? Events.FoundFirstWood] = false;
global.events[? Events.AddedFirstWoodToFire] = false;
global.events[? Events.MidwayFirstFireBar] = false;
global.events[? Events.FilledFirstFireBar] = false;
global.events[? Events.CreatureAwoken] = false;
global.events[? Events.AteFirstFood] = false;
global.events[? Events.AteSecondFood] = false;
global.events[? Events.LeftCampFirstTime] = false;
global.events[? Events.GotFirstAcorn] = false;
global.events[? Events.ShowedHungerMessage] = false;
global.events[? Events.ShowedFoodHint] = false;
global.events[? Events.SearchedForFirstStone] = false;
global.events[? Events.FoundFirstStone] = false;
global.events[? Events.UpgradeStoneCapacity1] = false;
global.events[? Events.UpgradeWoodCapacity1] = false;
global.events[? Events.UpgradeAttack] = false;
global.events[? Events.FirstBoulderDestroyed] = false;
global.events[? Events.WentToLevel2] = false;
global.events[? Events.HitByGlorn] = false;
global.events[? Events.KilledFirstGlorn] = false;
global.events[? Events.FoundRopeTieOn] = false;
global.events[? Events.UpgradeScavenger] = false;
global.events[? Events.UpgradeRope] = false;
global.events[? Events.WentToLevel3] = false;
global.events[? Events.UpgradeMaxFoodEaten] = false;
global.events[? Events.KilledTheBoar] = false;
global.events[? Events.SeenTheBridge] = false;
global.events[? Events.BuiltTheBridge] = false;
global.events[? Events.FinalCreatureText1] = false;
global.events[? Events.FinalCreatureText2] = false;
global.events[? Events.FinalCreatureText3] = false;

global.resources = ds_map_create();

global.resources[? Resources.Wood] = 0;
global.resources[? Resources.Food] = 2;
global.resources[? Resources.Stone] = 0;
global.resources[? Resources.Fire] = 0;
global.resources[? Resources.FedAmount] = 15;
global.resources[? Resources.Fur] = 0;
global.resources[? Resources.MaxWood] = 25;
global.resources[? Resources.MaxFood] = 10;
global.resources[? Resources.MaxStone] = 25;
global.resources[? Resources.MaxFire] = 100;
global.resources[? Resources.MaxFedAmount] = 50;
global.resources[? Resources.MaxFur] = 20;

for (var i = 0; i <= 29; i++) {
	//global.events[? i] = true;	
}

global.isPaused = false;

global.timeMulti = 1;

global.savedResources = ds_map_create();

ds_map_copy(global.savedResources, global.resources);

global.levelData = ds_map_create();

global.canAttack = false;
global.hasRope = false;
global.hasScavenger = false;

global.currentLevel = Levels.One;

global.currentRoom = rmOutsideLevel1;

global.pauseHunger = false;

global.numTimesFed = 0;

scrInitLevelOneData();
scrInitLevelTwoData();
scrInitLevelThreeData();

global.savedLevelData = ds_map_create();

scrSaveLevels();

global.upgradeOptions = ds_map_create();

var upgradeMap = ds_map_create();

upgradeMap[? UpgradeKeys.Upgrade] = Upgrades.StoneCapacity;
upgradeMap[? UpgradeKeys.StoneCost] = 10;
upgradeMap[? UpgradeKeys.WoodCost] = 15;
upgradeMap[? UpgradeKeys.FoodCost] = 2;
upgradeMap[? UpgradeKeys.FurCost] = 0;
upgradeMap[? UpgradeKeys.Available] = false;
upgradeMap[? UpgradeKeys.Description] = "Increases the amount of stone that can be stored.";
upgradeMap[? UpgradeKeys.Name] = "Increase Stone Capacity";
upgradeMap[? UpgradeKeys.ScriptToRun] = scrUpgradeStoneCapacity;
upgradeMap[? UpgradeKeys.LevelsPurchased] = 0;
upgradeMap[? UpgradeKeys.LevelsAvailable] = 5;

ds_map_add_map(global.upgradeOptions, Upgrades.StoneCapacity, upgradeMap);

upgradeMap = ds_map_create();

upgradeMap[? UpgradeKeys.Upgrade] = Upgrades.WoodCapacity;
upgradeMap[? UpgradeKeys.StoneCost] = 10;
upgradeMap[? UpgradeKeys.WoodCost] = 15;
upgradeMap[? UpgradeKeys.FoodCost] = 2;
upgradeMap[? UpgradeKeys.FurCost] = 0;
upgradeMap[? UpgradeKeys.Available] = false;
upgradeMap[? UpgradeKeys.Description] = "Increases the amount of wood that can be stored.";
upgradeMap[? UpgradeKeys.Name] = "Increase Wood Capacity";
upgradeMap[? UpgradeKeys.ScriptToRun] = scrUpgradeWoodCapacity;
upgradeMap[? UpgradeKeys.LevelsPurchased] = 0;
upgradeMap[? UpgradeKeys.LevelsAvailable] = 5;

ds_map_add_map(global.upgradeOptions, Upgrades.WoodCapacity, upgradeMap);

upgradeMap = ds_map_create();

upgradeMap[? UpgradeKeys.Upgrade] = Upgrades.Attack;
upgradeMap[? UpgradeKeys.StoneCost] = 15;
upgradeMap[? UpgradeKeys.WoodCost] = 15;
upgradeMap[? UpgradeKeys.FoodCost] = 2;
upgradeMap[? UpgradeKeys.FurCost] = 0;
upgradeMap[? UpgradeKeys.Available] = false;
upgradeMap[? UpgradeKeys.Description] = "Allows you to attack (Mouse Button)"; // TODO: Would be cool to re-assign this, allow keyboard only, etc.
upgradeMap[? UpgradeKeys.Name] = "Learn to Attack";
upgradeMap[? UpgradeKeys.ScriptToRun] = scrUpgradeAttack;
upgradeMap[? UpgradeKeys.LevelsPurchased] = 0;
upgradeMap[? UpgradeKeys.LevelsAvailable] = 5;

ds_map_add_map(global.upgradeOptions, Upgrades.Attack, upgradeMap);

upgradeMap = ds_map_create();

upgradeMap[? UpgradeKeys.Upgrade] = Upgrades.ScavengePower;
upgradeMap[? UpgradeKeys.StoneCost] = 15;
upgradeMap[? UpgradeKeys.WoodCost] = 20;
upgradeMap[? UpgradeKeys.FoodCost] = 5;
upgradeMap[? UpgradeKeys.FurCost] = 0;
upgradeMap[? UpgradeKeys.Available] = false;
upgradeMap[? UpgradeKeys.Description] = "Increases the speed and amount of resources gained when scavenging stone or wood.";
upgradeMap[? UpgradeKeys.Name] = "Increase Scavenging Skill";
upgradeMap[? UpgradeKeys.ScriptToRun] = scrUpgradeScavenger;
upgradeMap[? UpgradeKeys.LevelsPurchased] = 0;
upgradeMap[? UpgradeKeys.LevelsAvailable] = 5;

ds_map_add_map(global.upgradeOptions, Upgrades.ScavengePower, upgradeMap);

upgradeMap = ds_map_create();

upgradeMap[? UpgradeKeys.Upgrade] = Upgrades.Rope;
upgradeMap[? UpgradeKeys.StoneCost] = 20;
upgradeMap[? UpgradeKeys.WoodCost] = 20;
upgradeMap[? UpgradeKeys.FoodCost] = 4;
upgradeMap[? UpgradeKeys.FurCost] = 15;
upgradeMap[? UpgradeKeys.Available] = false;
upgradeMap[? UpgradeKeys.Description] = "Build a rope to descend the cliff.";
upgradeMap[? UpgradeKeys.Name] = "Build Rope";
upgradeMap[? UpgradeKeys.ScriptToRun] = scrUpgradeRope;
upgradeMap[? UpgradeKeys.LevelsPurchased] = 0;
upgradeMap[? UpgradeKeys.LevelsAvailable] = 5;

ds_map_add_map(global.upgradeOptions, Upgrades.Rope, upgradeMap);

upgradeMap = ds_map_create();

upgradeMap[? UpgradeKeys.Upgrade] = Upgrades.MaxFoodEaten;
upgradeMap[? UpgradeKeys.StoneCost] = 30;
upgradeMap[? UpgradeKeys.WoodCost] = 30;
upgradeMap[? UpgradeKeys.FoodCost] = 10;
upgradeMap[? UpgradeKeys.FurCost] = 5;
upgradeMap[? UpgradeKeys.Available] = false;
upgradeMap[? UpgradeKeys.Description] = "Increases the amount of food you can eat to stave off hunger.";
upgradeMap[? UpgradeKeys.Name] = "Increase Max Food Eaten";
upgradeMap[? UpgradeKeys.ScriptToRun] = scrUpgradeMaxFoodEaten;
upgradeMap[? UpgradeKeys.LevelsPurchased] = 0;
upgradeMap[? UpgradeKeys.LevelsAvailable] = 1;

ds_map_add_map(global.upgradeOptions, Upgrades.MaxFoodEaten, upgradeMap);

upgradeMap = ds_map_create();

upgradeMap[? UpgradeKeys.Upgrade] = Upgrades.Bridge;
upgradeMap[? UpgradeKeys.StoneCost] = 35;
upgradeMap[? UpgradeKeys.WoodCost] = 45;
upgradeMap[? UpgradeKeys.FoodCost] = 5;
upgradeMap[? UpgradeKeys.FurCost] = 20;
upgradeMap[? UpgradeKeys.Available] = false;
upgradeMap[? UpgradeKeys.Description] = "Repairs the bridge preventing you from going home.";
upgradeMap[? UpgradeKeys.Name] = "Repair the Bridge";
upgradeMap[? UpgradeKeys.ScriptToRun] = scrUpgradeBridge;
upgradeMap[? UpgradeKeys.LevelsPurchased] = 0;
upgradeMap[? UpgradeKeys.LevelsAvailable] = 5;

ds_map_add_map(global.upgradeOptions, Upgrades.Bridge, upgradeMap);

global.savedUpgradeOptions = ds_map_create();

ds_map_copy(global.savedUpgradeOptions, global.upgradeOptions);


