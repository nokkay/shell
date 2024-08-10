

	
function bird_wander()
{
		
	sprite_index = spr_move
	image_speed = 1.0
	
	// at destination or give up?
	if ((x == x_to) && (y == y_to)) or (time_passed > enemy_wander_dist / enemy_spd)
	{
		xspd = 0
		yspd = 0
		
		
		// set new target destination with a bit of randomness
		if (++wait >= wait_duration + irandom_range(-15,240))
		{
			wait = 0
			time_passed = 0
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45) // move back towards starting pos
			x_to = x + lengthdir_x(enemy_wander_dist, dir)
			y_to = y + lengthdir_y(enemy_wander_dist, dir)
		}
	}
	else // move towards new destination
	{
		time_passed++
		var _distance_to_go = point_distance(x,y,x_to,y_to)
		var _speed_this_frame = enemy_spd
		if (_distance_to_go < enemy_spd) _speed_this_frame = _distance_to_go // if distance is less than speed and will overshoot, set speed to exact distance 
		dir = point_direction(x,y,x_to,y_to)
		xspd = lengthdir_x(_speed_this_frame,dir)
		yspd = lengthdir_y(_speed_this_frame,dir)
		if (xspd != 0) image_xscale = sign(xspd) // change image dir of slime
		
		// collide and move
		var _collided = enemy_tile_collision()
	}
	
	// check for aggro
	if (++aggro_check >= aggro_check_duration)
	{
		aggro_check = 0
		if (instance_exists(obj_player)) && (point_distance(x,y,obj_player.x,obj_player.y) <= enemy_aggro_radius) // in aggro radius
		{
			state = ENEMY_STATE.CHASE
			target = obj_player 
		}
	}
}
	
	
function bird_chase()
{
	sprite_index = spr_move // reset sprite
	
	if (instance_exists(target))
	{
		x_to = target.x 
		y_to = target.y
		
		var _distance_to_go = point_distance(x,y,x_to,y_to)
		image_speed = 1.0 // reset speed
		dir = point_direction(x,y,x_to,y_to)
		
		// if player has left the chase radius then return to wander state
		if (_distance_to_go > enemy_chase_radius) state = ENEMY_STATE.WANDER
		
		if (_distance_to_go > enemy_spd)
		{
			xspd = lengthdir_x(enemy_spd,dir)
			yspd = lengthdir_y(enemy_spd,dir)
		}
		else
		{
			xspd = lengthdir_x(_distance_to_go,dir)
			yspd = lengthdir_y(_distance_to_go,dir)
		}
		if (xspd != 0) image_xscale = sign(xspd) // flip sprite based on dir
		
		// collide and move
		enemy_tile_collision()
	}
}