
	event_inherited()
	
	// Intrinsic variables
	state = ENEMY_STATE.IDLE
	xspd = 0
	yspd = 0
	x_to = xstart
	y_to = ystart 
	dir = 0
	aggro_check = 0
	aggro_check_duration = 5 // check every so many frames
	state_target = state
	state_previous = state
	state_wait = 0
	state_wait_duration = 0
	
	// enemy stats
	time_passed = 0
	wait_duration = 60
	wait = 0
	
	// enemy sprites
	spr_move = spr_slime
	
	// enemy scripts
	enemy_script[ENEMY_STATE.IDLE] = -1
	enemy_script[ENEMY_STATE.WANDER] = -1
	enemy_script[ENEMY_STATE.CHASE] = -1
	enemy_script[ENEMY_STATE.ATTACK] = -1
	enemy_script[ENEMY_STATE.HURT] = -1
	enemy_script[ENEMY_STATE.DIE] = -1
	enemy_script[ENEMY_STATE.WAIT] = enemy_wait