/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_mouse))
{
	if (global.hold != noone)
	{
		with(global.hold)
		{
			ativo = false;
			global.hold = noone;
		}
	}
}