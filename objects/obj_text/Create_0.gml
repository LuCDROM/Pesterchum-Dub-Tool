scr_textreader();
draw_set_font(fnt_typostuck);

yvalue = global.padding;
y2 = 0;
//linecount2 = 

view_wport[0] = global.width;
view_hport[0] = global.height;
camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
window_set_size(view_wport[0]*global.scale, view_hport[0]*global.scale);
window_center();
view_visible[0] = true;