
function player_throw()
{
	with (global.iLifted)
	{
		lifted = false
		persistent = false
		thrown = true
		z = CARRY_HEIGHT
		throw_peak_height = z + 10
		throw_dist = entity_throw_dist
		throw_dist_travelled = 0
		throw_start_percent = (CARRY_HEIGHT/throw_peak_height) * 0.5
		throw_percent = throw_start_percent
		direction = other.direction
		xstart = x 
		ystart = y 
	}
	player_act_out_animation(spr_player_lift) // vaguely looks like throw animation :^)
	global.iLifted = noone
	// reset sprites
	spr_idle = spr_player_idle
	spr_walk = spr_player_walk
}