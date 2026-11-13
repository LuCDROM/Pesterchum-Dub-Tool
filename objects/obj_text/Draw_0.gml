scr_textreader();
draw_set_font(fnt_couriernew);
scribble_color_set("Abby", #ff5900);
for (var i = 0; i < global.linecount; i++) {
	for (var j = 0; j < global.colcount; j += 3) {
		if (string_starts_with(global.pesterlog[i], global.col1[j])) {
			draw_set_colour(global.col2[j+1]);
			//global.pesterlog[i] = global.col[j+1];
		}
	}
	draw_text_scribble(0, i*12, global.pesterlog[i]);
}