scr_textreader();
scribble_color_set("Abby", #ff5900);
for (var i = 0; i < global.linecount; i++) {
	/*for (var j = 0; j < global.colcount; j += 5) {
		if (string_starts_with(global.pesterlog[i], global.col[j])) {
			draw_set_colour(make_colour_rgb(global.col[j+1], global.col[j+2], global.col[j+3]));
		}
	}*/
	
	draw_text_scribble_ext(0, yvalue + (y2*15), global.pesterlog[i], 650);
	y2++;
	if (string_width_scribble(global.pesterlog[i]) > 650) {
		y2++;
	}
}
y2 = 0;