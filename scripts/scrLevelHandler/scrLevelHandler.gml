if (global.isPaused) {
	return;	
}

switch (global.currentLevel) {
	case Levels.One:
	default:
		scrLevelOneStep();
		break;
	case Levels.Two:
		scrLevelTwoStep();
		break;
	case Levels.Three:
		scrLevelThreeStep();
		break;
}