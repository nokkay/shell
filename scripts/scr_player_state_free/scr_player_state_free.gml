
function scr_player_state_free()
{
	
	
// spd
	xspd = lengthdir_x(input_magnitude * walk_spd, input_direction)
	yspd = lengthdir_y(input_magnitude * walk_spd, input_direction)
	

// collision + move
	scr_player_collision()


// update sprite index
	var _old_spr = sprite_index
	if input_magnitude != 0 
	{
		direction = input_direction
		sprite_index = sprite_walk
	}else sprite_index = sprite_idle
	
	if (_old_spr != sprite_index) local_frame = 0
	
// update image index
	scr_player_animation();

// change state
	if activate_key
	{
		state = scr_player_state_slide
		move_distance_remaining = slide_distance
	}
}