/// @description Insert description here
// You can write your code in this editor
image_angle += 0.5;

if(delay_adj > 0){
	delay_adj -= 1;
}

else{
	var bullet1 = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet1.direction = image_angle;
	
	var bullet2 = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet2.direction = image_angle + 90;
	
	var bullet3 = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet3.direction = image_angle + 180;
	
	var bullet4 = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet4.direction = image_angle + 270;
	
	delay_adj = delay * room_speed;
}