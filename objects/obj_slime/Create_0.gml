
	// Inherit the parent event
	event_inherited()

	state = ENEMY_STATE.WANDER

	// enemy sprites
	spr_move = spr_slime
	spr_attack = spr_slime_attack
	spr_hurt = spr_slime_hurt
	spr_die = spr_slime_die

	// ememy scripts
	enemy_script[ENEMY_STATE.WANDER] = slime_wander
	enemy_script[ENEMY_STATE.CHASE] = slime_chase
	enemy_script[ENEMY_STATE.ATTACK] = slime_attack
	enemy_script[ENEMY_STATE.HURT] = slime_hurt
	enemy_script[ENEMY_STATE.DIE] = slime_die
	
	// item drops
	entity_drop_list = entity_drop_items(DROP_TYPE.SLIME)



	// color
	hue_min = 45  // Yellow
	hue_max = 200 // Purple
	
	mapped_hue = map_value(x*y, 0, room_width* room_height, hue_min, hue_max) // based on location calculate the mapped color
	saturation = irandom_range(115, 135) 
	value = irandom_range(235, 255) 

	image_blend = make_color_hsv(mapped_hue, saturation, value)
	

