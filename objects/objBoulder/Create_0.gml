/// @description Insert description here
// You can write your code in this editor
curHealth = 3;
immune = false;

boulderKey = string(x) + string(room) + string(y);

switch (global.currentLevel) {
	case Levels.One:
	default:
		var levelMap = global.levelData[? Levels.One];
		
		var boulderKeys = levelMap[? Level1Keys.DestroyedBoulderKeys];
		
		for (var i = 0; i < ds_list_size(boulderKeys); i++) {
			var key = boulderKeys[| i];
			
			if (key == boulderKey) {
				instance_destroy();	
			}
		}
		break;
	case Levels.Two:
		var levelMap = global.levelData[? Levels.Two];
		
		var boulderKeys = levelMap[? Level2Keys.DestroyedBoulderKeys];
		
		for (var i = 0; i < ds_list_size(boulderKeys); i++) {
			var key = boulderKeys[| i];
			
			if (key == boulderKey) {
				instance_destroy();	
			}
		}
	case Levels.Three:
		var levelMap = global.levelData[? Levels.Three];
		
		var boulderKeys = levelMap[? Level3Keys.DestroyedBoulderKeys];
		
		for (var i = 0; i < ds_list_size(boulderKeys); i++) {
			var key = boulderKeys[| i];
			
			if (key == boulderKey) {
				instance_destroy();	
			}
		}
}