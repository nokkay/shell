/// @description Cause a room transition


var activate_key = keyboard_check_pressed(global.activate_key)

if (!need_activate or activate_key)
{
	
	if (instance_exists(obj_player)) && (position_meeting(obj_player.x,obj_player.y,id))
	{
			if (!instance_exists(obj_transition)) && (obj_player.state != player_state_dead)
			{
				global.target_room = target_room
	 			global.target_x = target_x
				global.target_y = target_y
				global.target_dir = obj_player.direction	
				
				// activate sound 
				if (activate_sound != -1) play_sound_struct({sound:activate_sound,pitch:1},true,.1,false)
			
				// room transition 
				with (obj_player) state = player_state_transition 
				room_transition(transition_type, target_room, room)			
				instance_destroy()
			}
	}
}



















