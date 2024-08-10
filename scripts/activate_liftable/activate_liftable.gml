/// @arg id Pass id of instance to player

function activate_liftable(_id)
{
	if (global.iLifted == noone)
	{
		player_act_out_animation(spr_player_lift)
		
		spr_idle = spr_player_idle_carrying
		spr_walk = spr_player_walk_carrying
		
		global.iLifted = _id
		with (global.iLifted)
		{
			lifted = true
			persistent = true
		}
	}
}