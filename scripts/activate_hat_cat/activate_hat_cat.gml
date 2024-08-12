
function activate_hat_cat()
{
	var _npc_id = argument0
	var _has_hat = (global.iLifted != noone) && (global.iLifted.object_index == obj_hat)
	switch (global.quest_status[? "the_hat_quest"])
	{
		case 0: // not started
		{
			if (_has_hat) // player might have brought hat back anyways
			{	// complete quest	
				new_textbox("Woah! That hat you're holding, thats the hat i've been searching for!",1,_npc_id)
				new_textbox("Thank you so much for uniting me with my precious hat!",1,_npc_id)
				global.quest_status[? "the_hat_quest"] = 2 // complete quest
				with (obj_bucci) sprite_index = spr_bucci_hatted
				with (obj_hat) instance_destroy()
				player_drop_item()
			}
			else // offer quest	
			{
				
				new_textbox("Hey! You there! Could you help me?",1,_npc_id)
				new_textbox("I lost my favorite hat when it blew into a nearby cave...",1,_npc_id)
				new_textbox("I would fetch it myself but I keep hearing these terrible sounds from within!",1,_npc_id)
				new_textbox("Could you help me find my missing hat?",1,_npc_id,-1,
				["5:Of course!","6:This task is beneath me"])
			}
		} break
		
		case 1: // quest in progress
		{
			if (_has_hat) // complete quest
			{
				new_textbox("Woah! You found it!",1,_npc_id)
				new_textbox("Thank you so much for finding my precious hat!",1,_npc_id)
				global.quest_status[? "the_hat_quest"] = 2 // complete quest
				with (obj_bucci) sprite_index = spr_bucci_hatted
				with (obj_hat) instance_destroy()
				player_drop_item()
			}
			else // clue reminder
			{
				new_textbox("I think my hat blew downwind towards the cave just northwest of here.",1,_npc_id)
				new_textbox("Be careful!",1,_npc_id)			
			}
		} break
		
		case 2: // quest already completed
		{
				new_textbox("Thanks again!",1,_npc_id)
		} break
	}
}