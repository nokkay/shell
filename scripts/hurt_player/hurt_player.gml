
function hurt_player(_direction, _force, _damage)
{
	// check if player can take damage
	if (obj_player.invulnerable <= 0)
	{
		global.player_health = max(0, global.player_health - _damage)
		
		if (global.player_health > 0)
		{
			with (obj_player)
			{
				state = player_state_bonk
				direction = _direction - 180
				move_distance_remaining = _force
				screen_shake(3,30)
				flash = 0.7
				invulnerable = 60
				flash_shader = sh_red_flash
			}
		}
		else
		{
			// kill the player >:]	
			with (obj_player) state = player_state_dead
		}
	}
}