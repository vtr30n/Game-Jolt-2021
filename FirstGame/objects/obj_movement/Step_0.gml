x_direction = 0;
y_direction = 0;

if(keyboard_check(ord("W"))) y_direction = -1;
if(keyboard_check(ord("A"))) x_direction = -1;
if(keyboard_check(ord("S"))) y_direction = 1;
if(keyboard_check(ord("D"))) x_direction = 1;
isMoving = (x_direction != 0 || y_direction != 0)

image_angle = point_direction(x, y, x + x_direction, y + y_direction);
if(isMoving) motion_set(image_angle, 5);
if(!isMoving) motion_set(image_angle, 0);
move_wrap(true, true, sprite_width / 2);

#region BugPowers

if(keyboard_check_pressed(ord("C")))
{	
	if(isMoving)
	{
		if(global.number_of_dashes > 0)
		{
			global.number_of_dashes -= 1;
			is_vulnerable = false;
			x += x_direction * dash_distance;
			y += y_direction * dash_distance;
			is_vulnerable = true;
		}
	}
	
	//play animation
}

if(keyboard_check_pressed(ord("F")))
{
	if(!isTeleActive)
	{
		inst = instance_create_layer(x, y, "Instances", obj_tele_shadow);
		inst.direction = image_angle;
	}
	
	if(isTeleActive)
	{
		x = inst.x;
		y = inst.y;
		instance_destroy(inst);
	}
	
	isTeleActive = !isTeleActive;
}

#endregion

/*if(number mod 120)
	show_debug_message(string(number));
if(number == 120)
	game_end();
	number += 1;