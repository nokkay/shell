
	// update sprite
	draw_sprite_ext
	(
		sprite_index, 
		image_index, 
		floor(x), 
		floor(y - z),
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha
	)
	
	// draw shadow
	draw_sprite_ext
	(
		spr_shadow,
		image_index,
		floor(x),
		floor(y),
		image_xscale * 0.5,
		image_yscale * 0.5,
		image_angle,
		image_blend,
		image_alpha * 0.5
	)