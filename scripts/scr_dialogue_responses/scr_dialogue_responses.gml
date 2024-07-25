/// @desc dialogue reponses given a script_number
/// @arg script_number

// argument0 message from npc
// argument1 background of textbox
// argument2 choice in format of ["response_number: this is what you want to say"]

function scr_dialogue_responses()
{
	switch(argument0)
	{
		case 0: break;
		case 1: scr_new_textbox("i love men", 2); break;
		case 2: scr_new_textbox("how about yuri", 2, ["3:yes women", "4:i hate women"]); break;
		case 3: scr_new_textbox(":)",2); break;
		case 4: scr_new_textbox(":(",2); break;
		default: show_debug_message("unexpected dialogue error!"); break;
	}
}