
if (!global.game_paused)
{
	image_speed = 1.0
	// hit things
	if (image_index < 4)
	{
		var _entity_list = ds_list_create()
		var _entity_count = instance_place_list(x, y, p_entity, _entity_list, false)
		var _entity = noone
		while (_entity_count > 0)
		{
			_entity = _entity_list[| 0]
			if (ds_list_find_index(collision_history, _entity) == -1) // using collision history check if object has been hit alr
			{
				with (_entity)
				{
					if (object_is_ancestor(object_index,p_enemy))
					{
						hurt_enemy(id,25,other.id,40)	
					}
					else
					{
						if (entity_hit_script != -1) script_execute(entity_hit_script)	
					}
				}
				ds_list_add(collision_history, _entity)
			}
			ds_list_delete(_entity_list, 0)
			_entity_count--
		}	
		ds_list_destroy(_entity_list)
	}
}
else
{
	// dont animate while paused
	image_speed = 0.0		
}










	
