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
		case 1: new_textbox("kys"); break;
		case 2: new_textbox("tank u :3", 1, ["3:ye"]); break;
		case 3: new_textbox("ye"); break;
		case 4: new_textbox(":("); break;
		case 5: 
		{
			new_textbox("Thank you so much! I'll be awaiting your return eagerly!")
			global.quest_status[? "the_hat_quest"] = 1
		}break;
		case 6: new_textbox(":(") break;
		case 7: purchase_item(activate.item, activate.item_amount, activate.item_cost) break;
		default: show_debug_message("unexpected dialogue error! check your colons, breaks and in room instances!"); break;
	}
}