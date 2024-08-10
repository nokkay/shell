
	if ticket == 0
	{
		instance_change(obj_text, true)	
		
		// delete non me instances
		with (instance_find(object_index, 0)) 
		{
		    if (id != other.id) 
			{  
		        instance_destroy()
		    }
		}
	}