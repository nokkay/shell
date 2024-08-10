
function player_state_dead()
{
	// change to death stats
	xspd = 0
	yspd = 0
	global.player_health = 0
	
	
	// if just arriving in this state
	if (sprite_index != spr_player_die) && (sprite_index != spr_player_dead)
	{
		// update the sprite
		sprite_index = spr_player_die
		image_index = 0
		image_speed = 0.7
	}
	
	// animation ending this frame?
	if (image_index + image_speed > image_number)
	{
		if (sprite_index == spr_player_die)
		{
			image_speed = max(0, image_speed-0.04)
			if (image_speed < 0.05)
			{
				image_index = 0
				sprite_index = spr_player_dead
				image_speed = 1.0
			}
		}
		else
		{
			image_speed = 0
			image_index = image_number - 1
			// reset spawn position
			if (instance_exists(obj_spawnpoint))
			{
				global.target_x = obj_spawnpoint.x
				global.target_y = obj_spawnpoint.y
			}
			else
			{
				global.target_x = -1 
				global.target_y = -1 
				show_debug_message("No spawnpoint found")	
			}
			room_transition(TRANS_TYPE.FADE, room)
		}
	}
}