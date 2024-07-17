/// @description Pause the Game

	if keyboard_check_pressed(vk_escape)
	{
		global.game_paused = !global.game_paused
		
		if global.game_paused
		{
			with all
			{
				game_paused_image_spd = image_speed // save all instances animation speed
				image_speed = 0
			}
		}
		else
		{
			with all{
				image_speed = game_paused_image_spd	
			}
		}
	}