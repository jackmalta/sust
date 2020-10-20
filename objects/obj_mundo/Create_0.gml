/// @description Insert description here
// You can write your code in this editor

var des = asset_get_index("rm_mundo_" + string(mundo));


sprite_index = spr_mundos;
image_index	 = mundo;
if (des)
{
	destino = des;
}
else
{
	destino = rm_mundos;
}
cor		= c_white;
criei	= false;
bloq	= 0;

var total = ds_grid_get_sum(global.leveis, 0, 0, ds_grid_width(global.leveis)-1, ds_grid_height(global.leveis)-1);

if (mundo * 20 > total)
{
	bloq = true;
}
else
{
	bloq = false;
}