var spawn = keyboard_check_pressed(ord("Z"));

if(spawn) {
	if(currentBlock == pointer_null || currentBlock.active == 0) {
		currentBlock = instance_create_layer(PLAYARENASTART + BLOCKWIDTH*2, 0, "Blocks", oBlock);
	}
}