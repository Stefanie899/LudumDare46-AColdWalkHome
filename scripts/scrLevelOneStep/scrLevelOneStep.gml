var levelData = global.levelData[? Levels.One];

levelData[? Level1Keys.AcornCounter] += global.timeMulti;

if (levelData[? Level1Keys.AcornCounter] >= levelData[? Level1Keys.TimeBetweenAcornSpawn]) {
	scrAddAcorn(true, Levels.One, Level1Keys.Acorns, Level1Keys.ExpectedAcorns, Level1Keys.MaxAcorns);	
	
	levelData[? Level1Keys.AcornCounter] = 0;
}