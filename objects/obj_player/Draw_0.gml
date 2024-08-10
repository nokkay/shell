

	draw_sprite(spr_shadow,0,floor(x),floor(y))

	// mod 8 sets up pattern (starting at 16) 0,7,6,5,4,3,2,1,0,7,6,5,4,3,2,1,0
	if (invulnerable != 0) && ((invulnerable mod 8 < 2) == 0) && (flash == 0)
	{
		// skips draw
	}
	else
	{
		if (flash != 0)
		{
			shader_set(flash_shader)
			u_flash = shader_get_uniform(flash_shader, "flash")
			shader_set_uniform_f(u_flash, flash)
		}
		
		
		draw_sprite_ext
		(
			sprite_index,
			image_index,
			floor(x),
			floor(y-z),
			image_xscale,
			image_yscale,
			image_angle,
			image_blend,
			image_alpha
		)
		
		if (shader_current() != -1) shader_reset()
	}
