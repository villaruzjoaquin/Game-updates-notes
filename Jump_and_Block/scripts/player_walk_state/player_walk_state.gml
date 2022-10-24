//player_walk_state
function player_walk_state(){

//get input
get_input();


//calculate movements
calc_movement();

//check state
if (hsp == 0) state = states.IDLE;

if (attack) {
	state = states.ATTACK;
	image_index = 0;
}

if (jump) {
	state = states.JUMP;
	vsp = jump_spd;
}

if (block) {
	state = states.BLOCK;
	hsp = 0;
}

//apply movements
collision();


//apply animation
animation();

}