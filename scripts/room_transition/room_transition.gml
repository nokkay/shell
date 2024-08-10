/// @desc room_transition(type, target_room)
/// @arg type Type of room transition
/// @arg target_room Room to go to
/// @arg the room we are coming from

function room_transition()
{
	if (!instance_exists(obj_transition))
	{
		with (instance_create_depth(0,0,-9999,obj_transition))
		{
			type = argument[0]
			target = argument[1]
			global.last_room = argument[2]
		}
	}
	else show_debug_message("Trying to transition while transition is happening!")
}