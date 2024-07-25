/// @description 

if (!global.game_paused)
{
	
	// bounce
	if (bounce_count != 0)
	{
		bounce += (pi * bounce_spd)	
		// reset bounce to beginning of sin wave
		if (bounce > pi)
		{
			bounce -= pi	
			bounce_height *= bounce_decay
			bounce_count--
		}
		z = (sin(bounce)) * bounce_height
	}
	else z = 0
	
	// deteriorate
	deteriorate++
	if (deteriorate > deteriorate_after)
	{
		image_alpha -= 1/deteriorate_time
		if (image_alpha <= 0) instance_destroy()
	}
	
	// friction
	fric = 0.05
	if (z==0) fric = 0.10 // once hitting the ground, frictino increases

	// move
	x += lengthdir_x(spd,direction)
	y += lengthdir_y(spd,direction)
	
	
	// collision
	if (tilemap_get_at_pixel(collision_map,x,y) > 0) spd = 0
	spd = max(spd-fric,0) // apply the friction
}




























