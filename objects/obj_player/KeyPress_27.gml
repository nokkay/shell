/// @description open menu

if !instance_exists(obj_pause_menu)
{
	instance_create_layer(x,y,layer_get_id("objs"), obj_pause_menu)
}