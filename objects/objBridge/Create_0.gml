/// @description Insert description here
// You can write your code in this editor
image_index = global.events[? Events.BuiltTheBridge] ? 0 : 1;
image_speed = 0;

if (global.events[? Events.BuiltTheBridge]) {
	var _list = ds_list_create();
	var _num = collision_rectangle_list(x + 16, y + 16, x + sprite_width - 16, y + sprite_height - 16, objCollision, false, true, _list, false);
	
	if (_num > 0)
	{
		for (var i = 0; i < _num; ++i;)
	    {
			with (_list[| i]) {
				instance_destroy();
			}
	    }
	}
	
	ds_list_destroy(_list);	
}