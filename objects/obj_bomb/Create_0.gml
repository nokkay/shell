
	event_inherited();

	flash_shader = sh_red_flash
	
	bomb_stage = 0
	bomb_tick_rate = [60,60,60,30,30,30,30,10,10,10,10,10,10,-1] // flashing 
	bomb_tick = bomb_tick_rate[0]
	
	// sound
	play_sound_struct({sound:snd_bomb_sizzling, pitch:1, loop:true},false,0,false)
	