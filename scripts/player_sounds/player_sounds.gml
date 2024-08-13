
/// @desc Play player attack sound


function play_sound_attack()
{
	var _sound = -1

	
	switch(state_attack) // change sound based on attack type
	{
		case attack_slash: 
			_sound = snd_player_slash
		break
		
		default:
			show_debug_message("No Attack State found for player snd_attack")
		break
		
	}
	
	if (image_index % 4 == 2) // are we on an attack frame?
	{		
		play_sound(_sound, true, 0.25, false)

	}
}

function play_sound_walk()
{
	var _sound = -1
	var _ground = get_floor_type()
	
	// decide sound type based on ground
	switch (_ground)
	{
		case (GROUND_TYPE.GRASS): _sound = snd_walk_grass ;break;
		case (GROUND_TYPE.STONE): _sound = snd_walk_stone ;break;
		default: break;//show_debug_message($"No ground sound case found. Ground: {_ground}") ;break;
	}
	
	// only play on walking frames 0 and 2
	if ((_sound != -1) && (image_index % 4 == 0 || image_index % 4 == 2))
	{
		play_sound(_sound, true, 0.15, false)
	}
	
}