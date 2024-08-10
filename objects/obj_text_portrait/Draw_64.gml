
if (!global.game_paused)
{
	// check if textbox exists
	if (!instance_exists(obj_text)) instance_destroy()
	
	// fade in 
	if (alpha < 1)
	{
		alpha += fade
	}
	
	// draw the sprite
	draw_sprite_ext
	(
	sprite_index,
	0,
	x,
	y,
	image_xscale,
	image_yscale,
	0,
	c_white,
	alpha
	)

}