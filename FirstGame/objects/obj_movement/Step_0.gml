if(keyboard_check(ord("D"))) 
{
	x += speed;
	x_direction = 1;
}
if(keyboard_check(ord("W"))) 
{
	y -= speed;
	y_direction = -1;
}
if(keyboard_check(ord("S")))
{
	y += speed;
	y_direction = 1;
}
if(keyboard_check(ord("A"))) 
{
	x -= speed;
	x_direction = -1;
}	

#region BugPowers

if(keyboard_check_pressed(ord("C")))
{	
	if(global.number_of_dashes > 0)
	{
	global.number_of_dashes -= 1;
	is_vulnerable = false;
	x += x_direction * dashing_force;
	y += y_direction * dashing_force;
	is_vulnerable = true;
	}
	//play animation
}

#endregion
/*if(number mod 120)
	show_debug_message(string(number));
if(number == 120)
	game_end();
	number += 1;