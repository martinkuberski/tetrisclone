// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scanArray(array, val){
	for(i = 0; i < array_length(array); i++) {
		if(array_equals(array[i], val) || array[i] == val) return true;
	}
	return false;
}