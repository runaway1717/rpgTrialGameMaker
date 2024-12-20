lft = keyboard_check(vk_left) || keyboard_check(ord("A"));
rgt = keyboard_check(vk_right) || keyboard_check(ord("D"));
jmp = keyboard_check_pressed(vk_space);

var move = rgt - lft;

hsp = move * walksp;

vsp = vsp + grv;

if(jmp && place_meeting(x, y + 1, oWall)) {
	vsp = - 7;
}

 if(place_meeting(x + hsp, y, oWall)) {
	hsp = 0;
}

if(place_meeting(x, y + vsp, oWall)) {
	vsp = 0;
}

x = x + hsp;
y = y + vsp;
