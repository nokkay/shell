/// @desc Inputs + state machine

// inputs
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
	key_up = keyboard_check(vk_up) or keyboard_check(ord("W"))
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"))
	key_down = keyboard_check(vk_down) or keyboard_check(ord("S"))
	key_run = keyboard_check(vk_control)
	key_roll = keyboard_check_pressed(vk_shift)
	key_activate = keyboard_check_pressed(vk_space)
	key_attack = keyboard_check_pressed(ord("F")) or mouse_check_button_pressed(mb_left)
	key_item = keyboard_check_pressed(ord("E"))
	key_item_select_up = keyboard_check_pressed(ord("Q"))
	//key_item_select_down = keyboard_check_pressed(ord("T")) 
	key_emote = keyboard_check_pressed(ord("Z"))
	

	
	input_direction = point_direction(0,0, key_right - key_left, key_down-key_up)
	input_magnitude = (key_right - key_left != 0) or (key_down - key_up != 0)
	
	
	if (!global.game_paused)
	{
		script_execute(state)
		invulnerable = max(invulnerable-1,0)
		flash = max(flash-0.05,0)
	}
	
	// update global save stuff
	global.player_x = x 
	global.player_y = y 
	global.player_dir = direction

	depth = -y 
