/// @description Insert description here
// You can write your code in this editor
depth = -10000;

fireCounter = 0;
timeToReduceFire = 30;

foodCounter = 0;
timeToReduceFedAmount = 90;

guiHeight = (room_height - y);

woodX = x + 16;
woodY = y + guiHeight / 3 * 1;

stoneX = woodX + 196;
stoneY = y + guiHeight / 3 * 1;

foodX = x + 16;
foodY = y + guiHeight / 3 * 2;

furX = woodX + 196;
furY = y + guiHeight / 3 * 2;

fireX = room_width - 344 - string_width("Fire Strength:");
fireBarX = fireX + string_width("Fire Strength:") + 24;
fireY = y + guiHeight / 2;

creatureHungerX = room_width - 344 - string_width("Creature Hunger: ");
creatureHungerBarX = creatureHungerX + string_width("Creature Hunger: ") + 24;
creatureHungerY = y + guiHeight / 4 * 3;