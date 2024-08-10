/// @description Essential Entity Setup

	direction = 270 // starting direction is down
	z = 0
	entity_collision_start = entity_collision
	grav_start = 0.2
	grav_multiplier = 0.2
	local_frame = 0
	lifted = 0
	thrown = false
	entity_drop_list = -1
	_collided = false
	collision_map = layer_tilemap_get_id(layer_get_id("Collision"))
	
	flash_shader = sh_white_flash
	flash = 0 
	
	
	
	