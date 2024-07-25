/// @description update to players position and room

	if cam != view_camera[0]
	{	
		cam = view_camera[0]
	}

	if (instance_exists(obj_player) && global.target_x != -1) // ignore first spawn in
	{
		x = global.target_x
		y = global.target_y
		draw_x = global.target_x
		draw_y = global.target_y
	}