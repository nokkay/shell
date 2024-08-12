/// @description Sounds

	switch (sprite_index)
	{
		case spr_player_attack_slash: play_sound_attack();break;
		case spr_player_walk: play_sound_walk();break;
		case spr_player_hurt: play_sound_struct({sound:snd_metalpipe},false,0);break;
		case spr_player_slide: if (image_index % 4 <= 0.1) play_sound_struct({sound:snd_p},false,0);break;
	}