/// @description Insert description here
// You can write your code in this editor
if(global.number_of_dashes < 5)
	dasher_timer -= 1;

if(dasher_timer == 0){
	global.number_of_dashes += 1;	
	dasher_timer = dash_cool_down_timer;
}
if(global.number_of_greNinja < 1){
	global.number_of_greNinja += 1;
	gNinja_timer = gNinja_cool_down_timer;
}

