ds_map_destroy(global.savedLevelData);

global.savedLevelData = ds_map_create();

global.savedLevelData[? Levels.One] = ds_map_create();

var level1DataMap = global.levelData[? Levels.One];
var savedLevel1DataMap = global.savedLevelData[? Levels.One];

savedLevel1DataMap[? Level1Keys.AcornCounter] = level1DataMap[? Level1Keys.AcornCounter];
savedLevel1DataMap[? Level1Keys.TimeBetweenAcornSpawn] = level1DataMap[? Level1Keys.TimeBetweenAcornSpawn];
savedLevel1DataMap[? Level1Keys.MaxAcorns] = level1DataMap[? Level1Keys.MaxAcorns];
savedLevel1DataMap[? Level1Keys.ExpectedAcorns] = level1DataMap[? Level1Keys.ExpectedAcorns];

var newAcorns1 = ds_list_create();
var oldAcorns1 = level1DataMap[? Level1Keys.Acorns];

ds_list_copy(newAcorns1, oldAcorns1);

ds_map_add_list(savedLevel1DataMap, Level1Keys.Acorns, newAcorns1);


var newBoulderKeys = ds_list_create();
var oldBoulderKeys = level1DataMap[? Level1Keys.DestroyedBoulderKeys];

ds_list_copy(newBoulderKeys, oldBoulderKeys);

ds_map_add_list(savedLevel1DataMap, Level1Keys.DestroyedBoulderKeys, newBoulderKeys);




global.savedLevelData[? Levels.Two] = ds_map_create();

var level2DataMap = global.levelData[? Levels.Two];
var savedLevel2DataMap = global.savedLevelData[? Levels.Two];

savedLevel2DataMap[? Level2Keys.AcornCounter] = level2DataMap[? Level2Keys.AcornCounter];
savedLevel2DataMap[? Level2Keys.TimeBetweenAcornSpawn] = level2DataMap[? Level2Keys.TimeBetweenAcornSpawn];
savedLevel2DataMap[? Level2Keys.MaxAcorns] = level2DataMap[? Level2Keys.MaxAcorns];
savedLevel2DataMap[? Level2Keys.ExpectedAcorns] = level2DataMap[? Level2Keys.ExpectedAcorns];
savedLevel2DataMap[? Level2Keys.MonsterCounter] = level2DataMap[? Level2Keys.MonsterCounter];
savedLevel2DataMap[? Level2Keys.TimeBetweenMonsterSpawn] = level2DataMap[? Level2Keys.TimeBetweenMonsterSpawn];
savedLevel2DataMap[? Level2Keys.MaxMonsters] = level2DataMap[? Level2Keys.MaxMonsters];
savedLevel2DataMap[? Level2Keys.ExpectedMonsters] = level2DataMap[? Level2Keys.ExpectedMonsters];

var newAcorns2 = ds_list_create();
var oldAcorns2 = level2DataMap[? Level2Keys.Acorns];

ds_list_copy(newAcorns2, oldAcorns2);

ds_map_add_list(savedLevel2DataMap, Level2Keys.Acorns, newAcorns2);


var newMonsters = ds_list_create();
var oldMonsters = level2DataMap[? Level2Keys.Monsters];

ds_list_copy(newMonsters, oldMonsters);

ds_map_add_list(savedLevel2DataMap, Level2Keys.Monsters, newMonsters);


var newBoulderKeys = ds_list_create();
var oldBoulderKeys = level2DataMap[? Level2Keys.DestroyedBoulderKeys];

ds_list_copy(newBoulderKeys, oldBoulderKeys);

ds_map_add_list(savedLevel2DataMap, Level2Keys.DestroyedBoulderKeys, newBoulderKeys);



global.savedLevelData[? Levels.Three] = ds_map_create();

var level3DataMap = global.levelData[? Levels.Three];
var savedLevel3DataMap = global.savedLevelData[? Levels.Three];

savedLevel3DataMap[? Level3Keys.AcornCounter] = level3DataMap[? Level3Keys.AcornCounter];
savedLevel3DataMap[? Level3Keys.TimeBetweenAcornSpawn] = level3DataMap[? Level3Keys.TimeBetweenAcornSpawn];
savedLevel3DataMap[? Level3Keys.MaxAcorns] = level3DataMap[? Level3Keys.MaxAcorns];
savedLevel3DataMap[? Level3Keys.ExpectedAcorns] = level3DataMap[? Level3Keys.ExpectedAcorns];
savedLevel3DataMap[? Level3Keys.MonsterCounter] = level3DataMap[? Level3Keys.MonsterCounter];
savedLevel3DataMap[? Level3Keys.TimeBetweenMonsterSpawn] = level3DataMap[? Level3Keys.TimeBetweenMonsterSpawn];
savedLevel3DataMap[? Level3Keys.MaxMonsters] = level3DataMap[? Level3Keys.MaxMonsters];
savedLevel3DataMap[? Level3Keys.ExpectedMonsters] = level3DataMap[? Level3Keys.ExpectedMonsters];

var newAcorns3 = ds_list_create();
var oldAcorns3 = level3DataMap[? Level3Keys.Acorns];

ds_list_copy(newAcorns3, oldAcorns3);

ds_map_add_list(savedLevel3DataMap, Level3Keys.Acorns, newAcorns3);


var newMonsters = ds_list_create();
var oldMonsters = level3DataMap[? Level3Keys.Monsters];

ds_list_copy(newMonsters, oldMonsters);

ds_map_add_list(savedLevel3DataMap, Level3Keys.Monsters, newMonsters);


var newBoulderKeys = ds_list_create();
var oldBoulderKeys = level3DataMap[? Level3Keys.DestroyedBoulderKeys];

ds_list_copy(newBoulderKeys, oldBoulderKeys);

ds_map_add_list(savedLevel3DataMap, Level3Keys.DestroyedBoulderKeys, newBoulderKeys);