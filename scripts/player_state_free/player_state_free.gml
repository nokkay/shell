
function player_state_free()
{
	
	
// spd
	xspd = lengthdir_x(input_magnitude * walk_spd, input_direction)
	yspd = lengthdir_y(input_magnitude * walk_spd, input_direction)
	

// collision + move
	player_collision()


// update sprite index
	var _old_spr = sprite_index
	if input_magnitude != 0 
	{
		direction = input_direction
		sprite_index = sprite_walk
	}else sprite_index = sprite_idle
	
	if (_old_spr != sprite_index) local_frame = 0
	
// update image index
	player_animate_sprite();

// attack key logic
	if key_attack
	{
		state = player_state_attack
		state_attack = attack_slash
	}
	
// emote key logic
	if key_emote
	{
		state = player_state_emote	
	}


// activate key logic
	if key_activate
	{
		//1. check for entity to activate
		//2. if there is nothing, or there is something, but has no script 
			// 2a. if we are carrying something, throw it!
			// 2b. otherwise, roll!
		//3. otherwise, there is something and it has a script, activate!!
		//4. if thing activated is NPC, make it face towards us!!!
		
		
		// 1.
		var _activate_distance = 45
		var _activate_x = x + lengthdir_x( _activate_distance, direction) 
		var _activate_y = y + lengthdir_y( _activate_distance, direction)
		var _activate_size = 8
		var _activate_list = ds_list_create() // stores list of entities in activate_size detection
		activate = noone
		var _entities_found = collision_rectangle_list // contains number of colisions found
		(
			_activate_x - _activate_size, // x1
			_activate_y - _activate_size, // y1
			_activate_x + _activate_size, // x2
			_activate_y + _activate_size, // y2
			p_entity,	// obj to check for
			false, // precise collisions (no)
			true, // check for object performing the check (no)
			_activate_list,	// ds list to store
			false // ordered (no)
		)
		
		// if the first instance we find is either our lifted entity or it has no script: try the next one
		while (_entities_found > 0)
		{	
			// contains id of instance
			var _check = _activate_list[| --_entities_found] // --entities_found is the amount found - 1 for correct indexing, works down the list
			if (_check != global.iLifted) && (_check.entity_activate_script != -1)
			{
				activate = _check // found activatable object
				break
			}
			
		}
		ds_list_destroy(_activate_list) // delete list from memory
		
		
		
		if (activate == noone or activate.entity_activate_script == -1) 
		{
			// 2. throw something if held
			if (global.iLifted != noone)
			{
				player_throw()	
			}
			else // otherwise, roll
			{			
				state = player_state_slide
				move_distance_remaining = slide_distance
			}
		}
		else
		{
			// 3.
			execute_array(activate.entity_activate_script, activate.entity_activate_args)
			
			// 4.
			if (activate.entity_NPC)
			{
				with activate
				{
					direction = point_direction(x,y,other.x,other.y)
					image_index = CARDINAL_DIR
				}
			}
		}
	}
}