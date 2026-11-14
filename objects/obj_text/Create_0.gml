scr_textreader();
draw_set_font(fnt_typostuck);

yvalue = global.padding;
y2 = 0;
low = -1;

if (global.printtype == 1) {linecount2 = 0;}
else {linecount2 = 1;}
pesterlog2[0] = "";
placement[0] = 0;
for (var i = 0; i <= global.linecount; i++) {
	pesterlog2[i] = "";
	placement[i] = string_length_scribble(pesterlog2[i]);
}

increase = false;
decrease = false;

view_wport[0] = global.width;
view_hport[0] = global.height;
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
window_set_size(view_wport[0]*global.scale, view_hport[0]*global.scale);
window_center();
view_visible[0] = true;