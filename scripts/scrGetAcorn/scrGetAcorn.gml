var inst = argument0;
var levelKey = argument1;
var acornsKey = argument2;
var expectAcornsKey = argument3;

scrAddFood(1);

if (!global.events[? Events.GotFirstAcorn]) { 
	global.events[? Events.GotFirstAcorn] = true;
	
	scrWriteTextDelayed("You pick an acorn off the ground. You're not sure if it's edible and hesitate. The creature looks at you and puts its hands to its mouth, mimicking eating as if to say -- they're safe.", 0);
}

var levelData = global.levelData[? levelKey];

var acornList = levelData[? acornsKey];

for (var i = 0; i < ds_list_size(acornList); i++) {
	var acorn = acornList[| i];
	
	if (acorn[? ObjectKeys.objId] == string(inst.origX) + string(inst.origY)) {
		ds_list_delete(acornList, i);	
		
		levelData[? expectAcornsKey]--;
	}
}

levelData[? acornsKey] = acornList;