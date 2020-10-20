/// @description Insert description here
// You can write your code in this editor


scr_create_simple_fixture(1, sprite_width, sprite_height, 0, .1, .1, 0, 0, id);



//criando a minha sprite
var w		= sprite_width;
var h		= sprite_height;
var ang		= image_angle;
var surf	= surface_create(room_width, room_height);
var cols	= w div 32;
var rows	= h div 32;
var gride = ds_grid_create(cols, rows);
ds_grid_clear(gride, 0);
var spr		= asset_get_index("spr_tile_mundo_" + string_char_at(string(room_get_name(room)), 10));


//Desenhando a sprite
surface_set_target(surf);
for (var i = 0; i < cols; i++)
{
	for (var j = 0; j < rows; j++)
	{
		var n = 1;
		var a = 0;
		if (i == 0) n = 0;
		else if (i == cols-1) n = 2;
		
		gride[# i, j] = n;
		
		//Detectando qual o valor do n e qual o angulo dele
		//Checando se tem algo à minha esquerda
		
		if (j > 0 && j < rows-1)
		{
			gride[# i, j] = n + 3;
			
		}
		else if (j > 0)
		{
			gride[# i, j] = n + 6;
		}
		
		draw_sprite_ext(spr, gride[# i, j],i * 32, j*32, 1, 1, 0, image_blend, image_alpha);
		
	}
}


angulo = 0;
sprite = sprite_create_from_surface(surf, 0, 0, w, h, 0, 0, w/2, h/2);
surface_reset_target();

//sprite_index = sprite;
if (surface_exists(surf)) surface_free(surf);
ds_grid_destroy(gride);