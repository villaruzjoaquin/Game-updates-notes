//player_idle_state
function player_idle_state(){

//get input
get_input();


//calculate movements
calc_movement();

//check state
if (hsp != 0) state = states.WALK;

if (attack) {
	state = states.ATTACK;
	image_index = 0;
}

//apply movements
collision();


//apply animation
animation();

}