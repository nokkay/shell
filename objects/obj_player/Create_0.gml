	
	state = scr_player_state_free
	
	collision_map = layer_tilemap_get_id(layer_get_id("collision"))

	image_speed = 0
	xspd = 0
	yspd = 0
	walk_spd = 2
	slide_spd = 3
	slide_distance = 72

	

	
// sprites
	sprite_slide = spr_player_slide
	sprite_walk = spr_player_walk
	sprite_idle = spr_player_idle
	sprite_run = spr_player_run
	local_frame = 0