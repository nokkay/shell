/// @description Follows the player (for fun!!)
//  maybe reuse the code later for following entities


	// calculate the distance to the player
	var _dist_x = follow.x - draw_x
	var _dist_y = follow.y - draw_y
	var _distance = sqrt(_dist_x * _dist_x + _dist_y * _dist_y)
	
	// go towards player if out of radius
	if (_distance > follow_radius) 
	{
		// scale following speed exponentially the farther the follower is from the player
		var _exp_factor = 30
		follow_spd *= 1 + (_distance - follow_radius) / _exp_factor
		
		// calculate new draw pos
	    var angle = point_direction(draw_x, draw_y, follow.x, follow.y)
	    var target_draw_x = draw_x + lengthdir_x(follow_spd, angle)
	    var target_draw_y = draw_y + lengthdir_y(follow_spd, angle)
   
		// update pos
	    draw_x = target_draw_x
	    draw_y = target_draw_y
	}
	// reset speed 
	follow_spd = follow_spd_start


	// update sprite
	draw_sprite_ext
	(
		sprite_index, 
		image_index, 
		floor(draw_x), 
		floor(draw_y - z),
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha
	)
	
	// draw shadow
	draw_sprite_ext
	(
		spr_shadow,
		image_index,
		floor(draw_x),
		floor(draw_y),
		image_xscale * 0.5,
		image_yscale * 0.5,
		image_angle,
		image_blend,
		image_alpha * 0.5
	)