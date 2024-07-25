/// @description Create Player & Update collision_map 

	if (global.target_x != -1) // ignore first time player is created
	{
		x = global.target_x
		y = global.target_y
		direction = global.target_dir
	}
	collision_map = layer_tilemap_get_id(layer_get_id("Collision"))