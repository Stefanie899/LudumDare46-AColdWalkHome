/// @description Insert description here
// You can write your code in this editor
var levelData = global.levelData[? Levels.One];

var acornList = levelData[? Level1Keys.Acorns];

var acornsToAdd = levelData[? Level1Keys.ExpectedAcorns] - ds_list_size(acornList);

for (var i = 0; i < acornsToAdd; i++) {
	scrAddAcorn(false, Levels.One, Level1Keys.Acorns, Level1Keys.ExpectedAcorns, Level1Keys.MaxAcorns);	
}

for (var i = 0; i < ds_list_size(acornList); i++) {
	var objectMap = acornList[| i];
	
	instance_create_layer(objectMap[? ObjectKeys.x], objectMap[? ObjectKeys.y], "Instances", objAcorn);
}