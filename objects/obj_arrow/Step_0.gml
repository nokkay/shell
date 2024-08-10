/// @description Hit things

	var _entity = instance_place(x,y,p_entity)
	var _break = false
	
	// entity collision
	if (_entity != noone)
	{
		with  (_entity)
		{
			if (object_is_ancestor(object_index,p_enemy))
			{
				hurt_enemy(id,5,other.id,48)
				_break = true
			}
			else
			{
				if (entity_hit_script != -1)
				{
					script_execute(entity_hit_script)
					_break = true
				}
			}
		}
		if (_break) instance_destroy()
	}
	
	// tilemap collision, get stuck in the wall then disappear 
	if (tilemap_get_at_pixel(global.collision_map,x,y) > 0)
	{
		speed = 0
		// deteriorate
		deteriorate++
		if (deteriorate > deteriorate_after)
		{
			image_alpha -= 1/deteriorate_time
			if (image_alpha <= 0) instance_destroy()
		}
	}
	
	// destroy if we leave camera bounds idea! : create a room where the players goal is to "crash" the game by item overflow, use try catch to advance game when crash
	var _cam = view_camera[0]
	var _cam_x = camera_get_view_x(_cam)
	var _cam_y = camera_get_view_y(_cam)
	if (!point_in_rectangle(x, y, _cam_x, _cam_y, _cam_x + camera_get_view_width(_cam), _cam_y + camera_get_view_height(_cam)))
	{
		instance_destroy()
	}
	
	
	
	
	
	
	
	
	
	
	