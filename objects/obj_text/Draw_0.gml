draw_rectangle_colour(0, 0, global.width, global.height, global.bgcolor, global.bgcolor, global.bgcolor, global.bgcolor, false);

for (var i = 0; i < global.linecount; i++) {
	draw_text_scribble_ext(global.padding, yvalue + y2, global.pesterlog[i], (global.width - (2*global.padding)));
	//y2++;
	
	var textH = (string_height_scribble_ext(global.pesterlog[i], (global.width - (2*global.padding))) - 1);
	if (textH < 15) {textH = 15;}
	y2 += textH;
}
y2 = 0;