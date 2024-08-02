/// @desc turn entity towards player
/// @arg player's direction 


function entity_animate_sprite()
{
	
// update sprite

	var _dir = CARDINAL_DIR 
	var _total_frames = sprite_get_number(sprite_index) / 4
	image_index = local_frame + (_dir * _total_frames)
	local_frame += sprite_get_speed(sprite_index) / FRAME_RATE // animate by changing local_frame
	
// loop animation frames
	if local_frame >= _total_frames
	{
		animation_end = true
		local_frame -= _total_frames // reset to beginning of sprites animation
	}
	else animation_end = false
}