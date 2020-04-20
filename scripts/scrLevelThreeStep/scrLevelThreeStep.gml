var levelData = global.levelData[? Levels.Three];

levelData[? Level3Keys.AcornCounter] += global.timeMulti;

if (levelData[? Level3Keys.AcornCounter] >= levelData[? Level3Keys.TimeBetweenAcornSpawn]) {
	scrAddAcorn(true, Levels.Three, Level3Keys.Acorns, Level3Keys.ExpectedAcorns, Level3Keys.MaxAcorns);	
	
	levelData[? Level3Keys.AcornCounter] = 0;
}

levelData[? Level3Keys.MonsterCounter] += global.timeMulti;

if (levelData[? Level3Keys.MonsterCounter] >= levelData[? Level3Keys.TimeBetweenMonsterSpawn]) {
	scrAddMonster(true, Levels.Three, Level3Keys.Monsters, Level3Keys.ExpectedMonsters, Level3Keys.MaxMonsters);	
	
	levelData[? Level3Keys.MonsterCounter] = 0;
}