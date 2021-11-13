/// @description Insert description here
// You can write your code in this editor
instance_destroy();
lives -= 1;
if(lives > 0) instance_create_layer(room_height / 2, room_width / 2, "Instances", obj_playership);

repeat(10){
	instance_create_layer(x, y, "Instances", obj_debris);
}
