/// @description 

	// sprite of object to draw
	_draw_sprite = sprite_index
	
	// shadow
	if (entity_shadow) draw_sprite_ext(
		spr_shadow,
		image_index,
		floor(x),
		floor(y),
		// scale shadow appropriately to sprites size
		image_xscale * entity_shadow_scale_x,
		image_yscale * entity_shadow_scale_y,
		image_angle,
		image_blend,
		image_alpha
		)
	
	if (flash != 0)
	{
		shader_set(sh_white_flash)	
		shader_set_uniform_f(u_flash, flash) // u_flash is id of the float of flash 
	}

	if (entity_NPC)
	{
		entity_animate_sprite()
	}

	draw_sprite_ext(
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
