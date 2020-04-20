if (global.resources[? Resources.Food] <= 0) {
	scrWriteTextDelayed("You don't have any food to eat.", 0);
	return;
}

scrEatFood();