var space = keyboard_check_pressed(vk_space);
var next = keyboard_check(ord("S")) || keyboard_check_pressed(ord("D")) || keyboard_check(vk_down) || keyboard_check_pressed(vk_right);

if (space || (next && global.screenshot)) {
	screen_save(program_directory + "/Screenshots/Screen_" + string(screennum) + ".png");
	screennum++;
}