var shouldCreateInstance = argument0;
var levelKey = argument1;
var monstersKey = argument2;
var expectMonstersKey = argument3;
var maxMonstersKey = argument4;

var levelData = global.levelData[? levelKey];

if (++levelData[? expectMonstersKey] > levelData[? maxMonstersKey]) {
	levelData[? expectMonstersKey] = levelData[? maxMonstersKey];	
}
	
// If we're not in the room, just increment the # of expected acorns.
if (room != global.currentRoom) {
	return;
}

var inst = instance_find(objMonsterSpawner, irandom(instance_number(objMonsterSpawner) - 1));

var spawnX = irandom_range(inst.x - 64, inst.x + 64);
var spawnY = irandom_range(inst.y + 64, inst.y + 64);

var monsterList = levelData[? monstersKey];

// We can't add any more!
if (instance_number(objEnemy) >= levelData[? maxMonstersKey]) {
	return;	
}

var objectMap = ds_map_create();

objectMap[? ObjectKeys.x] = spawnX;
objectMap[? ObjectKeys.y] = spawnY;
objectMap[? ObjectKeys.objId] = string(spawnX) + string(spawnY);

ds_list_add(monsterList, objectMap);

if (!shouldCreateInstance) {
	return;	
}

instance_create_layer(objectMap[? ObjectKeys.x], objectMap[? ObjectKeys.y], "Instances", objEnemy);
