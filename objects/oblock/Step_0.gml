if(active) {
	
	var left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	var right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	var up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	var space = keyboard_check_pressed(vk_space)
	
	if(left && x > PLAYARENASTART) {
		x -= BLOCKWIDTH;
	}
	if(right && x + sprite_width < PLAYARENAEND) {
		x += BLOCKWIDTH;
	}
	
	if(timer == 0 || down) {
		timer = GAMESPEED + 1 - global.level;
		y += BLOCKWIDTH;
	} else timer--;
	if(y > PLAYARENAHEIGHT - sprite_height*1.5) active = 0;
}