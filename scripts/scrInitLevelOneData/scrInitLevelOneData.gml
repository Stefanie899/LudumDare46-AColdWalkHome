var level1Data = ds_map_create();

var acornList = ds_list_create();

ds_map_add_list(level1Data, Level1Keys.Acorns, acornList);

level1Data[? Level1Keys.MaxAcorns] = 6;
level1Data[? Level1Keys.ExpectedAcorns] = 5;
level1Data[? Level1Keys.AcornCounter] = 0;
level1Data[? Level1Keys.TimeBetweenAcornSpawn] = 900;

var boulderKeys = ds_list_create();

ds_map_add_list(level1Data, Level1Keys.DestroyedBoulderKeys, boulderKeys);

ds_map_add_map(global.levelData, Levels.One, level1Data);