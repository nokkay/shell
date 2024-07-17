/// @desc Initialize & Globals

	randomize()

	global.game_paused = false
	global.text_spd = 0.75
	
	global.icamera = instance_create_layer(obj_player.x,obj_player.y,layer,obj_camera)

	room_goto(ROOM_START)