
function scr_player_state_slide()
{
	xspd = lengthdir_x(slide_spd, direction)
	yspd = lengthdir_y(slide_spd, direction)
	
	move_distance_remaining = max(0, move_distance_remaining - slide_spd)
	var _collided = scr_player_collision()
	
	// update sprite
	sprite_index = sprite_slide
	var _total_frames = sprite_get_number(sprite_index)/4 // how many frames in a direction
	image_index = (CARDINAL_DIR * _total_frames) + min((1 - (move_distance_remaining/slide_distance)) * _total_frames, _total_frames - 1)
	
	// change state
	if move_distance_remaining <= 0
	{
		state = scr_player_state_free	
	}
	
	if _collided
	{
		state = scr_player_state_free
		scr_screen_shake()
	}
}