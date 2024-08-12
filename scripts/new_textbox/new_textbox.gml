/// @desc Creates a new textbox
/// @arg message 0
/// @arg background 1
/// @arg id 2
/// @arg subimage 3
/// @arg [responses] 4


function new_textbox()
{
	
	
	var _obj
	if (instance_exists(obj_text)) _obj = obj_text_queued; else _obj = obj_text;
	with (instance_create_layer(0,0,"Instances", _obj))
	{
		_message = argument[0] // message
		
		if (instance_exists(other)) origin_instance = other.id; else origin_instance = noone;
		if (argument_count > 1) background = argument[1]; else background = 1;
		// portrait
		if (argument_count > 2) NPC_id = argument[2]; else NPC_id = -1 // portrait
		if (argument_count > 3) subimage = argument[3]; else subimage = 0 // subimage
		// responses
		if (argument_count > 4)
		{
			// populate the responses array
			var _array = argument[4];
			for(var _i=0; _i<array_length(_array);_i++)
			{
				responses[_i]=_array[_i];
			}
			
			// trim markers from responses
			for (var i = 0; i < array_length(responses);i++)
			{
				var _marker_pos = string_pos(":",responses[i])
				response_scripts[i] = string_copy(responses[i],1,_marker_pos-1)
					try // tries to catch formatting errors, for instance if you dont put a reponse script number in ur response
					{
						response_scripts[i] = real(response_scripts[i])
					}
					catch(e)
					{
					    show_debug_message("Dialogue reponse error, check that a script response number is provided ex: '1: this is a response to the first choice'")
					}
				responses[i] = string_delete(responses[i],1,_marker_pos)
			}
		}
		else
		{
			responses = [-1]
			response_scripts = [-1]
		}
		
	}
	
	with obj_player
	{
		if state != player_state_locked
		{
			last_state = state	
			state = player_state_locked
		}
	}
}






