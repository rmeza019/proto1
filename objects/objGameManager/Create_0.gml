/// @description 
enum states {
	idle,
	walk,
	run,
	skid,
	jump,
	slide,
	duck,
	die,
	shoot
}

enum forms {
	smol,
	super,
	fire
}

input = instance_create_layer(x, y, "Instances", objInputManger);