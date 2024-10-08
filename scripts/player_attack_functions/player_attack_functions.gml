
	function attack_slash()
	{
		// attack just started
		if (sprite_index != spr_player_attack_slash)
		{
			// correct animation
			sprite_index = spr_player_attack_slash
			local_frame = 0
			image_index = 0
		
			// clear hit list
			if (!ds_exists(hit_by_attack, ds_type_list)) hit_by_attack = ds_list_create()
			ds_list_clear(hit_by_attack)
		}
		
		// spd
		xspd = lengthdir_x(input_magnitude * move_spd, input_direction)
		yspd = lengthdir_y(input_magnitude * move_spd, input_direction)
	
		// closer we are to the end of the animation the slower we are
		if (image_index % 4 > 1)
		{
			xspd *= 1 / (image_index % 4 + 1)
			yspd *= 1 / (image_index % 4 + 1)
		}
		
		// move 
		player_collision()	
		
 
		calc_attack(spr_player_attack_slash_hb)
	
		// update sprite
		player_animate_sprite()
	
		if animation_end 
		{
			state = player_state_free
			animation_end = false
		}
	}

	function attack_spin()
	{

	}

	function calc_attack(_hitbox_sprite)
	{
	
	///@arg hitbox_sprite
	// set mask index as HB
	// check for collision
	// set mask back to player sprite

		mask_index = _hitbox_sprite
		var hit_by_attack_now = ds_list_create() // create list to store ID's of entities being hit
		var hits = instance_place_list(x,y,p_entity,hit_by_attack_now,false)
	
		if hits > 0
		{
			for (var i = 0; i < hits; i++)
			{
				// if this instance has not yet been hit by this attack, hit it!
				var hit_ID = hit_by_attack_now[| i] // way to reference a DS list
				
				if (ds_list_find_index(hit_by_attack, hit_ID) == -1) // goes through ds_list and tries to find the hit_ID, see what HASNT been hit yet
				{
					ds_list_add(hit_by_attack, hit_ID)
					with(hit_ID)
					{
						if (object_is_ancestor(object_index, p_enemy)) // if object hit is enemy
						{
							hurt_enemy(id, 5, other.id, hit_ID.enemy_knockback) // pass id, do 5 damage, other.id passes player id, knockback
						}
						if (entity_hit_script != -1) script_execute(entity_hit_script)
						if (entity_hit_sound != -1) play_sound_struct({sound: entity_hit_sound, pitch:1},true,0.1,false)
					}
				}
			}
		}
	
		ds_list_destroy(hit_by_attack_now) // delete from memory
		mask_index = spr_player_attack_slash
	}

	function hurt_enemy(_enemy, _damage, _source, _knockback)
	{
		with (_enemy)
		{
			if (state != ENEMY_STATE.DIE)
			{
				enemy_hp -= _damage
				flash = 0.5 // make obj flash

				// hurt or dead?
				if (enemy_hp <= 0)
				{
					state = ENEMY_STATE.DIE
				}
				else
				{
					if (state != ENEMY_STATE.HURT) state_previous = state
					state = ENEMY_STATE.HURT
				}
				
				image_index = 0
				if (_knockback != 0)
				{
					var _knock_dir = point_direction(x,y,(_source).x,(_source).y)
					x_to = x - lengthdir_x(_knockback, _knock_dir)
					y_to = y - lengthdir_y(_knockback, _knock_dir)
					
				}
			}
		}
	}






















