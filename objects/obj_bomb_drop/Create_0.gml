
	event_inherited()
	
	// if item not unlocked, change to coin
	if (!global.player_item_unlocked[collect_script_arg[0]]) instance_change(obj_coin,true)

