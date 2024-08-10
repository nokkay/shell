/// @desc Adds to player money
/// @arg _amount Amount to add 

function collect_coins(_amount)
{
	global.player_money += _amount	
}

/// @desc Adds amount to the item type
/// @arg _array [type, amount]

function collect_ammo(_array)
{
	// _array = [type, amount]
	global.player_ammo[_array[0]] += _array[1]
	
		
}

function collect_health(_amount)
{
	if (global.player_health < global.player_health_max)
	{
		global.player_health += _amount	
	}
}