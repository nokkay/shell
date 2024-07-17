

// create a pauser at player location
	pauser = instance_create_layer(obj_player.x - 8, 
								obj_player.y - 8, 
								layer_get_id("objs"),
								obj_pauser)
		
// start a timer for escape input
	escape_enable = false
	alarm[0] = room_speed * .25

// Inherit the parent event
	event_inherited();

// Overide
	option[0,0] = "Resume Game"


