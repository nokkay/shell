/// @description Entity Loop
// end step because carried object should follow player and update in same step

	if !global.game_paused
	{
		
		// collision
		if (lifted)
		{
			entity_collision = false
		}
		else
		{
			entity_collision = entity_collision_start	
		}
		
		
		depth = -bbox_bottom			
		if (lifted) && (instance_exists(obj_player))
		{
			// execute after lifting animation
			if (obj_player.sprite_index != spr_player_lift)
			{
				x = obj_player.x
				y = obj_player.y
				z = CARRY_HEIGHT
				depth = obj_player.depth - 1
			}
		}
		
		
		if (!lifted)
		{
			// be thrown 
			if (thrown)
			{
				throw_dist_travelled = min(throw_dist_travelled+3, throw_dist)
				x = xstart + lengthdir_x(throw_dist_travelled, direction)
				y = ystart + lengthdir_y(throw_dist_travelled, direction)
				
				// collision
				if (tilemap_get_at_pixel(collision_map,x,y) > 0 or place_meeting(x,y, p_entity))
				{
					thrown = false
					grav = grav_start
				}
				
				throw_percent = throw_start_percent + lerp(0, 1 - throw_start_percent, throw_dist_travelled/throw_dist)
				z = throw_peak_height * sin(throw_percent * pi)
				
				// 
				z = max(z - grav, 0) // apply gravity ? experimental and not part of the tutorial
				grav += grav_multiplier
				// 
				
				if (throw_dist == throw_dist_travelled)
				{
					thrown = false
					if (entity_throw_break) instance_destroy()
				}
			}
			else // hits collision
			{
				// fall back to earth if above zero z	
				if (z > 0)
				{
					z = max(z - grav, 0)
					grav += grav_multiplier
					if (z == 0) && (entity_throw_break) instance_destroy()
				}
				else 
				{
					grav = grav_start	
				}
				
			}
		}
	}

	flash = max(flash-0.04, 0)
	
	
	
	
	
	
	
	
	
	