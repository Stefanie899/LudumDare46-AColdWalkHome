/// @description Insert description here
// You can write your code in this editor
var levelData = global.levelData[? Levels.Two];

var acornList = levelData[? Level2Keys.Acorns];

var acornsToAdd = levelData[? Level2Keys.ExpectedAcorns] - ds_list_size(acornList);

for (var i = 0; i < acornsToAdd; i++) {
	scrAddAcorn(false, Levels.Two, Level2Keys.Acorns, Level2Keys.ExpectedAcorns, Level2Keys.MaxAcorns);	
}

for (var i = 0; i < ds_list_size(acornList); i++) {
	var objectMap = acornList[| i];
	
	instance_create_layer(objectMap[? ObjectKeys.x], objectMap[? ObjectKeys.y], "Instances", objAcorn);
}

var monsterList = levelData[? Level2Keys.Monsters];

var monstersToAdd = levelData[? Level2Keys.ExpectedMonsters] - ds_list_size(monsterList);

for (var i = 0; i < monstersToAdd; i++) {
	scrAddMonster(false, Levels.Two, Level2Keys.Monsters, Level2Keys.ExpectedMonsters, Level2Keys.MaxMonsters);	
}

for (var i = 0; i < ds_list_size(monsterList); i++) {
	var objectMap = monsterList[| i];
	
	instance_create_layer(objectMap[? ObjectKeys.x], objectMap[? ObjectKeys.y], "Instances", objEnemy);
}