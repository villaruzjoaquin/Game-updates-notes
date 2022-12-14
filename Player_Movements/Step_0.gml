/// @description Insert description here
// You can write your code in this editor

//get input
var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);


// declare swing attack variables
var swing = mouse_check_button(mb_left);
var airAttack = keyboard_check(vk_up) and keyboard_check(mb_left);

//calculate movements
hsp = hsp + (right - left) * walk_spd;

//drag
hsp = lerp(hsp, 0, drag);
//stop
if abs(hsp) <= 0.1 hsp = 0;

//face correct way
if hsp != 0 facing = sign(hsp);

//limit speed
hsp = min(abs(hsp), max_hsp) * facing;

//apply movements
x += hsp;
y += vsp;


//apply animation
if hsp != 0
{
	image_xscale = facing;
	sprite_index = sKnightWalk;
} else {
	sprite_index = sKnightIdle;
}

// allow player to swing
if(swing){
	sprite_index = sKnightAttack;
} else {
	sprite_index = sKnightIdle;
}

// allow player to attack Air (a bit inconsistent but it'll do)
if(airAttack){
	sprite_index = sKnightAirAttack;
} else {
	sprite_index = sKnightIdle;
}



/// @description Insert description here
// You can write your code in this editor


