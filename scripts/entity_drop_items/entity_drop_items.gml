/// @desc Drop random items for different entities
/// @arg _entity DROP_TYPE.[_entity] 


function entity_drop_items(_entity)
{
	enum DROP_TYPE
	{
		PLANT,
		SLIME,
		POT,
		ROCK
	}
	
	var _items = -1
	
	switch _entity
	{
		case DROP_TYPE.PLANT:
			_items = choose
			(
				[obj_coin],
				[obj_coin],
				[obj_coin],
				[obj_coin,obj_coin],
				[obj_coin,obj_coin],
				[obj_coin,obj_coin,obj_coin],
				[obj_bomb_drop],
				[obj_arrow_drop],
				[obj_health_drop],
				-1,-1,-1,-1,-1
			)
			break
			
		case DROP_TYPE.SLIME:
			_items = choose
			(
				[obj_coin],
				[obj_coin,obj_coin],
				[obj_coin,obj_coin,obj_coin],
				[obj_bomb_drop],
				[obj_arrow_drop],
				[obj_health_drop],
				[obj_arrow_drop,obj_arrow_drop]
			)
			break
		case DROP_TYPE.POT:
			_items = choose
			(
				[obj_coin,obj_coin,obj_coin],
				[obj_bomb_drop],
				[obj_arrow_drop],
				[obj_health_drop],
				[obj_arrow_drop,obj_arrow_drop]
			)
			break
		case DROP_TYPE.ROCK:
			_items = choose
			(
				[obj_bomb_drop],
				-1,-1,-1,-1,-1,-1,-1
			)
			break
	}
	
	return _items
}