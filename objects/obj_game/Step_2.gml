/// @description Pause the Game + track player pos


	if (keyboard_check_pressed(vk_escape) && (!instance_exists(obj_transition)) && (obj_UI.visible == true))
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
			with all
			{
				image_speed = game_paused_image_spd	
			}
		}
	}