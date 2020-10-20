/// @description Insert description here
// You can write your code in this editor

//Alterando a sprite e ajustando a nova escala
if (image_xscale != image_yscale)
{
	image_xscale = sprite_width/sprite_get_width(spr_rectangue);
	image_yscale = sprite_height/sprite_get_height(spr_rectangue);
	sprite_index = spr_rectangue;
}

event_inherited();

if (!definir)
{
	scr_create_simple_fixture(1, sprite_width*.95, sprite_height*.95, .5, .2, .1, .1, .1, id);
}
else
{
	scr_create_simple_fixture(1, sprite_width*.95, sprite_height*.95, densi, fric, bouncy, linear, angular, id);
}

blink = .2;