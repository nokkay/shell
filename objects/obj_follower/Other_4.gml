/// @description Update Position

	// reset timer on room switch, makes sprite POP onto screen after a while
	visible = false
	toast_tick = toast_time
	
	if (global.last_room != rm_title && global.target_x != -1)
	{
		x = global.target_x
		y = global.target_y
	}