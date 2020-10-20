

/// @description Insert description here
// You can write your code in this editor
scr_save();

//Matando o blur
if (blur != noone)
{
	instance_destroy(blur);
	blur = noone;
}
total = ds_grid_get_sum(global.leveis, 0, 0, ds_grid_width(global.leveis)-1, ds_grid_height(global.leveis)-1);