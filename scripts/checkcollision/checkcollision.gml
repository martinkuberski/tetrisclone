// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkCollision(type, orientation){
	var vEdge = 0;
	var hEdge = 0;
	var occupying = [];
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
	
	return [vEdge, hEdge, occupying]; 
}