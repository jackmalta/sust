/// @description Insert description here
// You can write your code in this editor

if (global.pause)
{
	if (surf == -1)
	{
		surf = surface_create(view_get_wport(view_camera[0]), view_get_hport(view_camera[0]));
		surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		if (surface_exists(application_surface))
			surface_copy(surf, 0, 0, application_surface);
		surface_reset_target();
	}
	else
	{
		
	}
	
	instance_deactivate_all(true);
}
else
{
	instance_activate_all();

	if (surface_exists(surf))
	{
		surface_free(surf);
		surf = -1;
	}
}


if (keyboard_check_pressed(vk_control))
{
	global.pause = !global.pause;
}