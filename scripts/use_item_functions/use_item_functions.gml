
function use_item_bomb()
{
	if (global.player_ammo[ITEM.BOMB] > 0 && (global.iLifted == noone))
	{
		global.player_ammo[ITEM.BOMB]--
		var _bomb = instance_create_layer(x,y,"Instances",obj_bomb)
		activate_liftable(_bomb)
	}
}

function use_item_bow()
{
	// check we are not carrying anything and have ammo
	if (global.player_ammo [ITEM.BOW] > 0) && (global.iLifted == noone)
	{
		global.player_ammo[ITEM.BOW]--
		player_act_out_animation(spr_player_bow,player_fire_arrow)
	}
	
}

function player_fire_arrow()
{
	with (instance_create_depth(floor(x) - 24,floor(y)-33,depth,obj_arrow))
	{
		direction = other.direction
		direction = CARDINAL_DIR * 90
		image_speed = 0
		image_index = CARDINAL_DIR
		speed = 24
	}
}

function use_item_hook()
{
	
}