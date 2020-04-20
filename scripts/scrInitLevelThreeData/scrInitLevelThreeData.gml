var level3Data = ds_map_create();

var acornList = ds_list_create();

ds_map_add_list(level3Data, Level3Keys.Acorns, acornList);

level3Data[? Level3Keys.MaxAcorns] = 6;
level3Data[? Level3Keys.ExpectedAcorns] = 5;
level3Data[? Level3Keys.AcornCounter] = 0;
level3Data[? Level3Keys.TimeBetweenAcornSpawn] = 400

var monsterList = ds_list_create();

ds_map_add_list(level3Data, Level3Keys.Monsters, monsterList);

level3Data[? Level3Keys.MaxMonsters] = 2;
level3Data[? Level3Keys.ExpectedMonsters] = 2;
level3Data[? Level3Keys.MonsterCounter] = 0;
level3Data[? Level3Keys.TimeBetweenMonsterSpawn] = 900;

var boulderKeys = ds_list_create();

ds_map_add_list(level3Data, Level3Keys.DestroyedBoulderKeys, boulderKeys);

ds_map_add_map(global.levelData, Levels.Three, level3Data);