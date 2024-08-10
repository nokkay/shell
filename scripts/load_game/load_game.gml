
function load_game(_slot)
{
	global.game_save_slot = _slot
	var _file = "save" + string(global.game_save_slot) + ".nok"
	if (file_exists(_file))
	{
		// load the game data
		var _data = load_json_from_file(_file)
		
		// room
		room_transition(TRANS_TYPE.FADE, _data[? "room"], room)
		
		// global variables
		global.target_x = _data[? "player_x"]
		global.target_y = _data[? "player_y"]
		global.target_dir = _data[? "player_dir"]
		global.player_health = _data[? "player_health"]
		global.player_health_max = _data[? "player_health_max"]
		global.player_money = _data[? "player_money"]
		global.player_item_unlocked = _data[? "player_item_unlocked"]
		global.player_ammo = _data[? "player_ammo"]
		global.player_equipped = _data[? "player_equipped"]
		global.player_has_any_items = _data[? "player_has_any_items"]

		
		// lists to arrays
		// json_decode turns everything into ds_maps and ds_lists, therefore arrays will return as dslists
		for (var i = 0; i < ITEM.TYPE_COUNT; i++)
		{
			global.player_item_unlocked[i] = _data[? "player_item_unlocked"][| i] // entry in ds list
			global.player_ammo[i] = _data[? "player_ammo"][| i]
		}
		
		// quest dsmap data
		ds_map_copy(global.quest_status, _data[? "quest_status"])
		
		
		// nuke it !!! also destroys all nested ds lists and maps
		ds_map_destroy(_data)
	
		return true
	}
	else
	{
		show_debug_message("No save in this slot :(")
		return false
	}
}

function load_json_from_file(_filename)
{
	// load json from file, turn back into dsmap, take info from dsmap and load into our game
	
	var _buffer = buffer_load(_filename) // loads save file content into a buffer 
	var _string = buffer_read(_buffer, buffer_string) // read memory created in buffer by providing id of the buffer, take all data and read it as a string
	buffer_delete(_buffer) // get rid of it!!
	var _json = json_decode(_string) // decode json to dsmap
	return _json

}