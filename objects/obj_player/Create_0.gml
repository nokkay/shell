	
	state = player_state_free
	state_attack = attack_slash
	last_state = state
	hit_by_attack = -1
	
	collision_map = layer_tilemap_get_id(layer_get_id("Collision"))

	image_speed = 0
	xspd = 0
	yspd = 0
	walk_spd = 4
	slide_spd = 6
	slide_distance = 140 
	distance_bonk = 80
	distance_bonk_height = 24
	bonk_spd = 2
	z = 0
	invulnerable = 0
	flash = 0
	flash_shader = sh_white_flash
	animation_end_script = -1

// sprites
	spr_slide = spr_player_slide
	spr_walk = spr_player_walk
	spr_idle = spr_player_idle
	sprite_run = spr_player_run
	local_frame = 0
	
// room transitions
	if (global.target_x != -1)
	{
		x = global.target_x
		y = global.target_y
		direction = global.target_dir
	}