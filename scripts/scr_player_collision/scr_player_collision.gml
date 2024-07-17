
function scr_player_collision()
{

	var _collision = false
	
	// horizontal tiles
	if tilemap_get_at_pixel(collision_map, x + xspd, y)
	{
		// snap to apropriate edge 
		x -= x mod TILE_SIZE
		if (sign(xspd) == 1) x += TILE_SIZE - 1
		xspd = 0
		_collision = true
	}
	
	// horizontal move commit
	x += xspd
	
	// vertical tiles
	if tilemap_get_at_pixel(collision_map, x, y + yspd)
	{
		// snap to apropriate edge 
		y -= y mod TILE_SIZE
		if (sign(yspd) == 1) y += TILE_SIZE - 1
		yspd = 0
		_collision = true
	}
	
	// vertical move commit
	y += yspd
	
	
	return _collision
}