

	if (!instance_exists(obj_text_queued)) first_text = true
	else first_text = false

	// textbox size
	margin = 24
	space_between_lines = 48
	max_width = RESOLUTION_W - 100
	
	x1_target = 0 + margin
	x2_target = RESOLUTION_W - margin
	
	// if text is queued, dont 'animate'
	if (first_text)
	{
		x1 = RESOLUTION_W/2 
		y1 = RESOLUTION_H - RESOLUTION_H/3 
		x2 = RESOLUTION_W/2 
		y2 = RESOLUTION_H - margin 
	}
	else
	{
		x1 = x1_target 
		y1 = RESOLUTION_H - RESOLUTION_H/3 
		x2 = x2_target 
		y2 = RESOLUTION_H - margin 
	}
	

	lerp_progress = 0 // linear interpretation process, range [0,1]
	text_progress = 0 // amount of characters shown in message

	// background = 0 // caused a bug by resetting my fucking textbox background!!!!
	// review: 0/10 stars caused a 2 hour detour
	response_selected = 0
	
	// portrait
	show_portrait = false
	if (!instance_exists(obj_text_queued)) alpha = 0.0; else alpha = 1.0 // only fade in on first time
	fade = 0.05

	