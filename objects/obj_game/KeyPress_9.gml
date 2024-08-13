/// @description Debug Rooms

	// just for debug purposes
	// really weird way to do this but hey, if it works it works
	try
	{
		do room_goto_next()
		until (room != rm_init and room != rm_parent and room != rm_title)
	}
	catch (e)
	{
		room_goto(rm_woods)
	}



