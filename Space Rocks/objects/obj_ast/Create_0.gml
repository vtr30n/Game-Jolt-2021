/// @description Insert description here
// You can write your code in this editor
sprite_index = choose(
	spr_ast1,
	spr_ast2,
	spr_ast3
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

if(sprite_index == spr_ast1) speed = 1.5;
if(sprite_index == spr_ast2) speed = 1;
if(sprite_index == spr_ast3) speed = 0.5;