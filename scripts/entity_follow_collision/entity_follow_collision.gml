/// @desc checks collisions where a follower obj is going to be
/// @arg _x_to X to test for collisions
/// @arg _y_to Y to test for collisions

function entity_follow_collision(_x,_y)
{
	var _collision = false

	// horizontal tile collision
	if tilemap_get_at_pixel(global.collision_map, _x, _y)
	{
		_collision = true
	}
	
	// vertical tile collision
	if tilemap_get_at_pixel(global.collision_map, _x, _y)
	{
		_collision = true
	}

	
	return _collision
}