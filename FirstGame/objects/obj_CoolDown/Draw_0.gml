/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_text(100, 100, "Dash Cool Down " + string(dasher_timer/room_speed));
draw_text(100, 70, "Dashes " + string(global.number_of_dashes));

draw_text(100, 160, "Greninja Cool Down " + string(gNinja_timer/room_speed));
draw_text(100, 130, "GreNinja " + string(global.number_of_greNinja));