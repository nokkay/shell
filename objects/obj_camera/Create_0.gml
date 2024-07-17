 /// @description Set up camera

	cam = view_camera[0]
	follow = obj_player
	view_width_half = camera_get_view_width(cam) * 0.5
	view_height_half = camera_get_view_height(cam) * 0.5
	x_to = xstart
	y_to = ystart
	
	smoothing = 5
	shake_length = 0
	shake_mag = 0
	shake_remain = 0
	magnitude = 3
	frames = 30