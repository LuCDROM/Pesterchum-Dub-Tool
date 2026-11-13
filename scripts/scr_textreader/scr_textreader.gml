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
	global.col1[0] = "";
	global.col2[0] = #000000;
	global.colcount = 0;
	
	while (!file_text_eof(file))
	{
		if (global.colcount % 3 == 0) {
			global.col1[global.colcount] = file_text_read_string(file);
		} else {
			global.col2[global.colcount] = file_text_read_real(file);
		}
		file_text_readln(file);
		global.colcount++;
	}
	
	file_text_close(file);
}