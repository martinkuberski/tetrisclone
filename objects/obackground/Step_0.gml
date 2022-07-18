var spawn = keyboard_check_pressed(ord("Z"));
var fs = keyboard_check_pressed(ord("F"));

if(spawn) {
	if(currentBlock == pointer_null || currentBlock.active == 0) {
		currentBlock = instance_create_layer(PLAYARENASTART + BLOCKWIDTH*4, 1, "Blocks", oBlock);
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