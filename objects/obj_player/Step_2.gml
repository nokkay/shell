/// @description Sounds

	switch (sprite_index)
	{
		case spr_player_attack_slash: play_sound_attack();break;
		case spr_player_walk: play_sound_walk();break;
		case spr_player_hurt: play_sound_struct({sound:snd_metalpipe, pitch:1},true,0.1, false);break;
		case spr_player_slide: if (image_index % 2 <= 0.1) play_sound_struct({sound:snd_p, pitch:1},true,0.15,false);;break;
		case spr_player_emote: if (image_index % 4 < 0.1) play_sound_struct({sound:snd_rizz, pitch:1},false,0,true);break;
	}