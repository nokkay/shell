/// @description Hurt Player

	if (enemy_hurt_on_touch)
	{
		 hurt_player(point_direction(x,y,obj_player.x,obj_player.y), enemy_force_touch, enemy_damage_touch)
	}