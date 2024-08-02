
	margin = 25
	space_between_lines = 56
	max_width = RESOLUTION_W - 100
	
	x1 = RESOLUTION_W/2
	y1 = RESOLUTION_H - RESOLUTION_H/3
	x2 = RESOLUTION_W/2
	y2 = RESOLUTION_H - margin

	x1_target = 0 + margin
	x2_target = RESOLUTION_W - margin

	lerp_progress = 0 // linear interpretation process, range [0,1]
	text_progress = 0 // amount of characters shown in message

	// background = 0 // caused a bug by resetting my fucking textbox background!!!!
	// review: 0/10 stars caused a 2 hour detour
	response_selected = 0

	