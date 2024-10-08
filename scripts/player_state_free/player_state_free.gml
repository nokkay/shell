
function player_state_free()
{
	

	// spd + direction
	xspd = lengthdir_x(input_magnitude * move_spd, input_direction)
	yspd = lengthdir_y(input_magnitude * move_spd, input_direction)
		
	// collide 
	player_collision()	

// update sprite index
	var _old_spr = sprite_index
	if input_magnitude != 0 
	{
		direction = input_direction
		sprite_index = spr_walk
	}else sprite_index = spr_idle
	// run key logic
	if (key_run)
	{
		sprite_index = sprite_run
		move_spd = run_spd
	}
	else move_spd = walk_spd
	
	if (_old_spr != sprite_index) local_frame = 0
	
// update image index
	player_animate_sprite()

// attack key logic
	if key_attack && !global.iLifted
	{
		state = player_state_attack
		state_attack = attack_slash
	}
	
// emote key logic
	if key_emote
	{
		state = player_state_emote	
	}
	
	
// roll key logic

	if key_roll
	{
		state = player_state_slide
		move_distance_remaining = slide_distance	
	}
	


// activate key logic
	if key_activate
	{
		//1. check for entity to activate
		//2. if there is nothing, or there is something, but has no script 
			// 2a. if we are carrying something, throw it!
		//3. otherwise, there is something and it has a script, activate!!
		//4. if thing activated is NPC, make it face towards us!!!
		
		
		// 1.
		var _activate_distance = 45
		var _activate_x = x + lengthdir_x( _activate_distance, direction) 
		var _activate_y = y + lengthdir_y( _activate_distance, direction)
		var _activate_size = 16
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
	
	// use items
	if (key_item) && (!key_activate) && (global.player_has_any_items) && (global.player_equipped != ITEM.NONE)
	{
		switch (global.player_equipped)
		{
			case ITEM.BOMB: use_item_bomb() ; break;
			case ITEM.BOW: use_item_bow() ; break;
			case ITEM.HOOK: use_item_hook(); break;
			default: break;
		}
	} 
	
	// cycle items
	if (global.player_has_any_items)
	{
		var _cycle_dir = key_item_select_up// - key_item_select_down	
		if (_cycle_dir != 0)
		{
			do
			{
				global.player_equipped += _cycle_dir
				if (global.player_equipped < 1) global.player_equipped = ITEM.TYPE_COUNT - 1 // loop under to top
				if (global.player_equipped >= ITEM.TYPE_COUNT) global.player_equipped = 1 // look over to under
			}
			until (global.player_item_unlocked[global.player_equipped]) // cycle until item is one that is unlocked
		}
	}
}






















