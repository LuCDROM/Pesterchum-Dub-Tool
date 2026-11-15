function scr_textreader(){
	//Settings
	file = file_text_open_read("settings.txt");
	settings[0] = "";
	var setline = 1;
	
	while (!file_text_eof(file))
	{
	    settings[setline] = file_text_read_string(file);
		file_text_readln(file);
		setline++;
	}
	file_text_close(file);
	
	//Settings Set Up
	global.bgcolor = make_colour_rgb(real(settings[2]), real(settings[3]), real(settings[4])); //done
	global.width = real(settings[7]); //done
	global.height = real(settings[8]); //done
	global.padding = real(settings[11]); //done
	global.scale = real(settings[14]); //done
	global.screenshot = real(settings[17]); //done
	global.autocolor = real(settings[20]); //done
	global.printtype = real(settings[23]); //done
	
	//Pesterlog
	file = file_text_open_read("pesterlog.txt");
	global.pesterlog[0] = "";
	global.linecount = 0;
	
	while (!file_text_eof(file))
	{
	    global.pesterlog[global.linecount] = file_text_read_string(file);
		file_text_readln(file);
		global.linecount++;
	}
	file_text_close(file);
	
	//Color
	file = file_text_open_read("color.txt");
	global.col[0] = "";
	global.colcount = 0;
	
	while (!file_text_eof(file))
	{
		global.col[global.colcount] = file_text_read_string(file);
		file_text_readln(file);
		global.colcount++;
	}
	file_text_close(file);
	
	//Color Set Up
	for (var i = 0; i < global.colcount; i += 5) {
		scribble_color_set(global.col[i], make_colour_rgb(global.col[i+1], global.col[i+2], global.col[i+3]));
	}
	//Auto Coloring
	if (global.autocolor == 1) {
		for (var i = 0; i < global.linecount; i++) {
			for (var j = 0; j < global.colcount; j += 5) {
				if (string_starts_with(global.pesterlog[i], global.col[j])) {
					global.pesterlog[i] = "[" + global.col[j] + "]" + global.pesterlog[i];
				}
			}
		}
	}
}