function scr_textreader(){
	//Pesterlog
	global.pesterlog[0] = "";
	global.linecount = 0;
	file = file_text_open_read("pesterlog.txt");
	
	while (!file_text_eof(file))
	{
	    global.pesterlog[global.linecount] = file_text_read_string(file);
		file_text_readln(file);
		global.linecount++;
	}
	file_text_close(file);
	
	//Color
	file = file_text_open_read("autocolors.txt");
	global.col[0] = "";
	global.colcount = 0;
	
	while (!file_text_eof(file))
	{
		global.col[global.colcount] = file_text_read_string(file);
		file_text_readln(file);
		global.colcount++;
	}
	file_text_close(file);
	
	for (var i = 0; i < global.colcount; i += 5) {
		scribble_color_set(global.col[i], make_colour_rgb(global.col[i+1], global.col[i+2], global.col[i+3]));
	}
	for (var i = 0; i < global.linecount; i++) {
		for (var j = 0; j < global.colcount; j += 5) {
			if (string_starts_with(global.pesterlog[i], global.col[j])) {
				global.pesterlog[i] = "[" + global.col[j] + "]" + global.pesterlog[i];
			}
		}
	}
}