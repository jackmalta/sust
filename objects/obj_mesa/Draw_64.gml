/// @description Insert description here
// You can write your code in this editor




//Desenhando o timer
if (posso)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fnt_timer02);
	draw_set_alpha(frac(timer));
	draw_text_transformed(view_w/2, view_h/3, ceil(timer), .2 + frac(timer) * 2, .2 + frac(timer) * 2, 0);
	draw_set_font(fnt_shape);
	draw_set_valign(-1);
	draw_set_halign(-1);
}



//Desenhando o timer
var center	= view_w * .5;
var r		= 40;
scr_desenha_timer(center, 80, r, 5);


//Desenhando os pontos ao concluir o level
if (timer <= 0)
{
	//draw_text(200, 200, pontos);
		
	scr_desenha_menu();
}
if (global.pause)
{
	scr_desenha_menu();
}


/*
draw_set_color(make_color_rgb(255 - ((level_tempo/level_limite) * 255), 255 * (level_tempo/level_limite), 100));
draw_circle(view_w - 200, 80, 30 + extra, false);
draw_set_color(c_yellow)
draw_set_alpha(.1);
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_color(-1);

scr_draw_weird(view_w - 200, 80, angulo, c_green, .7, 25 + extra);
gpu_set_blendmode(-1);

if (keyboard_check_pressed(vk_up))
{
	if (indice > 0) indice--;
}
if (keyboard_check_pressed(vk_down))
{
	if (indice < array_length_1d(opcoes)-1) indice++;
}
*/
angulo += delta_time/500000;
