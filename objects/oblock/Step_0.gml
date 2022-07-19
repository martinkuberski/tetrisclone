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
				//vertical collisions
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]+1])) vEdge = 1; else vEdge = 0;
				//horizontal collisions
				if(scanArray(global.occupied, [position[0]-2, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0]-1, position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0]+1, position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.right_:
				occupying = [position, [position[0]+1, position[1]], [position[0]-1, position[1]], [position[0]-1, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-2, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0], position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.down_:
				occupying = [position, [position[0], position[1]-1], [position[0], position[1]-2], [position[0]+1, position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]-1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0]-1, position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0]+2, position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0]-2, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]])||scanArray(global.occupied, [position[0]-3, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
		}
		break;
	case blockTypes.cyan:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]+1, position[1]], [position[0]+2, position[1]], [position[0]+3, position[1]]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])||scanArray(global.occupied, [position[0]+2, position[1]+1])||scanArray(global.occupied, [position[0], position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+4, position[1]])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0], position[1]-2], [position[0], position[1]-3]];
				if(scanArray(global.occupied, [position[0], position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0]-1, position[1]-2])||scanArray(global.occupied, [position[0]-1, position[1]-3])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0]+1, position[1]-2])||scanArray(global.occupied, [position[0]+1, position[1]-3])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.down_:
				occupying = [position, [position[0]+1, position[1]], [position[0]+2, position[1]], [position[0]+3, position[1]]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])||scanArray(global.occupied, [position[0]+2, position[1]+1])||scanArray(global.occupied, [position[0], position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+4, position[1]])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0], position[1]-2], [position[0], position[1]-3]];
				if(scanArray(global.occupied, [position[0], position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0]-1, position[1]-2])||scanArray(global.occupied, [position[0]-1, position[1]-3])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0]+1, position[1]-2])||scanArray(global.occupied, [position[0]+1, position[1]-3])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
		}
		break;
	case blockTypes.green:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]-1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-2, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0]-1, position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]-1])||scanArray(global.occupied, [position[0]-2, position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0], position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.down_:
				occupying = [position, [position[0]-1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-2, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0]-1, position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]-1])||scanArray(global.occupied, [position[0]-2, position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0], position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
		}
		break;
	case blockTypes.magenta:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]-1, position[1]], [position[0]+1, position[1]], [position[0], position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-2, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0]+1, position[1]-1], [position[0], position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0]-1, position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])||scanArray(global.occupied, [position[0]+1, position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.down_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0]+1, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0]-1, position[1]-1], [position[0], position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]-1])||scanArray(global.occupied, [position[0]-1, position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0]+1, position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
		}
		break;
	case blockTypes.orange:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0], position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0]-1, position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0]+1, position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0]+1, position[1]-1], [position[0]+2, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+3, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.down_:
				occupying = [position, [position[0], position[1]-1], [position[0], position[1]-2], [position[0]-1, position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]-1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0]-2, position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])||scanArray(global.occupied, [position[0]+1, position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.left_:
				occupying = [position, [position[0]-1, position[1]], [position[0]-2, position[1]], [position[0], position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]+1])||scanArray(global.occupied, [position[0]-2, position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-3, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
		}
		break;
	case blockTypes.red:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]-1, position[1]-1], [position[0], position[1]-1], [position[0]+1, position[1]]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.right_:
				occupying = [position, [position[0], position[1]-1], [position[0]+1, position[1]-1], [position[0]+1, position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0], position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])||scanArray(global.occupied, [position[0]+2, position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.down_:
				occupying = [position, [position[0]-1, position[1]-1], [position[0], position[1]-1], [position[0]+1, position[1]]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])||scanArray(global.occupied, [position[0]-1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-2, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0]+1, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.left_:
				occupying = [position, [position[0], position[1]-1], [position[0]+1, position[1]-1], [position[0]+1, position[1]-2]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])||scanArray(global.occupied, [position[0], position[1]-2])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+1, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])||scanArray(global.occupied, [position[0]+2, position[1]-2])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
		}
		break;
	case blockTypes.yellow:
		switch(orientation) {
			case ori.up_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.right_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.down_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
			case ori.left_:
				occupying = [position, [position[0]+1, position[1]], [position[0], position[1]-1], [position[0]+1, position[1]-1]];
				if(scanArray(global.occupied, [position[0], position[1]+1])||scanArray(global.occupied, [position[0]+1, position[1]+1])) vEdge = 1; else vEdge = 0;
				if(scanArray(global.occupied, [position[0]-1, position[1]])||scanArray(global.occupied, [position[0]-1, position[1]-1])) hEdge = ed.left_;
				else if(scanArray(global.occupied, [position[0]+2, position[1]])||scanArray(global.occupied, [position[0]+2, position[1]-1])) hEdge = ed.right_;
				else hEdge = ed.centre_;
				break;
		}
		break;
}
	
	if(left && hEdge != ed.left_) {
		position[0]--;
	}
	if(right && hEdge != ed.right_) {
		position[0]++;
	}
	if(up) {
		if(orientation != ori.left_) orientation++;
		else orientation = ori.up_;
	}
	if(timer == 0 || down) {
		timer = GAMESPEED + 1 - global.level;
		if(vEdge == 1) inactivate(); 
		else position[1]++;
	} else timer--;
	//if(position[1] == PLAYARENAHEIGHT - 1) inactivate();
	
	x = PLAYARENASTART + position[0] * BLOCKWIDTH;
	y = position[1] * BLOCKWIDTH;
}
