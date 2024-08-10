
function room_to_area_name(_room)
{
	switch (_room)
	{
		case rm_woods: return "The Village"
		case rm_woods_path: return "The River"
		case rm_shop: return "Ye Shoppe"
		default: return "Unknown Area"
	}
}