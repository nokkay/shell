/// @description update to players position and room

	if cam != view_camera[0]
	{	
		cam = view_camera[0]
	}
	
	if (instance_exists(follow)) // spawn on player
	{
		x = follow.x 
		y = follow.y
	}
	else if (global.target_x != -1) // spawn where player should be
	{
		x = global.target_x
		y = global.target_y
	}
