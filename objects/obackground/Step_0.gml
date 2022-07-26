//var spawn = keyboard_check_pressed(ord("Z"));
var fs = keyboard_check_pressed(ord("F"));
var row = [];
var block = pointer_null;

//if(spawn) {
	if(!instance_exists(oBlock)) {
		block = instance_create_layer(PLAYARENASTART + BLOCKWIDTH*4, 1, "Blocks", oBlock);
		block.type = nextBlock;
		switch(nextBlock) {
			case blockTypes.blue:
				block.sprite_index = sBlue;
				break;
			case blockTypes.cyan:
				block.sprite_index = sCyan;
				break;
			case blockTypes.green:
				block.sprite_index = sGreen;
				break;
			case blockTypes.magenta:
				block.sprite_index = sMagenta;
				break;
			case blockTypes.orange:
				block.sprite_index = sOrange;
				break;
			case blockTypes.red:
				block.sprite_index = sRed;
				break;
			case blockTypes.yellow:
				block.sprite_index = sYellow;
				break;
		}
		nextBlock = irandom_range(blockTypes.blue, blockTypes.yellow);
	}
//}

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

global.level = clamp((floor(global.linesCleared/10)+1),1,GAMESPEED);

var rowsRemoved = 0;
addScore = 0;

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
		rowsRemoved++;
	}
}

switch(rowsRemoved) {
	case 1:
		addScore = 100;
		break;
	case 2:
		addScore = 300;
		break;
	case 3:
		addScore = 500;
		break;
	case 4:
		addScore = 800;
		break;
}
global.linesCleared += rowsRemoved;
global.score += addScore * global.level;