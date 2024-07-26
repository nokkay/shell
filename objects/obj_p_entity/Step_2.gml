/// @description Entity Loop
// end step because carried object should follow player and update in same step

	if !global.game_paused
	{
		depth = -bbox_bottom	
		if (lifted) && (instance_exists(obj_player))
		{
			// execute after lifting animation
			if (obj_player.sprite_index != spr_player_lift)
			{
				// toggle off entity collision so irratic scary funky ew behavior does not occur (again) :(
				entity_collision = false
				x = obj_player.x
				y = obj_player.y
				z = sprite_height
				depth = obj_player.depth - 1
			}
		}
	}

	
	flash = max(flash-0.04, 0)