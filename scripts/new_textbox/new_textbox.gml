///@desc Creates a new textbox
///@arg message 
///@arg background 
///@arg [responses]
///@arg portrait

function new_textbox()
{
	
	
	var _obj
	if (instance_exists(obj_text)) _obj = obj_text_queued; else _obj = obj_text;
	with (instance_create_layer(0,0,"Instances", _obj))
	{
		_message = argument[0]
		
		if (instance_exists(other)) origin_instance = other.id; else origin_instance = noone;
		if (argument_count > 1) background = argument[1]; else background = 1;
		if (argument_count > 2)
		{
			// populate the responses array
			var _array = argument[2];
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
		
		// character portrait
		if (argument_count > 3) _portrait = argument[3]
		else _portrait = -1
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






