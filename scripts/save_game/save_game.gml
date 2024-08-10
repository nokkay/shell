
function save_game()
{
	// create save map
	var _map = ds_map_create()
	
	// add data to save
	_map[? "room"] = room
	_map[? "player_x"] = global.player_x 
	_map[? "player_y"] = global.player_y
	_map[? "player_dir"] = global.player_dir
	_map[? "player_health"] = global.player_health
	_map[? "player_health_max"] = global.player_health_max
	_map[? "player_money"] = global.player_money
	_map[? "player_item_unlocked"] = global.player_item_unlocked
	_map[? "player_ammo"] = global.player_ammo
	_map[? "player_equipped"] = global.player_equipped
	_map[? "player_has_any_items"] = global.player_has_any_items

	
	
	// save quest data by copying the quest_status map to the save map, (the reference to a map is only the id and not the maps content)
	var _quest_map = ds_map_create()
	ds_map_copy(_quest_map, global.quest_status)
	ds_map_add_map(_map, "quest_status", _quest_map) // add quest map's data to _map
	
	// save all of this into a string
	var _string = json_encode(_map,true) // turns ds_map into string in json data format
	save_string_to_file("save" + string(global.game_save_slot) + ".nok", _string)
	show_debug_message(_string) // show data being saved
	
	// nuke the data >:)
	ds_map_destroy(_map) // destroys all other maps contained within this map in a cascading fashion
	show_debug_message("Game saved!")
}

function save_string_to_file(_filename, _string)
{
	// create a generic file to save data as a memory file buffer? 
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1) // create buffer
	buffer_write(_buffer, buffer_string, _string) // write information to buffer
	buffer_save(_buffer, _filename) // save to our file
	buffer_delete(_buffer) // get rid after we are done
	
	
}