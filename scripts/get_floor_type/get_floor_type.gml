enum GROUND_TYPE
{
	EMPTY,
	GRASS,
	STONE
}

/// @desc Return what type of tile the caller is standing on
function get_floor_type()
{

	// get tile type
	var _map_id = layer_tilemap_get_id("Sounds")
	var _tile = tilemap_get_at_pixel(_map_id, x, y)
	
	//  bitwise operation to mask out the unnecessary bits
	var TILE_INDEX_MASK = 1048575 // 0x000FFFFF (which is 1048575 in decimal)
	var tile_index = _tile & TILE_INDEX_MASK 
	 
	if (_map_id == -1) show_debug_message("No Sound tileset found")
	else return tile_index
	
}
