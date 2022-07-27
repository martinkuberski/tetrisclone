draw_self();

draw_sprite(sBlock, nextBlock, 48, 130);
if(global.heldBlock != pointer_null) draw_sprite(sBlock, global.heldBlock, 180, 130);

for (i = 0; i < array_length(global.occupied); i++) {
	if(global.occupiedC[i] != pointer_null) draw_sprite(global.occupiedC[i], 0, PLAYARENASTART + global.occupied[i][0]*BLOCKWIDTH, global.occupied[i][1]*BLOCKWIDTH);	
	//else draw_sprite(sDebug, 0, PLAYARENASTART + global.occupied[i][0]*BLOCKWIDTH, global.occupied[i][1]*BLOCKWIDTH);
}
