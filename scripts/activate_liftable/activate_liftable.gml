/// @ arg id

function activate_liftable(_id)
{
	if (global.ilifted == noone)
	{
		player_act_out_animation(spr_player_lift)
		global.ilifted = _id
		with (global.ilifted)
		{
			lifted = true
			persistent = true
		}
	}
}