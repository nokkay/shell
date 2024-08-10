/// @desc Draw UI

// draw health
	// good practice to create local variable to reference to globals
	var _player_health = global.player_health
	var _player_health_max = global.player_health_max
	var _player_health_frac = frac(_player_health) // returns decimal only part of a number
	_player_health -= _player_health_frac
	
	for (var i = 1; i <= _player_health_max ; i++) // always draw maximum amount of hearts
	{
		// very clever logic from shaun :)
		var _image_index = (i > _player_health) // draw full and empty hearts, 0 is full, 1 is empty 
		if ( i == _player_health + 1) // decide on frac how many quarters to draw
		{
			_image_index += (_player_health_frac > 0) // draw a quarter
			_image_index += (_player_health_frac > 0.25) // draw at least half
			_image_index += (_player_health_frac > 0.5) // draw three quarters
		}
		// weird looking bit at the end increments the spacing for drawing the hearts apart
		draw_sprite(spr_health, _image_index, margin_x + ((i-1) * spacing), margin_y)
	}
	
// draw coins
	var _xx, _yy
	
	// coin icon
	_xx = 100
	_yy = 116
	draw_sprite(spr_coin_UI,0,_xx,_yy)
	
	// coin text
	draw_set_text(c_black,fnt_coins,fa_left,fa_top)
	_xx += sprite_get_width(spr_coin_UI) + 16
	_yy = 109
	var _str = string(global.player_money)
	// create black outline !
	_outline = 2
	draw_text(_xx+_outline,_yy,_str)
	draw_text(_xx-_outline,_yy,_str)
	draw_text(_xx,_yy+_outline,_str)
	draw_text(_xx,_yy-_outline,_str)
	draw_set_color(c_white)
	draw_text(_xx,_yy,_str)


// draw item box
	_xx = margin_x
	_yy = 107
	
	draw_sprite(spr_item_UI_box, 0, _xx,_yy)
	if (global.player_has_any_items)
	{
		draw_sprite(spr_item_UI, global.player_equipped, _xx, _yy)
		if (global.player_ammo[global.player_equipped] != -1)
		{
			draw_set_text(c_white,fnt_ammo,fa_right,fa_bottom)
			draw_text
			(
				_xx + sprite_get_width(spr_item_UI_box) + 1,
				_yy + sprite_get_height(spr_item_UI_box) + 1,
				string(global.player_ammo[global.player_equipped])
			)
			
		}
	}

// draw pause screen

	if (global.game_paused)
	{
		draw_set_color(c_black)
		draw_set_alpha(0.75)
		draw_rectangle(0,0,RESOLUTION_W, RESOLUTION_H, false)
		draw_set_alpha(1.0)
		draw_set_text(c_white, fnt_text, fa_center, fa_middle)
		
		draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.25, "...Game Paused...")
		
		for (var i = 0; i < array_length(pause_option); i++)
		{
			var _print = "";
			if (i == pause_option_selected)
			{
				_print += "> " + pause_option[i] + " <"
			}
			else
			{
				_print += pause_option[i]
				draw_set_alpha(0.7)
			}
			draw_text(RESOLUTION_W * 0.5, RESOLUTION_H * 0.25 + spacing  + (i * spacing), _print)
			draw_set_alpha(1.0)
		}
	}
























	