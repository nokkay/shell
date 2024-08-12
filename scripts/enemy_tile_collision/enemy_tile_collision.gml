
function enemy_tile_collision()
{
	var _collision = false
	var _entity_list = ds_list_create() // not the actual list but the memory pointer #################

	// horizontal tile collision
	if tilemap_get_at_pixel(global.collision_map, x + xspd, y)
	{
		// snap to apropriate edge 
		x -= x mod TILE_SIZE
		if (sign(xspd) == 1) x += TILE_SIZE - 1
		xspd = 0
		_collision = true
	}
	
	// horizontal entities ####################
	var _entity_count = instance_position_list(x+ xspd, y, p_entity,_entity_list, false)
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
	} //##############################################

	// horizontal move
	x += xspd
	
	// clear list between axis ##############################################
	ds_list_clear(_entity_list)
	
	// vertical tile collision
	if tilemap_get_at_pixel(global.collision_map, x, y + yspd)
	{
		// snap to apropriate edge 
		y -= y mod TILE_SIZE
		if (sign(yspd) == 1) y += TILE_SIZE - 1
		yspd = 0
		_collision = true
	}
	
	// vertical entities ##############################################
	var _entity_count = instance_position_list(x, y + yspd, p_entity,_entity_list, false)
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
	
	// vertical move 
	y += yspd
	
	ds_list_destroy(_entity_list) // ##############################################
	
	return _collision
}