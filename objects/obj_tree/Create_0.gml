
	event_inherited()
	
	// fade_on_touch param will be the sprite we want the collision detection for
	if (fade_on_touch != -1)
	{
		with (instance_create_layer(x,y,"Instances",obj_tree_hb))
		{
			visible = false
			sprite_index = other.fade_on_touch
			tree_id = other.id
			image_alpha = 1.0
			image_xscale = other.image_xscale
			image_yscale = other.image_yscale
		}
	}

