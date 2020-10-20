/// @description Insert description here
// You can write your code in this editor
if (blur != noone)
{
	instance_destroy(blur);
	blur = noone;
}

//Limpando a surface
if (pause_surf)
{
	surface_free(pause_surf);
	pause_surf = -1;
}

instance_activate_all();