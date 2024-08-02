 ///@desc Initialize & Globals, Creates Camera

	randomize()

	global.game_paused = false
	global.text_spd = 0.75
	global.target_room = -1
	global.target_x = -1
	global.target_y = -1
	global.target_dir = 0
	global.player_health_max = 3
	global.player_health = 2
	global.player_money = 0
	global.quest_status = ds_map_create()
	global.quest_status[? "the_hat_quest"] = 0
	
	global.iLifted = noone
	global.iCamera = instance_create_layer(PLAYER_START_X,PLAYER_START_Y,layer,obj_camera)
	global.iUI = instance_create_layer(0,0,layer,obj_UI)
	
	surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H)
	
	room_goto(ROOM_START)
