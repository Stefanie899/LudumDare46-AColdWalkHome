var inst = argument0;
var levelKey = argument1;
var monstersKey = argument2;
var expectMonstersKey = argument3;

var levelData = global.levelData[? levelKey];

var monsterList = levelData[? monstersKey];

for (var i = 0; i < ds_list_size(monsterList); i++) {
	var monster = monsterList[| i];
	
	if (monster[? ObjectKeys.objId] == string(inst.origX) + string(inst.origY)) {
		ds_list_delete(monsterList, i);	
		
		levelData[? expectMonstersKey]--;
	}
}