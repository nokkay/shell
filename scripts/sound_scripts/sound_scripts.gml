
/// @desc Return sound settings for a given sound
/// @arg _sound Sound to return struct settings for 

function return_sound_settings(_sound)
{
	var _sound_setting = -1
	
	// must include pitch setting so we can randomize it later
	switch (_sound)
	{
		case (snd_player_slash_hit):
	
		    _sound_setting = 
			{
		        sound: snd_player_slash_hit,
				priority:0,
				loop:false,
				pitch:1
		    }
			break
			
		case (snd_player_slash_whiff):
			_sound_setting = 
			{
				sound: snd_player_slash_whiff,
				priority:0,
				loop:false,
				pitch:1
			}
			break
		case (snd_walk_grass):
			_sound_setting = 
			{
				sound: snd_walk_grass,
				priority:0,
				loop:false,
				pitch:1
			}
			break
		case (snd_walk_stone):
			_sound_setting = 
			{
				sound: snd_walk_stone,
				priority:0,
				loop:false,
				pitch:1
			}
			break
	}
	return _sound_setting
}

/// @desc Play a sound given its name
/// @arg _sound Sound file 
/// @arg _randomize_pitch Adds randomness to pitch 
/// @arg _randomness Range of pitch randomness
/// @arg _stackable Is sound stackable

function play_sound(_sound, _randomize_pitch, _randomness, _stackable)
{
	var sound_settings = return_sound_settings(_sound)	
	
	if (!_stackable && audio_is_playing(sound_settings)) return // if audio is to be unique then check if it is already playing
	
	if (sound_settings && !audio_is_playing(sound_settings))
	{
		if (argument_count > 1) // randomize pitch
		{
			if (_randomize_pitch) sound_settings.pitch += random_range(-_randomness, _randomness)
		}
		audio_play_sound_ext(sound_settings)	
	}
}

/// @desc Play a sound given a struct
/// @arg _sound Sound struct
/// @arg _randomize_pitch Adds randomness to pitch 
/// @arg _randomness Range of pitch randomness
/// @arg _stackable Is sound stackable

function play_sound_struct(_sound, _randomize_pitch, _randomness, _stackable)
{
	if (!_stackable && audio_is_playing(_sound.sound)) return // if audio is to be unique then check if it is already playing
	
	if (argument_count > 1) // randomize pitch
	{
		if (_randomize_pitch) _sound.pitch += random_range(-_randomness, _randomness)
	}
	audio_play_sound_ext(_sound)	

}
