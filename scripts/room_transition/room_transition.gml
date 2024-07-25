/// @desc room_transition(type, target_room)
/// @arg type
/// @arg target_room

function room_transition()
{
	if (!instance_exists(obj_transition))
	{
		with (instance_create_depth(0,0,-9999,obj_transition))
		{
			type = argument[0]
			target = argument[1]
			
		}
	}
	else show_debug_message("Trying to transition while transition is happening!")
}