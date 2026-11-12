function scr_textreader(){
	global.pesterlog[0] = "";
	file = file_text_open_read("pesterlog.txt");
	
	for (var i = 0; i < 29; i++)
	{
	    global.pesterlog[i] = file_text_read_string(file);
	    file_text_readln(file);
	}
	
	file_text_close(file);
}