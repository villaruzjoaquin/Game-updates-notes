function animation(){
	// animation();
	image_xscale = facing;
	if hsp != 0
	{
		sprite_index = sKnightWalk;
	} else {
		sprite_index = sKnightIdle;
	}
	
	if(swing){
		sprite_index = sKnightAttack;
	}
}