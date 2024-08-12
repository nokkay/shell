/// @description Draw Textbox

	
	draw_sprite_stretched(spr_textbox, background, x1, y1, x2 - x1, y2 - y1)
	draw_set_font(fnt_text)
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_color(c_black)
	var _print = string_copy(_message,1,text_progress)
	
	if (responses[0] != -1) && (text_progress >= string_length(_message))
	{
		for (var i = 0; i < array_length(responses); i++)
		{
			_print += "\n"
			if (i == response_selected) _print += "> "
			_print += responses[i]
			if (i == response_selected) _print += " <"
		}
	}
	
	
	draw_text_ext((x1+x2)/2, y1+13, _print, space_between_lines, max_width)
	draw_set_color(c_white)
	draw_text_ext((x1+x2)/2, y1+10, _print, space_between_lines, max_width)
	

	// character portrait
	if ((subimage != -1 && NPC_id != -1 && NPC_id.NPC_portrait != -1) && (show_portrait or (x1 * .3 <= x1_target))) // once box is fully drawn, create the portrait
	{
		// fade in 
		if (alpha < 1) alpha += fade

		// draw the sprite
		draw_sprite_ext(NPC_id.NPC_portrait,subimage, x1_target + 8, y2 - 10,image_xscale,image_yscale,0,c_white,alpha) // magic number
		
	}
	
	
	
	