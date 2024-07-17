
	


// get input
	up_key = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
	down_key = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))
	accept_key = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter)
	exit_key = keyboard_check_pressed(vk_escape)
	
	
// escape to exit with delay 
	if exit_key && escape_enable
	{
		instance_destroy(pauser); instance_destroy()	
	}

	
// store number of options in current menu

	op_length = array_length(option[menu_level])
	

// move through the menu
	pos += down_key - up_key
	
// loop it
	if pos >= op_length {pos = 0}
	if pos < 0 {pos = op_length - 1}
	

	
// using the options
if accept_key
{
	var _sml = menu_level // start menu level
	
	switch(menu_level)
	{
		// pause menu
		case 0: 
			switch(pos)
			{
			// resume game
			case 0: instance_destroy(pauser); instance_destroy(); break;
			// settings
			case 1: 
				menu_level = 1; 
				// set pos back 
				if _sml != menu_level {pos = 0}
				break;
			// quit game
			case 2: game_end();	break;
			}
			
		// settings	
		case 1: 
			switch(pos)
			{
			// window size
			case 0:
				break
			// Full Screen
			case 1:
				if window_get_fullscreen(){window_set_fullscreen(false)}
				else {window_set_fullscreen(true)}
				break
			// brightness
			case 2:
				break
			// controls
			case 3: 
				break
			// back
			case 4: 
				menu_level = 0
				break
			}
	}
	

	
	// correct option length
	op_length = array_length(option[menu_level])
}

