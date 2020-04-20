ex = argument0;
ey = argument1;
wid = argument2;
hig = argument3;
spr = argument4;
imageindex = argument5;

// Top Corners
draw_sprite_part_ext(spr, imageindex, 0, 0, 8, 8, ex, ey, 2, 2, c_white, draw_get_alpha());
draw_sprite_part_ext(spr, imageindex, 16, 0, 8, 8, ex + wid - 16, ey, 2, 2, c_white, draw_get_alpha());

// Bottom Corners
draw_sprite_part_ext(spr, imageindex, 0, 16, 8, 8, ex, ey + hig - 16, 2, 2, c_white, draw_get_alpha());
draw_sprite_part_ext(spr, imageindex, 16, 16, 8, 8, ex + wid - 16, ey + hig - 16, 2, 2, c_white, draw_get_alpha());

// Top and bottom edges
for (var ix = ex + 16; ix <= ex + wid - 32; ix += 16) {
	draw_sprite_part_ext(spr, imageindex, 8, 0, 8, 8, ix, ey, 2, 2, c_white, draw_get_alpha());
	draw_sprite_part_ext(spr, imageindex, 8, 16, 8, 8, ix, ey + hig - 16, 2, 2, c_white, draw_get_alpha());
}

// Left and right edges
for (var iy = ey + 16; iy <= ey + hig - 32; iy += 16) {
	draw_sprite_part_ext(spr, imageindex, 16, 8, 8, 8, ex + wid - 16, iy, 2, 2, c_white, draw_get_alpha());
	draw_sprite_part_ext(spr, imageindex, 0, 8, 8, 8, ex, iy, 2, 2, c_white, draw_get_alpha());
}


// Fill
for (var ix = ex + 16; ix <= ex + wid - 32; ix += 16) {
	for (var iy = ey + 16; iy <= ey + hig - 32; iy += 16) {
		draw_sprite_part_ext(spr, imageindex, 8, 8, 8, 8, ix, iy, 2, 2, c_white, draw_get_alpha());
	}
}