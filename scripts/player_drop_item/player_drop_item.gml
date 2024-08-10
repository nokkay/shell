/// @desc Drop the item 

function player_drop_item()
{
	with (obj_player)
	{
		if (global.iLifted != noone)
		{
			global.iLifted = noone
			spr_idle = spr_player_idle
			spr_walk = spr_player_walk
		}
	}
}