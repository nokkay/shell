///@args hitbox_sprite

// set mask index as HB
// check for collision
// set mask back to player sprite

function calc_attack()
{
	mask_index = argument0
	var hit_by_attack_now = ds_list_create() // create list to store ID's of entities being hit
	var hits = instance_place_list(x,y,obj_p_entity,hit_by_attack_now,false)
	
	if hits > 0
	{
		for (var i = 0; i < hits; i++)
		{
			// if this instance has not yet been hit by this attack, hit it!
			var hit_ID = hit_by_attack_now[| i] // way to reference a DS list
			if (ds_list_find_index(hit_by_attack, hit_ID) == -1) // goes through ds_list and tries to find the hit_ID, see what HASNT been hit yet
			{
				ds_list_add(hit_by_attack, hit_ID)
				with(hit_ID)
				{
					// on hit 
					if (entity_hit_script != -1) script_execute(entity_hit_script)
						
				}
			}
		}
	}
	
	ds_list_destroy(hit_by_attack_now) // delete from memory
	mask_index = spr_player_attack_slash
}