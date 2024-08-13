/// @description Drop fragments and items

	// sound
	if (entity_destroy_sound != -1) play_sound_struct({sound:entity_destroy_sound, pitch:1},true,0.1,true)

	if entity_fragment_count > 0
	{
		fragment_array = array_create(entity_fragment_count, entity_fragment)	
		drop_items(x,y,fragment_array,1)
	}
	
	if (entity_drop_list != -1)
	{
		drop_items(x,y,entity_drop_list,entity_drop_spd_multiplier)	
	}