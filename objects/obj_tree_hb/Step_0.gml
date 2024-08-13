

	if (instance_exists(obj_player))
	{
		if (position_meeting(obj_player.x, obj_player.y,id))
		{
			tree_id.image_alpha = max(tree_id.image_alpha - 0.04, 0.25)	
		
		}
		else
		{
			tree_id.image_alpha = min(tree_id.image_alpha + 0.04, 1.00)	
		}
	}