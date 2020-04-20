var levelData = global.levelData[? Levels.Two];

levelData[? Level2Keys.AcornCounter] += global.timeMulti;

if (levelData[? Level2Keys.AcornCounter] >= levelData[? Level2Keys.TimeBetweenAcornSpawn]) {
	scrAddAcorn(true, Levels.Two, Level2Keys.Acorns, Level2Keys.ExpectedAcorns, Level2Keys.MaxAcorns);	
	
	levelData[? Level2Keys.AcornCounter] = 0;
}

levelData[? Level2Keys.MonsterCounter] += global.timeMulti;

if (levelData[? Level2Keys.MonsterCounter] >= levelData[? Level2Keys.TimeBetweenMonsterSpawn]) {
	scrAddMonster(true, Levels.Two, Level2Keys.Monsters, Level2Keys.ExpectedMonsters, Level2Keys.MaxMonsters);	
	
	levelData[? Level2Keys.MonsterCounter] = 0;
}