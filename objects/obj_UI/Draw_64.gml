/// @desc Draw Health

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