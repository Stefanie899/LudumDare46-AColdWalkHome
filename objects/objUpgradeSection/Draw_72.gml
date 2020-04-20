/// @description Insert description here
// You can write your code in this editor

ds_list_clear(upgradeList);

var stoneMap = global.upgradeOptions[? Upgrades.StoneCapacity];

if (stoneMap[? UpgradeKeys.Available]) {
	ds_list_add(upgradeList, stoneMap);	
}

var woodMap = global.upgradeOptions[? Upgrades.WoodCapacity];

if (woodMap[? UpgradeKeys.Available]) {
	ds_list_add(upgradeList, woodMap);	
}

var attackMap = global.upgradeOptions[? Upgrades.Attack];

if (attackMap[? UpgradeKeys.Available]) {
	ds_list_add(upgradeList, attackMap);	
}

var scavengeMap = global.upgradeOptions[? Upgrades.ScavengePower];

if (scavengeMap[? UpgradeKeys.Available]) {
	ds_list_add(upgradeList, scavengeMap);	
}

var ropeMap = global.upgradeOptions[? Upgrades.Rope];

if (ropeMap[? UpgradeKeys.Available]) {
	ds_list_add(upgradeList, ropeMap);	
}

var foodEatenMap = global.upgradeOptions[? Upgrades.MaxFoodEaten];

if (foodEatenMap[? UpgradeKeys.Available]) {
	ds_list_add(upgradeList, foodEatenMap);	
}

var bridgeMap = global.upgradeOptions[? Upgrades.Bridge];

if (bridgeMap[? UpgradeKeys.Available]) {
	ds_list_add(upgradeList, bridgeMap);	
}