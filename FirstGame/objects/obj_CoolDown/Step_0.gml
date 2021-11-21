/// @description Insert description here
// You can write your code in this editor
if(global.number_of_dashes < 5)
	timer -= 1;

if(timer == 0){
	global.number_of_dashes += 1;	
	timer = cool_down_timer;
}