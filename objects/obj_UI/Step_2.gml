/// @description on end step event to ensure everything happens AFTER everything in step events have been processed, prevents inputs overflowing

// disable UI on title screen
if (room != rm_title) visible = true


if (global.game_paused)
{
	key_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")) 
	key_down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) 
	pause_option_selected += (key_down - key_up)
	if (pause_option_selected >= array_length(pause_option)) pause_option_selected = 0
	if (pause_option_selected < 0) pause_option_selected = array_length(pause_option) - 1
	
	key_activate = keyboard_check_pressed(vk_space)
	if (key_activate)
	{
		switch (pause_option_selected)
		{
			case 0: // continue
			{
				global.game_paused = false
				with (all)
				{
					game_paused_image_speed = image_speed
					image_speed = 0
				}
			}break;
			
			case 1: // save and quit to title screen
			{
				with (obj_game) instance_destroy() // kill evil persistant roach
				save_game()
				game_restart()
			}break;
			
			case 2: // save and quit to desktop
			{
				save_game()
				game_end()
			}break
		}
	}
}