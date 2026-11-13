scr_textreader();
draw_set_font(fnt_couriernew);
scribble_color_set("Abby", #ff5900)
for (var i = 0; i < global.linecount; i++) {
	draw_text_scribble(0, i*12, global.pesterlog[i]);
}