/// @description Toggle Music

	var _music = snd_evil_mossball

	// if it is paused, resume the music
	if (audio_is_paused(_music)) 
	{
		audio_resume_sound(_music)	
	}
	else // if it is not paused, then pause
	{
		audio_pause_sound(_music)	
	}
	