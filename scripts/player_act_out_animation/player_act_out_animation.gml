/// @desc player_act_out_animation(sprite, end_script)
/// @arg sprite
/// @arg end_script

// carry out an animation and optionally carry out a script when the animation ends


function player_act_out_animation(_sprite, _endScript = -1)
{
	state = player_state_act
	sprite_index = _sprite
	if (argument_count > 1) animation_end_script = _endScript
	local_frame = 0
	image_index = 0
	player_animate_sprite()
}