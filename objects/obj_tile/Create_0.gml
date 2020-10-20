/// @description Insert description here
// You can write your code in this editor

var size = 32;
var cols = room_width div size;
var rows = room_height div size;
var mapa = ds_grid_create(cols, rows);
ds_grid_clear(mapa, 0);

var l_id = layer_get_id("instances");

var tiles = layer_tilemap_get_id("Tiles");


//Marcando onde tem mapa
for (var i = 0; i < cols; i++)
{
	for (var j = 0; j < rows; j++)
	{
		var val = 0;
		//Me olhando e olhando para todos os lados
		var here	= position_meeting(i * size, j * size, obj_static);			
		var up		= position_meeting(i * size, (j-1) * size, obj_static);		//1
		var down	= position_meeting(i * size, (j + 1) * size, obj_static);	//2
		var right	= position_meeting((i + 1) * size, j * size, obj_static);	//4
		var left	= position_meeting((i - 1) * size, j * size, obj_static);	//8
		
		//Marcando só se eu "existir"
		if (here)
		{
			val = (up) + (right * 2) + (down * 4) + (left * 8);
		}
		else
		{
			val = 0;
		}
		
		
		//Aplicando o val ao grid
		mapa[# i, j] = val;
		
		//Aplicando o tile
		if (mapa[# i, j] != 0)
		{	
			switch(val)
			{
				case  6:	tilemap_set(tiles, 58, i, j); break;
				case 12:	tilemap_set(tiles, 63, i, j); break;
				case 14:	tilemap_set(tiles, irandom(3) + 59, i, j); break;
				case  7:	tilemap_set(tiles, choose(72, 86, 100, 114), i, j); break;
				case  13:	tilemap_set(tiles, choose(77, 91, 105, 119), i, j); break;
				case  3:	tilemap_set(tiles, 128, i, j); break;
				case 11:	tilemap_set(tiles, irandom(3) + 129, i, j); break;
				case  9:	tilemap_set(tiles, 133, i, j); break;
				case  15:	tilemap_set(tiles, 88, i, j); break;
			}
		}
	}
}

ds_grid_destroy(mapa);
instance_destroy();