
function attack_slash()
{
	// attack just started
	if (sprite_index != spr_player_attack_slash)
	{
		// correct animation
		sprite_index = spr_player_attack_slash
		local_frame = 0
		image_index = 0
		
		// clear hit list
		if (!ds_exists(hit_by_attack, ds_type_list)) hit_by_attack = ds_list_create()
		ds_list_clear(hit_by_attack)
	}
 
	calc_attack(spr_player_attack_slash_hb)
	
	// update sprite
	player_animate_sprite()
	
	if animation_end 
	{
		state = player_state_free
		animation_end = false
	}
}