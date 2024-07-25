
function player_state_emote()
{
	// check if emote has started
	if (sprite_index != spr_player_emote)
	{
		sprite_index = spr_player_emote
		local_frame = 0
		image_index = 0
	}
	
	// update sprite
	player_animate_sprite()
	
	if animation_end 
	{
		state = player_state_free
		animation_end = false
	}
}