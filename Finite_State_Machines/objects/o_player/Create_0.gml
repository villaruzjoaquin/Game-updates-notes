/// @description Insert description here
// You can write your code in this editor

//speeds
hsp = 0;
vsp = 0;
max_hsp = 2;
walk_spd = 1.5;

//friction
drag = .12;

//facing direction
facing = 1;


//movement
up = 0;
down = 0;
left = 0;
right = 0;
attack = 0;

//states
enum states {
	IDLE,
	WALK,
	JUMP,
	ATTACK,
	BLOCK,
	CROUCH,
	CROUCH_BLOCK
}

state = states.IDLE

//create states array
states_array[states.IDLE]			= player_idle_state;
states_array[states.WALK]			= player_walk_state;
states_array[states.JUMP]			= player_jump_state;
states_array[states.ATTACK]			= player_attack_state;
states_array[states.BLOCK]			= player_block_state;

//create sprites array
sprites_array[states.IDLE]			= sKnightIdle;
sprites_array[states.WALK]			= sKnightWalk;
sprites_array[states.JUMP]			= sKnightJump;
sprites_array[states.ATTACK]		= sKnightAttack;
sprites_array[states.BLOCK]			= sKnightGuard;