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

//Animation
if (!place_meeting(x, y + 1, obj_invsWall)) {
	sprite_index = spr_player_air;
	image_speed = 0;
	if (vsp > 0) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = spr_player;
	} else {
		sprite_index = spr_player_walk;
	}
}

if(hsp != 0) {
	image_xscale = sign(hsp);
}