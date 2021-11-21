/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_text(100, 100, "Cool Down " + string(timer/room_speed));
draw_text(100, 70, "Dashes " + string(global.number_of_dashes));