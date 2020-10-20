///@arg som
///@arg txt
///@arg [margem_y]
///@arg [variavel_som_gain]
function scr_desenho_volume() {

	var g_som	= argument[0];
	var txt		= argument[1];
	var margem	= 0; if argument_count > 2 margem = argument[2];
	var som		= 0; if argument_count > 3 som = argument[3];

	var d_w	= view_w;
	var d_h = view_h;
	var l	= sprite_get_width(spr_volume);
	var a	= 10;
	var x1	= d_w * .5 - l/2;
	var x2	= x1 + l;
	var y1	= (d_h * .5 - a) + margem;
	var y2	= y1 + a * 2;
	
	var mx = mouse_x;
	//Barra
		
	draw_sprite_ext(spr_volume, 0, d_w * .5, y1, 1.2, 1, 0, c_white, 1);
	//draw_rectangle(x1, y1, x2, y2, false);
		
	//Ponto do som
	var tam			= 10;
	var pos			= (l * 2 div tam) * g_som;
		
	//Fazendo seleção pelo mouse também
	var mouse_sobre = device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0), x1-20, x2+20) && device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), y1-20, y2+20);
	var mouse_click = mouse_check_button(mb_left);

	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	//draw_text(x1 + l/2, y1 - 15, txt);
	scr_desenha_texto_sombra_mov(x1 + l/2, y1 - 15, txt, c_white, c_black, g_som);
	draw_set_valign(-1);
	draw_set_halign(-1);

	draw_sprite(spr_vol, 0, x1 + pos, y1);
	if (mouse_sobre)
	{
		if (mouse_click)
		{
			//show_message(ponto_atual)
			if (som != 0)
			{
				audio_sound_gain(som, g_som*.1, 200);
			}
			return (device_mouse_x_to_gui(0) - x1) div (l * 2 div tam);
		}
	}
		
	//draw_rectangle(x1 + pos, y1 - 30, x1 + pos + tam, y2 + 30, false);
	return g_som;

		
		


}
