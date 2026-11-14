var next = keyboard_check(ord("S")) || keyboard_check_pressed(ord("D")) || keyboard_check(vk_down) || keyboard_check_pressed(vk_right);
var back = keyboard_check(ord("W")) || keyboard_check_pressed(ord("A")) || keyboard_check(vk_up) || keyboard_check_pressed(vk_left);

if (global.printtype == 0) {
	pesterlog2 = global.pesterlog;
	for (var i = 0; i < global.linecount; i++) {
		placement[i] = string_length(pesterlog2[i]);
	}
	
	if (next && linecount2 < global.linecount) {
		linecount2++;
		if (low > 0) {yvalue -= getTextH(-1);}
	} else if (back && linecount2 > 0) {
		linecount2--;
		if (low > 0) {yvalue += getTextH(0);}
		if (linecount2 <= low-1) {yvalue = global.padding; low = -1;}
	}
} else if (global.printtype == 2) {
	if (next) {
		placement[linecount2]++;
		if (placement[linecount2] >= string_length(global.pesterlog[linecount2])) {
			//placement[linecount2] = 0;
			increase = true;
		}
	}
	
	if (increase && linecount2 < global.linecount) {
		increase = false;
		linecount2++;
		if (low > 0) {yvalue -= getTextH(-1);}
	} else if (decrease && linecount2 > 0) {
		decrease = false;
		linecount2--;
		if (low > 0) {yvalue += getTextH(0);}
		if (linecount2 <= low-1) {yvalue = global.padding; low = -1;}
	}
}

function getTextH(offset) {
	var textH = (string_height_scribble_ext(pesterlog2[linecount2+offset], (global.width - (2*global.padding))) - 1);
	if (textH < 15) {textH = 15;}
	return textH;
}