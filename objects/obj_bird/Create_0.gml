
	// Inherit the parent event
	event_inherited();

	state = ENEMY_STATE.WANDER

	// enemy sprites
	spr_move = spr_bluejay
	spr_attack = spr_bluejay
	spr_hurt = spr_bluejay_hurt
	spr_die = spr_bluejay_die

	// ememy scripts
	enemy_script[ENEMY_STATE.WANDER] = bird_wander
	enemy_script[ENEMY_STATE.CHASE] = bird_chase
	enemy_script[ENEMY_STATE.ATTACK] = -1
	enemy_script[ENEMY_STATE.HURT] = slime_hurt // generic scripts, move + rename later !
	enemy_script[ENEMY_STATE.DIE] = slime_die
	
	// item drops
	entity_drop_list = entity_drop_items(DROP_TYPE.SLIME)