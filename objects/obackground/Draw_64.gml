draw_text(0,10,"Level: " + string(global.level));
draw_text(0,40, "Score: " + string(global.score));

if(addScore != 0) {
	drawTextTimer = GAMESPEED;
	drawTextStr = "Line clear! + " + string(addScore * global.level) + " points!";
	if(addScore == 800) drawTextStr += "\nTETRIS!!!";
}

if(drawTextTimer != 0) {
	draw_text(10, 60, drawTextStr);
	drawTextTimer--;
}
else drawTextStr = "";