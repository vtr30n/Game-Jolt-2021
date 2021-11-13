/// @description Rotate ship on key movement
// You can write your code in this editor
acceleration = 0.01;
deceleration = 0.01;
a_mod = 20;
d_mod = 2

// Movement
if(keyboard_check(vk_left)){
	image_angle += 5;
}

if(keyboard_check(vk_right)){
	image_angle -= 5;
}

if(keyboard_check(vk_up)){
	motion_add(image_angle, acceleration * a_mod);
}
else{
	speed -= deceleration * d_mod;
	if(speed < 0) speed = 0;
}

move_wrap(true, true, sprite_width / 2);

// Attacks
if(keyboard_check_pressed(vk_space)){
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
	
	score -= 1;
}

if(keyboard_check_pressed(vk_tab)){
	var inst = instance_create_layer(x, y, "Instances", obj_rotary1);
	inst.direction = image_angle;
	
	score -= 5;
}