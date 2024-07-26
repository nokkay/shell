
function player_collision()
{

	var _collision = false
	var _entity_list = ds_list_create() // not the actual list but the memory opinter
	
	// horizontal tiles
	if tilemap_get_at_pixel(collision_map, x + xspd, y)
	{
		// snap to apropriate edge 
		x -= x mod TILE_SIZE
		if (sign(xspd) == 1) x += TILE_SIZE - 1
		xspd = 0
		_collision = true
	}
	
	// horizontal entities
	var _entity_count = instance_position_list(x+ xspd, y, obj_p_entity,_entity_list, false)
	var _snap_x
	
	while(_entity_count > 0)
	{
		var _entity_check = _entity_list[|0]	
		if (_entity_check.entity_collision == true)
		{
			// move as close as we can ♡	
			if (sign(xspd) == -1) _snap_x = _entity_check.bbox_right+1
			else _snap_x = _entity_check.bbox_left-1
			x = _snap_x
			xspd = 0
			_collision = true
			_entity_count = 0
		}
		ds_list_delete(_entity_list,0)
		_entity_count--
	}

	// horizontal move commit
	x += xspd
	breakpoint = 10
	
	// clear list between axis
	ds_list_clear(_entity_list)
	
	// vertical tiles
	if tilemap_get_at_pixel(collision_map, x, y + yspd)
	{
		// snap to apropriate edge 
		y -= y mod TILE_SIZE
		if (sign(yspd) == 1) y += TILE_SIZE - 1
		yspd = 0
		_collision = true
	}
	
	// vertical entities
	var _entity_count = instance_position_list(x, y + yspd, obj_p_entity,_entity_list, false)
	var _snap_y
	
	while(_entity_count > 0)
	{
		var _entity_check = _entity_list[|0]	
		if (_entity_check.entity_collision == true)
		{
			// move as close as we can ♡	
			if (sign(yspd) == -1) _snap_y = _entity_check.bbox_bottom+1
			else _snap_y = _entity_check.bbox_top-1
			y = _snap_y
			yspd = 0
			_collision = true
			_entity_count = 0
		}
		ds_list_delete(_entity_list,0)
		_entity_count--
	}
	
	// vertical move commit
	y += yspd
	
	ds_list_destroy(_entity_list)
	
	return _collision
}