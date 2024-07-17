
// inputs
	right_key = keyboard_check(vk_right) or keyboard_check(ord("D"))
	up_key = keyboard_check(vk_up) or keyboard_check(ord("W"))
	left_key = keyboard_check(vk_left) or keyboard_check(ord("A"))
	down_key = keyboard_check(vk_down) or keyboard_check(ord("S"))
	activate_key = keyboard_check_pressed(vk_space)
	attack_key = keyboard_check_pressed(vk_shift)
	item_key = keyboard_check_pressed(vk_control)

	
	input_direction = point_direction(0,0, right_key - left_key, down_key-up_key)
	input_magnitude = (right_key - left_key != 0) or (down_key - up_key != 0)
	
	
	if (!global.game_paused) script_execute(state)


