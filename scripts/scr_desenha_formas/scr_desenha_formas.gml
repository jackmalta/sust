///@arg numero
///@arg x
///@arg y
function scr_desenha_formas(argument0, argument1, argument2) {

	for (var i = 0; i < 3; i++)
	{
		draw_sprite_ext(spr_formas_vitoria, i, argument1, argument2, .4, .4, 0, image_blend, image_alpha);
	}
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	scr_desenha_texto_sombra(argument1, argument2 + 40, argument0, c_white, c_black);
	draw_set_valign(-1);
	draw_set_halign(-1);


}
