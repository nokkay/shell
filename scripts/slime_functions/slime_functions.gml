

function slime_wander()
{
	sprite_index = spr_move
	
	// at destination or give up?
	if ((x == x_to) && (y == y_to)) or (time_passed > enemy_wander_dist / enemy_spd)
	{
		xspd = 0
		yspd = 0
		// end our move animation
		if (image_index < 1) // when we are on our first frame stop the animation
		{
			image_speed = 0.0
			image_index = 0
		}
		
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
		image_speed = 1.0
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


function slime_chase()
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
	
	// check if close enough to launch an attack!!!
	if (instance_exists(target)) && (point_distance(x,y,target.x,target.y) <= enemy_attack_radius)
	{
		state = ENEMY_STATE.ATTACK
		sprite_index = spr_attack
		image_index = 0
		image_speed = 1.0
		
		// target 32px past the player (drive by)
		x_to += lengthdir_x(32,dir)
		y_to += lengthdir_y(32,dir)
	}
}


function slime_attack()
{
	// reset sprite
	sprite_index = spr_attack
	
	// how fast to move
	var _spd = enemy_spd * 2
	
	// dont move while still getting ready to jump
	if (image_index < 2) _spd = 0 
	
	// freeze animation while in mid air, and also after landing finishes
	if (floor(image_index) == 3) || (floor(image_index) == 6) image_speed = 0

	// how far we have to jump
	var _distance_to_go = point_distance(x,y,x_to,y_to)
	
	// begin landing end of the animation once we're nearly down
	if (_distance_to_go < 4) && (image_index < 6) image_speed = 1.0
	
	// move
	if (_distance_to_go > _spd)
	{
		dir = point_direction(x,y,x_to,y_to)
		xspd = lengthdir_x(_spd,dir)
		yspd = lengthdir_y(_spd,dir)
		if (xspd != 0) image_xscale = sign(xspd)
		
		// comit to move and stop moving if we hit a wall
		if (enemy_tile_collision() == true) 
		{
			x_to = x 
			y_to = y 
		}
	}
	else
	{
		x = x_to
		y = y_to
		if (floor(image_index) == 6)
		{
			state_target = ENEMY_STATE.CHASE
			state_wait_duration = 15
			state = ENEMY_STATE.WAIT
		}
	}

}


function slime_hurt()
{

	sprite_index = spr_hurt
	var _distance_to_go = point_distance(x,y,x_to,y_to)
	if (_distance_to_go > enemy_knockback_speed)
	{
		image_speed = 1.0	
		dir = point_direction(x,y,x_to,y_to)
		xspd = lengthdir_x(enemy_knockback_speed, dir)
		yspd = lengthdir_y(enemy_knockback_speed, dir)
		if (xspd != 0) image_xscale = -sign(xspd)
	
		// collide and move, if there is a collision, then stop knockback
		if (enemy_tile_collision())
		{
			x_to = x 
			y_to = y 
		}
	}
	else
	{
		x = x_to
		y = y_to
		if (state_previous != ENEMY_STATE.ATTACK) state = state_previous
		else state = ENEMY_STATE.CHASE // if aggro go back to chasing player!
	}
}

function slime_die()
{
	sprite_index = spr_die
	image_speed = 1.0
	var _distance_to_go = point_distance(x,y,x_to,y_to)
	if (_distance_to_go > enemy_knockback_speed)
	{
		dir = point_direction(x,y,x_to,y_to)
		xspd = lengthdir_x(enemy_knockback_speed,dir)
		yspd = lengthdir_y(enemy_knockback_speed,dir)
		if (xspd != 0) image_xscale = -sign(xspd)
		
		// colide and move
		enemy_tile_collision()
	}
	else // would overshoot
	{
		x = x_to
		y = y_to
	}
	
	// destroy instance on animation end
	if (image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number)
	{
		instance_destroy()	
	}
}
















