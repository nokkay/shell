/// @desc sets text varibles up
/// @arg color
/// @arg font
/// @arg halign
/// @arg valign


function draw_set_text()
{
	if (argument_count == 0) // default assign
	{
		draw_set_color(c_black)
		draw_set_font(fnt_text)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
	}
	else
	{
		draw_set_color(argument[0])
		draw_set_font(argument[1])
		draw_set_halign(argument[2])
		draw_set_valign(argument[3])
	}
}