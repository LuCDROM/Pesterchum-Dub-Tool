var next = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_right);
var back = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_left);

if (global.printtype == 0) {
	linecount2 = global.linecount
	pesterlog2 = global.pesterlog;
} else if (global.printtype == 1) {
	pesterlog2 = global.pesterlog;
	
	if (next && linecount2 < global.linecount) {
		linecount2++;
		if (linecount2 != global.linecount && global.pesterlog[linecount2] == "") {
			linecount2++;
			if (low > 0) {yvalue -= 15;}
		}
		if (low > 0) {yvalue -= 15;}
	} else if (back && linecount2 > 0) {
		linecount2--;
		if (global.pesterlog[linecount2] == "") {
			linecount2--;
			if (low > 0) {yvalue += 15;}
		}
		if (low > 0) {yvalue += 15;}
		if (linecount2 <= low-1) {yvalue = global.padding; low = -1;}
	}
}