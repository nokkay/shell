/// @desc Map one value from one range to another


	function map_value (_value, _min, _max, _map_min, _map_max)
	{
		var _remapped_value = _map_min + ((_value - _min) * (_map_max - _map_min)) / (_max - _min)
		return _remapped_value
	}