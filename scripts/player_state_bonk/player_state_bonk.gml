
function player_state_bonk()
{
	xspd = lengthdir_x(bonk_spd, direction-180)
	yspd = lengthdir_y(bonk_spd, direction-180)
	
	move_distance_remaining = max(0, move_distance_remaining - slide_spd)
	var _collided = player_collision()
	
	// update sprite
	sprite_index = spr_player_hurt 
	image_index = CARDINAL_DIR - 2
	
	// change 'height'
	z = sin((move_distance_remaining/distance_bonk) * pi) * distance_bonk_height
	

	// change state
	if move_distance_remaining <= 0
	{
		state = player_state_free	
	}
}




	