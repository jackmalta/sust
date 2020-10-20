/// @description Insert description here
// You can write your code in this editor

if (instance_number(obj_pause) > 1)
{
	instance_destroy();
}



{
	//criando a surface do pause
	if (pause_surf == -1)
	{
		pause_surf = surface_create(view_get_wport(view_camera[0]), view_get_hport(view_camera[0]));
		surface_set_target(pause_surf);
		draw_clear_alpha(c_black, 0);
		surface_copy(pause_surf, 0, 0, application_surface);
		surface_reset_target();
			
	}
	else
	{
			
	}
	
}
instance_deactivate_all(true);
instance_activate_object(obj_mesa);