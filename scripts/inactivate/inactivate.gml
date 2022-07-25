// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inactivate(){
	for(i=0; i<array_length(occupying); i++) {
		array_push(global.occupiedC, sprite_index);
		array_push(global.occupied,occupying[i]);
	}
	instance_destroy(id);
}