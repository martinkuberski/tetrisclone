randomise();

#macro PLAYARENASTART 88
#macro PLAYARENAEND 168
#macro PLAYARENAHEIGHTPX 240
#macro PLAYARENAHEIGHT 30
#macro PLAYARENAWIDTH 10
#macro BLOCKWIDTH 8
#macro GAMESPEED 30

global.level = 10;
global.score = 0;
global.occupied = [];
global.occupiedC = [];

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