 ///@desc Initialize & Globals, Creates Camera

	randomize()
	
	// saving
	global.game_save_slot = 0

	// game data
	global.game_paused = false
	global.text_spd = 0.75
	global.target_room = -1
	global.last_room = -1
	global.target_x = -1
	global.target_y = -1
	global.target_dir = 0
	
	// player stats
	global.player_x = PLAYER_START_X 
	global.player_y = PLAYER_START_Y
	global.player_dir = 3
	global.player_health_max = 3
	global.player_health = 2
	global.player_money = 50
	
	// items
	global.player_has_any_items = false
	global.player_equipped = ITEM.BOMB
	global.player_ammo = array_create(ITEM.TYPE_COUNT, -1)
	global.player_item_unlocked = array_create(ITEM.TYPE_COUNT, false)
	global.player_ammo[ITEM.BOMB] = 0
	global.player_ammo[ITEM.BOW] = 0
	
	// item enable
	global.player_has_any_items = true
	global.player_item_unlocked[ITEM.BOMB] = true
	global.player_item_unlocked[ITEM.BOW] = true
	global.player_ammo[ITEM.BOMB] = 20
	global.player_ammo[ITEM.BOW] = 20
	
	// quests
	global.quest_status = ds_map_create()
	global.quest_status[? "the_hat_quest"] = 0
	
	// input keys
	global.activate_key = vk_space
	
	// game managers
	global.iLifted = noone
	global.iCamera = instance_create_layer(PLAYER_START_X,PLAYER_START_Y,layer,obj_camera)
	global.iUI = instance_create_layer(0,0,layer,obj_UI)
	global.iMusic = instance_create_layer(0,0,layer,obj_music)
	
	surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H)
	
	room_goto(ROOM_START)
