// player_block_state();
function player_block_state(){
	
	//get input
	get_input();
	
	//apply animation
	animation();
	
	if (guard) {
	state = states.BLOCK;
	image_index = 0;
	}
}