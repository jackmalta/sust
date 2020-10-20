/// @description Insert description here
// You can write your code in this editor


pos += (view_camera[0]/10) * 1.5;
show_debug_message(view_get_camera(view_camera[0])/10)
if (asset_get_index(room_get_name(destino)) == -1)
{
	var nome = room_get_name(room);
	destino = asset_get_index(string_copy(nome, 0, 10));
}

if (destino == noone)
{
	instance_destroy(id, 0);
}
else
{
	if (!fui)
	{
		image_alpha += .02;
	}
	else
	{
		image_alpha -= .02;
	}
	
	if (image_alpha >= 1 && !fui)
	{
		fui = true;
		room_goto(destino);
	}
}