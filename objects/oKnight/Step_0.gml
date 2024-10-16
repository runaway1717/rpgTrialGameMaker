/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_shift)) {
	mov = 10;
}

if(keyboard_check(vk_left)) {
	x = x - mov;
}
else if(keyboard_check(vk_right)) {
	x = x + mov;
}
else if(keyboard_check(vk_up)) {
	y = y - mov;
}
else if(keyboard_check(vk_down)) {
	y = y + mov;
}

mov = 5;
move_wrap(true, true, 100);