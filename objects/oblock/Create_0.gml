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

enum ori {
	up_,
	right_,
	down_,
	left_	
}

enum ed {
	left_,
	centre_,
	right_
}

type = pointer_null;
timer = 0;
position = [4, 0];
orientation = ori.up_;
occupying = [position, position, position, position];
hEdge = ed.centre_;
vEdge = 0;