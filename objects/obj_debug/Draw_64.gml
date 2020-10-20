/// @description Insert description here
// You can write your code in this editor
/*
if (keyboard_check_pressed(vk_tab))
{
	debug = !debug;
}

if (debug)
{
	draw_text(20, 40, ds_list_size(global.lista));
	draw_text(20, 60, global.hold);
	
	if (instance_exists(obj_shapes))
	{
		with(all)
		{
			draw_set_color(c_white);
			physics_draw_debug()
		}
	}
}