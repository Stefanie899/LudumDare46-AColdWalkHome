var level2Data = ds_map_create();

var acornList = ds_list_create();

ds_map_add_list(level2Data, Level2Keys.Acorns, acornList);

level2Data[? Level2Keys.MaxAcorns] = 6;
level2Data[? Level2Keys.ExpectedAcorns] = 5;
level2Data[? Level2Keys.AcornCounter] = 0;
level2Data[? Level2Keys.TimeBetweenAcornSpawn] = 600

var monsterList = ds_list_create();

ds_map_add_list(level2Data, Level2Keys.Monsters, monsterList);

level2Data[? Level2Keys.MaxMonsters] = 3;
level2Data[? Level2Keys.ExpectedMonsters] = 3;
level2Data[? Level2Keys.MonsterCounter] = 0;
level2Data[? Level2Keys.TimeBetweenMonsterSpawn] = 900;

var boulderKeys = ds_list_create();

ds_map_add_list(level2Data, Level2Keys.DestroyedBoulderKeys, boulderKeys);

ds_map_add_map(global.levelData, Levels.Two, level2Data);