
	if (!key_pressed)
	{
		title_visible = min(1, title_visible + 0.01)
	}
	else
	{
		title_visible = max(0,title_visible - 0.01)	
		slots_visible = min(1, slots_visible + 0.01)
	}
	
	// move up
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) 
	{
		slot_selected -= 1
		if (slot_selected < 0) slot_selected = 2
	}
	// move down
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) 
	{
		slot_selected += 1
		if (slot_selected > 2) slot_selected = 0
	}
	// select
	if ((keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))) && key_pressed && (!loading_started)
	{
		global.game_save_slot = slot_selected
		if (!load_game(global.game_save_slot))
		{
			room_transition(TRANS_TYPE.FADE, rm_woods, room)
		}
		loading_started = true
	}

	
	
	if (keyboard_check_pressed(vk_anykey)) key_pressed = true