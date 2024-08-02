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
	_xx = margin_x
	_yy = 112
	draw_sprite(spr_coin_UI,0,_xx,_yy)
	
	// coin text
	draw_set_text()
	_xx += sprite_get_width(spr_coin_UI) + 16
	_yy = 107
	var _str = string(global.player_money)
	// create black outline !
	_outline = 2
	draw_text(_xx+_outline,_yy,_str)
	draw_text(_xx-_outline,_yy,_str)
	draw_text(_xx,_yy+_outline,_str)
	draw_text(_xx,_yy-_outline,_str)
	draw_set_color(c_white)
	draw_text(_xx,_yy,_str)

	