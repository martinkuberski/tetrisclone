if(active) {
	var left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	var right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	var up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	var space = keyboard_check_pressed(vk_space)
	
	if(left && position[0] > 0) {
		position[0]--;
	}
	if(right && position[0] < PLAYARENAWIDTH - 1) {
		position[0]++;
	}
	
	if(timer == 0 || down) {
		timer = GAMESPEED + 1 - global.level;
		position[1]++;
	} else timer--;
	if(position[1] >= PLAYARENAHEIGHT - 1) active = 0;
}

x = PLAYARENASTART + position[0] * BLOCKWIDTH;
y = position[1] * BLOCKWIDTH;