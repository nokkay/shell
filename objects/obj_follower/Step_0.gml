/// @desc Follows

	depth = -bbox_bottom

	// increment timer
	if (toast_tick > 0)
	{
		toast_tick--
	}
	if (toast_tick <= 0 && !visible)
	{
		visible = true
		sprite_index = spr_fairy_pop_in
	}

if (instance_exists(follow))
{
	// calculate the distance to the player
	var _dist_x = follow.x - x
	var _dist_y = follow.y - y
	var _distance = sqrt(_dist_x * _dist_x + _dist_y * _dist_y)
	
	
	// go towards player if out of radius
	if (_distance > follow_radius) 
	{
		var angle = point_direction(x, y, follow.x, follow.y)
		follow_spd *= 1 + (_distance - follow_radius) / _exp_factor
	    _x_to = x + lengthdir_x(follow_spd, angle)
	    _y_to = y + lengthdir_y(follow_spd, angle)
   
	}
	// push away from player if too close
	if (_distance < push_radius)
	{
		var angle = point_direction(follow.x, follow.y, x, y) // inverse force
		follow_spd *= 1 + (push_radius -_distance) / _exp_factor
		_x_to = x + lengthdir_x(follow_spd, angle)
		_y_to = y + lengthdir_y(follow_spd, angle)
	}
	
	// reset speed 
	follow_spd = follow_spd_start
	
	// collisions dim alpha
	if(entity_follow_collision(_x_to,_y_to) && image_alpha > 0.25)
	{
		image_alpha -= 0.05	
	}
	else if (image_alpha < 1)
	{
		image_alpha +=	0.05
	}


	// move commits
	x = _x_to
	y = _y_to

}