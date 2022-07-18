enum blockTypes 
{
	blue,
	cyan,
	green,
	magenta,
	orange,
	red,
	yellow
}

active = 1;
timer = 0;

type = irandom_range(blockTypes.blue, blockTypes.yellow);
switch (type) {
	case blockTypes.blue:
		sprite_index = sBlue;
		break;
	case blockTypes.cyan:
		sprite_index = sCyan;
		break;
	case blockTypes.green:
		sprite_index = sGreen;
		break;
	case blockTypes.magenta:
		sprite_index = sMagenta;
		break;
	case blockTypes.orange:
		sprite_index = sOrange;
		break;
	case blockTypes.red:
		sprite_index = sRed;
		break;
	case blockTypes.yellow:
		sprite_index = sYellow;
		break;
}