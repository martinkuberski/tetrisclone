switch(type) {
	case blockTypes.blue:
		switch(orientation) {
			case ori.up_:
				draw_sprite(sBlue, 0, x, y);
				draw_sprite(sBlue, 0, x-BLOCKWIDTH, y);
				draw_sprite(sBlue, 0, x, y-BLOCKWIDTH);
				draw_sprite(sBlue, 0, x, y-BLOCKWIDTH*2);
				break;
			case ori.right_:
				draw_sprite(sBlue, 0, x, y);
				draw_sprite(sBlue, 0, x+BLOCKWIDTH, y);
				draw_sprite(sBlue, 0, x-BLOCKWIDTH, y);
				draw_sprite(sBlue, 0, x-BLOCKWIDTH, y-BLOCKWIDTH);
				break;
			case ori.down_:
				draw_sprite(sBlue, 0, x, y);
				draw_sprite(sBlue, 0, x, y-BLOCKWIDTH);
				draw_sprite(sBlue, 0, x, y-BLOCKWIDTH*2);
				draw_sprite(sBlue, 0, x+BLOCKWIDTH, y-BLOCKWIDTH*2);
				break;
			case ori.left_:
				draw_sprite(sBlue, 0, x, y);
				draw_sprite(sBlue, 0, x, y-BLOCKWIDTH);
				draw_sprite(sBlue, 0, x-BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sBlue, 0, x-BLOCKWIDTH*2, y-BLOCKWIDTH);
				break;
		}
		break;
	case blockTypes.cyan:
		switch(orientation) {
			case ori.up_:
				draw_sprite(sCyan, 0, x, y);
				draw_sprite(sCyan, 0, x+BLOCKWIDTH, y);
				draw_sprite(sCyan, 0, x+BLOCKWIDTH*2, y);
				draw_sprite(sCyan, 0, x+BLOCKWIDTH*3, y);
				break;
			case ori.right_:
				draw_sprite(sCyan, 0, x, y);
				draw_sprite(sCyan, 0, x, y-BLOCKWIDTH);
				draw_sprite(sCyan, 0, x, y-BLOCKWIDTH*2);
				draw_sprite(sCyan, 0, x, y-BLOCKWIDTH*3);
				break;
			case ori.down_:
				draw_sprite(sCyan, 0, x, y);
				draw_sprite(sCyan, 0, x+BLOCKWIDTH, y);
				draw_sprite(sCyan, 0, x+BLOCKWIDTH*2, y);
				draw_sprite(sCyan, 0, x+BLOCKWIDTH*3, y);
				break;
			case ori.left_:
				draw_sprite(sCyan, 0, x, y);
				draw_sprite(sCyan, 0, x, y-BLOCKWIDTH);
				draw_sprite(sCyan, 0, x, y-BLOCKWIDTH*2);
				draw_sprite(sCyan, 0, x, y-BLOCKWIDTH*3);
				break;
		}
		break;
	case blockTypes.green:
		switch(orientation) {
			case ori.up_:
				draw_sprite(sGreen, 0, x, y);
				draw_sprite(sGreen, 0, x-BLOCKWIDTH, y);
				draw_sprite(sGreen, 0, x, y-BLOCKWIDTH);
				draw_sprite(sGreen, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				break;
			case ori.right_:
				draw_sprite(sGreen, 0, x, y);
				draw_sprite(sGreen, 0, x, y-BLOCKWIDTH);
				draw_sprite(sGreen, 0, x-BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sGreen, 0, x-BLOCKWIDTH, y-BLOCKWIDTH*2);
				break;
			case ori.down_:
				draw_sprite(sGreen, 0, x, y);
				draw_sprite(sGreen, 0, x-BLOCKWIDTH, y);
				draw_sprite(sGreen, 0, x, y-BLOCKWIDTH);
				draw_sprite(sGreen, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				break;
			case ori.left_:
				draw_sprite(sGreen, 0, x, y);
				draw_sprite(sGreen, 0, x, y-BLOCKWIDTH);
				draw_sprite(sGreen, 0, x-BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sGreen, 0, x-BLOCKWIDTH, y-BLOCKWIDTH*2);
				break;
		}
		break;
	case blockTypes.magenta:
		switch(orientation) {
			case ori.up_:
				draw_sprite(sMagenta, 0, x, y);
				draw_sprite(sMagenta, 0, x-BLOCKWIDTH, y);
				draw_sprite(sMagenta, 0, x+BLOCKWIDTH, y);
				draw_sprite(sMagenta, 0, x, y-BLOCKWIDTH);
				break;
			case ori.right_:
				draw_sprite(sMagenta, 0, x, y);
				draw_sprite(sMagenta, 0, x, y-BLOCKWIDTH);
				draw_sprite(sMagenta, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sMagenta, 0, x, y-BLOCKWIDTH*2);
				break;
			case ori.down_:
				draw_sprite(sMagenta, 0, x, y);
				draw_sprite(sMagenta, 0, x, y-BLOCKWIDTH);
				draw_sprite(sMagenta, 0, x-BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sMagenta, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				break;
			case ori.left_:
				draw_sprite(sMagenta, 0, x, y);
				draw_sprite(sMagenta, 0, x, y-BLOCKWIDTH);
				draw_sprite(sMagenta, 0, x-BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sMagenta, 0, x, y-BLOCKWIDTH*2);
				break;
		}
		break;
	case blockTypes.orange:
		switch(orientation) {
			case ori.up_:
				draw_sprite(sOrange, 0, x, y);
				draw_sprite(sOrange, 0, x+BLOCKWIDTH, y);
				draw_sprite(sOrange, 0, x, y-BLOCKWIDTH);
				draw_sprite(sOrange, 0, x, y-BLOCKWIDTH*2);
				break;
			case ori.right_:
				draw_sprite(sOrange, 0, x, y);
				draw_sprite(sOrange, 0, x, y-BLOCKWIDTH);
				draw_sprite(sOrange, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sOrange, 0, x+BLOCKWIDTH*2, y-BLOCKWIDTH);
				break;
			case ori.down_:
				draw_sprite(sOrange, 0, x, y);
				draw_sprite(sOrange, 0, x, y-BLOCKWIDTH);
				draw_sprite(sOrange, 0, x, y-BLOCKWIDTH*2);
				draw_sprite(sOrange, 0, x-BLOCKWIDTH, y-BLOCKWIDTH*2);
				break;
			case ori.left_:
				draw_sprite(sOrange, 0, x, y);
				draw_sprite(sOrange, 0, x-BLOCKWIDTH, y);
				draw_sprite(sOrange, 0, x-BLOCKWIDTH*2, y);
				draw_sprite(sOrange, 0, x, y-BLOCKWIDTH);
				break;
		}
		break;
	case blockTypes.red:
		switch(orientation) {
			case ori.up_:
				draw_sprite(sRed, 0, x, y);
				draw_sprite(sRed, 0, x-BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sRed, 0, x, y-BLOCKWIDTH);
				draw_sprite(sRed, 0, x+BLOCKWIDTH, y);
				break;
			case ori.right_:
				draw_sprite(sRed, 0, x, y);
				draw_sprite(sRed, 0, x, y-BLOCKWIDTH);
				draw_sprite(sRed, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sRed, 0, x+BLOCKWIDTH, y-BLOCKWIDTH*2);
				break;
			case ori.down_:
				draw_sprite(sRed, 0, x, y);
				draw_sprite(sRed, 0, x-BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sRed, 0, x, y-BLOCKWIDTH);
				draw_sprite(sRed, 0, x+BLOCKWIDTH, y);
				break;
			case ori.left_:
				draw_sprite(sRed, 0, x, y);
				draw_sprite(sRed, 0, x, y-BLOCKWIDTH);
				draw_sprite(sRed, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				draw_sprite(sRed, 0, x+BLOCKWIDTH, y-BLOCKWIDTH*2);
				break;
		}
		break;
	case blockTypes.yellow:
		switch(orientation) {
			case ori.up_:
				draw_sprite(sYellow, 0, x, y);
				draw_sprite(sYellow, 0, x+BLOCKWIDTH, y);
				draw_sprite(sYellow, 0, x, y-BLOCKWIDTH);
				draw_sprite(sYellow, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				break;
			case ori.right_:
				draw_sprite(sYellow, 0, x, y);
				draw_sprite(sYellow, 0, x+BLOCKWIDTH, y);
				draw_sprite(sYellow, 0, x, y-BLOCKWIDTH);
				draw_sprite(sYellow, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				break;
			case ori.down_:
				draw_sprite(sYellow, 0, x, y);
				draw_sprite(sYellow, 0, x+BLOCKWIDTH, y);
				draw_sprite(sYellow, 0, x, y-BLOCKWIDTH);
				draw_sprite(sYellow, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				break;
			case ori.left_:
				draw_sprite(sYellow, 0, x, y);
				draw_sprite(sYellow, 0, x+BLOCKWIDTH, y);
				draw_sprite(sYellow, 0, x, y-BLOCKWIDTH);
				draw_sprite(sYellow, 0, x+BLOCKWIDTH, y-BLOCKWIDTH);
				break;
		}
		break;
}