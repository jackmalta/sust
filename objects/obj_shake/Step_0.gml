/// @description Insert description here
// You can write your code in this editor


shake *= .93;



camera_set_view_size(view_camera[0], width + random_range(-shake*2, shake*2), height + random_range(-shake*2, shake*2));

if (instance_exists(obj_mesa))
{
	obj_mesa.menu_x = random_range(-shake/2, shake/2);
	obj_mesa.menu_y = random_range(-shake/2, shake/2);
}

if (shake <= .01)
{
	instance_destroy();
	camera_set_view_size(view_camera[0], width, height);
	
	if (instance_exists(obj_mesa))
	{
		obj_mesa.menu_x = 0;
		obj_mesa.menu_y = 0;
	}
	
}