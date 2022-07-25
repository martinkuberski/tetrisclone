var spawn = keyboard_check_pressed(ord("Z"));
var fs = keyboard_check_pressed(ord("F"));
var row = [];

if(spawn) {
	if(!instance_exists(oBlock)) {
		instance_create_layer(PLAYARENASTART + BLOCKWIDTH*4, 1, "Blocks", oBlock);
	}
}

if(fs) 
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
}
var a = 0;
for(i = 0; i < PLAYARENAHEIGHT; i++) {
	row = [];
	for(j = 0; j < array_length(global.occupied); j++) {
		if(global.occupiedC[j] != pointer_null && global.occupied[j][1] == i) array_push(row, j);
	}
	if(array_length(row) == PLAYARENAWIDTH) {
		for(j = array_length(row) - 1; j >= 0; j--) {
			array_delete(global.occupied, row[j], 1);
			array_delete(global.occupiedC, row[j], 1);
		}
		for(j = 0; j < array_length(global.occupied); j++) {
			if(global.occupiedC[j] != pointer_null && global.occupied[j][1] < i) global.occupied[j][1]++;
		}
	}
}