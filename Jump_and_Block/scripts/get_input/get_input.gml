function get_input(){
//get_input();

left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
attack = keyboard_check_pressed(vk_shift);
jump = keyboard_check_pressed(vk_space);
block = keyboard_check(ord("Z"));
}