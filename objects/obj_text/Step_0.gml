
	lerp_progress += (1 - lerp_progress) / 50 
	text_progress += global.text_spd
	
	x1 = lerp(x1,x1_target,lerp_progress)
	x2 = lerp(x2,x2_target,lerp_progress)
	
	// cycle through responses
	key_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))
	key_down = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))
	response_selected += (key_down - key_up)
	var _max = array_length(responses) - 1
	var _min = 0
	if (response_selected > _max) response_selected = _min
	if (response_selected < _min) response_selected = _max
	
	
	// end message
	if keyboard_check_pressed(vk_space)
	{
		var _message_length = string_length(_message)	
		if (text_progress >= _message_length) // whole message shown
		{
			if responses[0] != -1
			{
				// inputs choice from given responses and returns the npc response to your choice
				with (origin_instance) scr_dialogue_responses(other.response_scripts[other.response_selected])
			}
			
			
			instance_destroy()
			if instance_exists(obj_text_queued)
			{
				with (obj_text_queued) ticket--;	
			}
			else // last text object
			{
				with obj_player state = last_state	
			}
		}
		else if (text_progress > 2) // prevent unwanted presses with small delay
		{
			text_progress = _message_length // show entire message
		}
	}