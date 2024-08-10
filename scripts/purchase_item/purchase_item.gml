
function purchase_item(_item, _amount, _cost)
{
	// is player broke?
	if (global.player_money >= _cost)
	{
		global.player_has_any_items = true
		global.player_item_unlocked[_item] = true
		global.player_ammo[_item] += _amount
		global.player_money -= _cost
		global.player_equipped = _item
		instance_destroy(activate)
		
		var _desc = ""
		switch (_item)
		{
			case ITEM.BOMB: _desc = "The bomb!\nLight the fuse with the activate key and space bar to throw!\n Go out there and find things to wreck!"; break;
			case ITEM.BOW: _desc = "The bow!\nFire with the activate key,\nfind ammo through destruction of property!"; break;
			case ITEM.HOOK: _desc = "havent implemented this yet hehe....\nloser..."; break;
			default: _desc = "No item description found...";break;
		}
		new_textbox(_desc)
	}
	else
	{
		new_textbox("Not enough money...broke ass...")	
	}
}