/// @description Insert description here
// You can write your code in this editor
var levelData = global.levelData[? Levels.Three];

var acornList = levelData[? Level3Keys.Acorns];

var acornsToAdd = levelData[? Level3Keys.ExpectedAcorns] - ds_list_size(acornList);

for (var i = 0; i < acornsToAdd; i++) {
	scrAddAcorn(false, Levels.Three, Level3Keys.Acorns, Level3Keys.ExpectedAcorns, Level3Keys.MaxAcorns);	
}

for (var i = 0; i < ds_list_size(acornList); i++) {
	var objectMap = acornList[| i];
	
	instance_create_layer(objectMap[? ObjectKeys.x], objectMap[? ObjectKeys.y], "Instances", objAcorn);
}

var monsterList = levelData[? Level3Keys.Monsters];

var monstersToAdd = levelData[? Level3Keys.ExpectedMonsters] - ds_list_size(monsterList);

for (var i = 0; i < monstersToAdd; i++) {
	scrAddMonster(false, Levels.Three, Level3Keys.Monsters, Level3Keys.ExpectedMonsters, Level3Keys.MaxMonsters);	
}

for (var i = 0; i < ds_list_size(monsterList); i++) {
	var objectMap = monsterList[| i];
	
	instance_create_layer(objectMap[? ObjectKeys.x], objectMap[? ObjectKeys.y], "Instances", objEnemy);
}