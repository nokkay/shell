/// @desc dialogue reponses given a script_number
/// @arg script_number

// argument0 message from npc
// argument1 background of textbox
// argument2 choice in format of ["response_number: this is what you want to say"]

function dialogue_responses()
{
	switch(argument0)
	{
		case 0: break;
		case 1: new_textbox("response to choice 1"); break;
		case 2: new_textbox("response to choice 2", 1, ["3:choice 3", "4:choice 4"]); break;
		case 3: new_textbox("response to choice 3 :)"); break;
		case 4: new_textbox("response to choice 4 :("); break;
		default: show_debug_message("unexpected dialogue error!"); break;
	}
}