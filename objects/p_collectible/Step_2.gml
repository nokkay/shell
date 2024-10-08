
	flash = max(0, flash-0.05)
	fric = 0.05
	if (z == 0) fric = 0.10
	
	// magnetise to player
	if (instance_exists(obj_player))
	{
		var _px = obj_player.x 
		var _py = obj_player.y 
		var _dist = point_distance(x,y,_px,_py)
		if (_dist < magnet_dist) // magnet radius
		{
			spd += 0.25
			direction = point_direction(x,y,_px,_py)
			spd = min(spd,6)
			fric = 0
			if (_dist < 10) // collect radius
			{
				if (collect_sound != -1)
				{
					play_sound_struct({sound:collect_sound, pitch:1},true, 0.1,true)	
				}
				if (collect_script_arg != -1)
				{
					script_execute(collect_script, collect_script_arg)	
				}
				else
				{
					if(collect_script != -1) script_execute(collect_script)	
				}
				instance_destroy()
			}
		}
	}
	
	// bounce
	if (bounce_count != 0)
	{
		bounce += (pi * bounce_spd)	
		// reset bounce to beginning of sin wave
		if (bounce > pi)
		{
			bounce -= pi	
			bounce_height *= bounce_decay
			bounce_count--
		}
		z = (sin(bounce)) * bounce_height
	}
	else z = 0
	
	
	x += lengthdir_x(spd,direction)
	y += lengthdir_y(spd,direction)
	spd = max(spd-fric,0)
	depth = -bbox_bottom