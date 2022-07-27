randomise();

#macro PLAYARENASTART 88
#macro PLAYARENAEND 168
#macro PLAYARENAHEIGHTPX 240
#macro PLAYARENAHEIGHT 30
#macro PLAYARENAWIDTH 10
#macro BLOCKWIDTH 8
#macro GAMESPEED 30

global.linesCleared = 0;
global.level = 1;
global.score = 0;
global.occupied = [];
global.occupiedC = [];
global.heldBlock = pointer_null;
nextBlock = irandom_range(blockTypes.blue, blockTypes.yellow);
addScore = 0;
drawTextTimer = 0;
drawTextStr = "";

for(i=0; i<PLAYARENAWIDTH; i++) {
	array_push(global.occupied, [i, PLAYARENAHEIGHT]);
	array_push(global.occupiedC, pointer_null);
}
for(i=0; i<PLAYARENAHEIGHT; i++) {
	array_push(global.occupied, [-1, i]);
	array_push(global.occupiedC, pointer_null);
	array_push(global.occupied, [PLAYARENAWIDTH, i]);
	array_push(global.occupiedC, pointer_null);
}