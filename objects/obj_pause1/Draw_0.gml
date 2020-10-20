/// @description Insert description here
// You can write your code in this editor

if (global.pause)
{
	if (!surface_exists(surf))
	{
		//surf = surface_create(view_get_wport(view_camera[0]), view_get_hport(view_camera[0]));
		//surface_set_target(surf);
		//draw_clear_alpha(c_black, 0);
		//surface_reset_target();
	}
	else
	{
		draw_surface_stretched(surf, 0, 0, room_width, room_height);
	}
}