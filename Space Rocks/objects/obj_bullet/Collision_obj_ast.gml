/// @description Insert description here
// You can write your code in this editor
instance_destroy();
score += 10;

with(other){
	instance_destroy();
	
	if(sprite_index == spr_ast3){
		repeat(2){
			var new_ast = instance_create_layer(x, y, "Instances", obj_ast); 
			new_ast.sprite_index = spr_ast2;
		}
	}
	else if(sprite_index == spr_ast2){
		repeat(2){
			var new_ast = instance_create_layer(x, y, "Instances", obj_ast); 
			new_ast.sprite_index = spr_ast1;
		}
	}
	
	repeat(10){
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}