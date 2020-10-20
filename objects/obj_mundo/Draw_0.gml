/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_mundo_req, 0, x, y + sprite_height/1.5, 1.5, 1.5, 0, c_white, 1);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
scr_desenha_texto_sombra(x, y + sprite_height/1.5 + 15, mundo * 20, c_white, c_black);
draw_set_valign(-1);
draw_set_halign(-1);

//Aplicando shader
if (bloq)
{
	shader_set(shd_grayscale);
	draw_self();
	shader_reset();
}
else
{
	draw_self();
}


//scr_desenha_formas(mundo * 8, x, y + sprite_height/2);



