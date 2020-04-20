if (!instance_exists(objTextHandler)) {
	return;	
}

var textToAdd = argument0;

with (objTextHandler) {
	textFadeInCounter = 0;
	fadingIn = true;
	
	ds_list_add(consoleText, textToAdd);
}