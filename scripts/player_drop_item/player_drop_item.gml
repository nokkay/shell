
function player_drop_item()
{
	with (obj_player)
	{
		global.iLifted = noone
		spr_idle = spr_player_idle
		spr_walk = spr_player_walk
	}
}