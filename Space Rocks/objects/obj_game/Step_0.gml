/// @description Insert description here
// You can write your code in this editor
if(ast_spawn_delay_adj > 0){
	ast_spawn_delay_adj -= 1;
}
else{
	instance_create_layer(x, y, "Instances", obj_ast);
	
	ast_spawn_delay_adj = ast_spawn_delay * room_speed;
}