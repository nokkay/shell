/// @description 

	bounce = 0
	bounce_decay = 0.6
	deteriorate = 0
	z = 0
	spd = 0
	fric = 0
	image_speed = 0 
	image_index = irandom(image_number-1)
	collision_map = layer_tilemap_get_id(layer_get_id("Collision"))
	image_xscale = choose(-1,1)
	image_yscale = choose(-1,1)
	

