
function player_state_free()
{
	
	
// spd
	xspd = lengthdir_x(input_magnitude * walk_spd, input_direction)
	yspd = lengthdir_y(input_magnitude * walk_spd, input_direction)
	

// collision + move
	scr_player_collision()


// update sprite index
	var _old_spr = sprite_index
	if input_magnitude != 0 
	{
		direction = input_direction
		sprite_index = sprite_walk
	}else sprite_index = sprite_idle
	
	if (_old_spr != sprite_index) local_frame = 0
	
// update image index
	scr_player_animation();

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
		//2. if there is nothing, or there is something, but has no script --> roll!
		//3. otherwise, there is something and it has a script, activate!!
		//4. if thing activated is NPC, make it face towards us!!!
		
		var _activate_distance = 45
		var _activate_x = lengthdir_x( _activate_distance, direction) 
		var _activate_y = lengthdir_y( _activate_distance, direction)
		activate = instance_position(x+_activate_x,y+_activate_y, obj_p_entity)
		
		// 1.
		if (activate == noone or activate.entity_activate_script == -1) 
		{
			// 2.
			state = player_state_slide
			move_distance_remaining = slide_distance
		}
		else
		{
			// 3.
			scr_execute_array(activate.entity_activate_script, activate.entity_activate_args)
			
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