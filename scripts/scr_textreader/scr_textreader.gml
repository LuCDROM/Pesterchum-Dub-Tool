function scr_textreader(){
	global.pesterlog[0] = "";
	global.linecount = 0;
	file = file_text_open_read("pesterlog.txt");
	
	while (!file_text_eof(file))
	{
	    global.pesterlog[global.linecount] = file_text_readln(file);
		global.linecount++;
	}
	
	file_text_close(file);
}