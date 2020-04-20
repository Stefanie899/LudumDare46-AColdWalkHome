var shouldCreateInstance = argument0;
var levelKey = argument1;
var acornsKey = argument2;
var expectAcornsKey = argument3;
var maxAcornsKey = argument4;

var levelData = global.levelData[? levelKey];

if (++levelData[? expectAcornsKey] > levelData[? maxAcornsKey]) {
	levelData[? expectAcornsKey] = levelData[? maxAcornsKey];	
}
	
// If we're not in the room, just increment the # of expected acorns.
if (room != global.currentRoom) {
	return;
}

var inst = instance_find(objPineTree, irandom(instance_number(objPineTree) - 1));

var spawnX = irandom_range(inst.x - 32, inst.x + 32);
var spawnY = irandom_range(inst.y + 24, inst.y + 48);

var acornList = levelData[? acornsKey];

// We can't add any more!
if (instance_number(objAcorn) >= levelData[? maxAcornsKey]) {
	return;	
}

var objectMap = ds_map_create();

objectMap[? ObjectKeys.x] = spawnX;
objectMap[? ObjectKeys.y] = spawnY;
objectMap[? ObjectKeys.objId] = string(spawnX) + string(spawnY);

ds_list_add(acornList, objectMap);

if (!shouldCreateInstance) {
	return;	
}

instance_create_layer(objectMap[? ObjectKeys.x], objectMap[? ObjectKeys.y], "Instances", objAcorn);
