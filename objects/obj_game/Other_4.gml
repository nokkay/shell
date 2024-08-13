/// @description Layer Management + save

	layer_set_visible("Collision", false)
	layer_set_visible("Sounds", false)
	
	global.collision_map = layer_tilemap_get_id(layer_get_id("Collision"))
	

	// if there are other obj_game delete the impostor
	with (instance_find(object_index, 0)) 
	{
	    if (id != other.id) 
		{  
	        instance_destroy()
	    }
	}
	
	if (global.target_x != -1 && room != rm_title)
	{
		with (obj_player) instance_destroy() // destroy player if it already exists
		instance_create_layer(global.target_x,global.target_y,"Instances",obj_player) // spawn at target
	}
	
	if (!instance_exists(obj_player) && instance_exists(obj_spawnpoint)) instance_create_layer(obj_spawnpoint.x,obj_spawnpoint.y,"Instances",obj_player)