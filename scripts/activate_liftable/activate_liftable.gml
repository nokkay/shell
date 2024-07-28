/// @ arg id

function activate_liftable(_id)
{
	if (global.iLifted == noone)
	{
		player_act_out_animation(spr_player_lift)
		global.iLifted = _id
		with (global.iLifted)
		{
			lifted = true
			persistent = true
		}
	}
}