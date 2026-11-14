var y2save = 0;
draw_rectangle_colour(0, 0, global.width, global.height, global.bgcolor, global.bgcolor, global.bgcolor, global.bgcolor, false);

for (var i = 0; i < linecount2; i++) { //this exists to prevent an extra frame when the screen first moves down
	var textH = (string_height_scribble_ext(pesterlog2[i], (global.width - (2*global.padding))) - 1);
	if (textH < 15) {textH = 15;}
	y2 += textH;
	
	while ((yvalue+y2+global.padding) > global.height && (low == -1 || low == linecount2)) {
		yvalue--;
		low = linecount2;
	}
}
y2 = 0;

for (var i = 0; i < linecount2; i++) { //actually drawing
	draw_text_scribble_ext(global.padding, yvalue + y2, pesterlog2[i], (global.width - (2*global.padding)));
	
	var textH = (string_height_scribble_ext(pesterlog2[i], (global.width - (2*global.padding))) - 1);
	if (textH < 15) {textH = 15;}
	y2 += textH;
}
y2 = 0;