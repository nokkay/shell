
	if (title_visible > 0)
	{
		draw_sprite(spr_title,0,0, -RESOLUTION_H + title_visible * RESOLUTION_H)	
		
		draw_set_alpha(title_visible * abs(sin(get_timer() * 0.000001 * pi)))
		draw_sprite(spr_title,1,0,0) // press any key
		draw_set_alpha(1.0)
	}
	
	if (slots_visible > 0)
	{
		// draw the save slots
		draw_set_alpha(slots_visible)
		for (var _slot = 0; _slot <= 2; _slot++)
		{
			// draw the boxes
			var _y = 64 + _slot * 192
			var _x = 624
			var _img = 1
			if (slot_selected == _slot) // selected
			{
				_img = 3
				draw_sprite(spr_menu_player, 0, _x - 64, _y + sprite_get_height(spr_menu_player))
			}
			draw_sprite_stretched_ext(spr_textbox, _img, _x, _y , RESOLUTION_W/2, RESOLUTION_H/4, c_white,slots_visible) // change 1 to slots visible?
			
			// draw the save data (if it exists...)
			draw_set_text(c_white,fnt_text,fa_left,fa_top)
			if (slot_data[_slot] == -1) // empty save slot
			{
				draw_text(_x + 8, _y + 8, "Start new game")	
			}
			else // save slot has data
			{
				draw_text(_x + 8, _y + 8, room_to_area_name(slot_data[_slot][? "room"]))
			
				// draw health
				var _player_health = slot_data[_slot][? "player_health"]
				var _player_health_max = slot_data[_slot][? "player_health_max"]
				var _player_health_frac = frac(_player_health) 
				_player_health -= _player_health_frac
				for (var i = 1; i <= _player_health_max ; i++)
				{
					var _image_index = (i > _player_health) 
					if ( i == _player_health + 1)
					{
						_image_index += (_player_health_frac > 0) 
						_image_index += (_player_health_frac > 0.25)
						_image_index += (_player_health_frac > 0.5) 
					}
					draw_sprite_ext(spr_health, _image_index, _x + 24 + ((i-1) * 36), _y + 64, 0.5 , 0.5, 0 ,c_white, 1.0)
				}
	
				// draw coins
				draw_sprite_ext(spr_coin_UI, 0, _x + 144, _y + 65, 0.5, 0.5, 0, c_white, 1.0)
				draw_set_text(c_white,fnt_ammo, fa_left, fa_top)
				draw_text(_x + 168, _y + 60, slot_data[_slot][? "player_money"])

			}
		}
		draw_set_alpha(1.0)
	}