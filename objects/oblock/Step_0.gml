var left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
var right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
var up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var space = keyboard_check_pressed(vk_space);
var hold = keyboard_check_pressed(ord("Z"));
	
var edges = checkCollision(type, orientation);
vEdge = edges[0];
hEdge = edges[1];
occupying = edges[2];
	
if(left && hEdge != ed.left_) {
	position[0]--;
}
if(right && hEdge != ed.right_) {
	position[0]++;
}
if(up) {
	if(orientation != ori.left_ && !scanArrayAny(global.occupied, checkCollision(type, orientation+1)[2])) orientation++;
	else if(!scanArrayAny(global.occupied,checkCollision(type, ori.up_)[2])) orientation = ori.up_;
}
if(timer == 0 || (down && vEdge == 0)) {
	if(timer != 0) global.score += 1;
	timer = ceil(GAMESPEED / global.level);
	if(vEdge == 1) inactivate(); 
	else position[1]++;
} else timer--;

if(!held && hold) {
	if(global.heldBlock != pointer_null) {
		var newBlock = instance_create_layer(PLAYARENASTART + BLOCKWIDTH*4, 1, "Blocks", oBlock);
		newBlock.type = global.heldBlock;
		newBlock.held = true;
	}
	global.heldBlock = type;
	instance_destroy(id);
}

x = PLAYARENASTART + position[0] * BLOCKWIDTH;
y = position[1] * BLOCKWIDTH;
