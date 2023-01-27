/// @description Core Player Lgoic

//Get player inputs
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calc movoment
var _move = key_right - key_left;

hsp = _move * walksp;

vsp += grv;

if (key_jump && place_meeting(x, y + 1, obj_invsWall)) {
	vsp = -jumpsp;
}

//Horizontal collision
if (place_meeting(x + hsp, y, obj_invsWall)) {
	while (!place_meeting(x + sign(hsp), y, obj_invsWall)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical collision
if (place_meeting(x, y + vsp, obj_invsWall)) {
	while (!place_meeting(x, y + sign(vsp), obj_invsWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;