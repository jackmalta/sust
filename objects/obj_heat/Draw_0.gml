/// @description Insert description here
// You can write your code in this editor

//Desenhando os riscos

//Desenhando do topo à base
var h		= sprite_get_height(spr_ele);
var w		= sprite_get_width(spr_ele);
var height	= sprite_height;
var width	= sprite_width;

draw_self();

//qtd de linhas
var rows	= height div h;
var cols	= width div (w* 4)
var xx		= x - sprite_xoffset;
for (var i = 0; i < rows; i++)
{
	//Esquerda
	draw_sprite(spr_ele, (get_timer()/100000) % sprite_get_number(spr_ele), xx, bbox_top + i * h);
	
	//direita
	draw_sprite(spr_ele, (get_timer()/100000) % sprite_get_number(spr_ele), xx + width - w, bbox_top + i * h);
}
