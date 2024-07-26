
function player_state_act()
{
	// update sprite
	player_animate_sprite()
	
	if (animation_end)
	{
		state = player_state_free
		animation_end = false
		if (animation_end_script != -1)
		{
			script_execute(animation_end_script)	
			animation_end_script = -1
		}
	}
}