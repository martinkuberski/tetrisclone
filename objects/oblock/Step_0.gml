if(active) {
	var left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	var right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	var up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
	var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	var space = keyboard_check_pressed(vk_space)
	
	switch(type) {
	case blockTypes.blue:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]-1, position[1]], [position[0], position[1]-1], [position[0], position[1]-2]];
				break;
			case ori.right_:
				occupying = [position, [position[0]+1, position[1]], [position[0]-1, position[1]], [position[0]-1, position[1]-1]];
				break;
			case ori.down_:
				occupying = [position, [position[0], position[1]-1], [position[0], position[1]-2], [position[0]+1, position[1]-2]];
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0]-2, position[1]-1]];
				break;
		}
		break;
	case blockTypes.cyan:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]+1, position[1]], [position[0]+2, position[1]], [position[0]+3, position[1]]];
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0], position[1]-2], [position[0], position[1]-3]];
				break;
			case ori.down_:
				occupying = [position, [position[0]+1, position[1]], [position[0]+2, position[1]], [position[0]+3, position[1]]];
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0], position[1]-2], [position[0], position[1]-3]];
				break;
		}
		break;
	case blockTypes.green:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]-1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0]-1, position[1]-2]];
				break;
			case ori.down_:
				occupying = [position, [position[0]-1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0]-1, position[1]-2]];
				break;
		}
		break;
	case blockTypes.magenta:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]-1, position[1]], [position[0]+1, position[1]], [position[0], position[1]-1]];
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0]+1, position[1]-1], [position[0], position[1]-2]];
				break;
			case ori.down_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0]+1, position[1]-1]];
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0], position[1]-2]];
				break;
		}
		break;
	case blockTypes.orange:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0], position[1]-2]];
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0]+1, position[1]-1], [position[0]+2, position[1]-1]];
				break;
			case ori.down_:
				occupying = [position, [position[0], position[1]-1], [position[0], position[1]-2], [position[0]-1, position[1]-2]];
				break;
			case ori.left_:
				occupying = [position, [position[0]-1, position[1]], [position[0]-2, position[1]], [position[0], position[1]-1]];
				break;
		}
		break;
	case blockTypes.red:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]-1, position[1]-1], [position[0], position[1]-1], [position[0]+1, position[1]]];
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0]+1, position[1]-1], [position[0]+1, position[1]-2]];
				break;
			case ori.down_:
				occupying = [position, [position[0]-1, position[1]-1], [position[0], position[1]-1], [position[0]+1, position[1]]];
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0]+1, position[1]-1], [position[0]+1, position[1]-2]];
				break;
		}
		break;
	case blockTypes.yellow:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				break;
			case ori.right_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				break;
			case ori.down_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				break;
			case ori.left_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				break;
		}
		break;
}
	
	if(left && position[0] > 0) {
		position[0]--;
	}
	if(right && position[0] < PLAYARENAWIDTH - 1) {
		position[0]++;
	}
	if(up) {
		if(orientation != ori.left_) orientation++;
		else orientation = ori.up_;
	}
	if(timer == 0 || down) {
		timer = GAMESPEED + 1 - global.level;
		if(vEdge == 1) {
			array_push(global.occupied, occupying);
			active = 0;
		} else position[1]++;
	} else timer--;
	if(position[1] >= PLAYARENAHEIGHT - 1) {
		array_push(global.occupied, occupying);
		active = 0;
}

x = PLAYARENASTART + position[0] * BLOCKWIDTH;
y = position[1] * BLOCKWIDTH;
}