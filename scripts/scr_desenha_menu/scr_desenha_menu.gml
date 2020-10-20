function scr_desenha_menu() {
	//Desenhando o bagui dos pontos
	var escala = 2;



	var xx	= view_w/2;
	var yy	= view_h/2;
	var w	= sprite_get_width(spr_menu) * escala;
	var h	= sprite_get_height(spr_menu) * escala;

	draw_sprite_ext(spr_menu, 0, xx, yy, escala + menu_x*.02, escala + menu_y*.02, 0, c_white, 1);

	//Desenhando botões
	for (var i = 0; i < sprite_get_number(spr_buttons); i++)
	{
		var b_h		= sprite_get_height(spr_buttons) * escala;
		var b_w		= sprite_get_width(spr_buttons) * escala;
		var x1		= (xx-w/2) + (w/3 * i) + (b_w);
		var y1		= yy + h/2 - b_h;
		var alpha	= 1;
		var blend	= c_white;
		var scalae	= 1;
	
		if (device_mouse_x_to_gui(0) > x1 - b_w/2 && device_mouse_x_to_gui(0) < x1 + b_w/2 && device_mouse_y_to_gui(0) > y1 - b_h/2 && device_mouse_y_to_gui(0) < y1 + b_h/2)
		{
			alpha	= .4;
			blend	= c_white;
			scalae	= 1.1;
		
			//Checando se o mouse clica
			if (mouse_check_button_released(mb_left))
			{
				var pop = audio_play_sound(snd_click, 2, 0);
				audio_sound_gain(pop, global.sfx * .1, 0);
				switch(i)
				{
					case 0: 
					{
						if (timer <= 0)
						{
							var dest = asset_get_index("rm_mundo_" + string(mundo) + "_" + string(lvl+1));
							var t = instance_create_layer(0, 0, layer, obj_transicao);
							t.destino = dest;
						}
						else
						{
							global.pause = false; 
						}
						break;
					}
					case 1: 
						var dest = asset_get_index("rm_mundo_" + string(mundo));
						var t = instance_create_layer(0, 0, layer, obj_transicao);
						t.destino = dest;
						break;
					case 2: room_restart();		; break;
				}
			}
		
		}
		//Primeiro
		draw_sprite_ext(spr_buttons, i, x1, y1, escala * scalae + menu_x*.06, escala * scalae + menu_y*.06, 0, blend, alpha);
	
		//Segundo
		if (estrelas[0] && timer <= 0 && i == 0)
		{
			var x2		= (xx-w/2) + (w/3 * 0) + (b_w);
			var y2		= yy + h/2 - b_h;
			alpa = lerp(alpa, 1, .01);
			draw_sprite_ext(spr_buttons2, 0, x2, y2, escala * scalae + menu_x*.06 + (1 - alpa), escala * scalae + menu_y*.06 + (.5 - alpa*.5), 0, blend, alpa * alpha);
		}
	}

	//Desenhando as estrelas
	for (var i = 0; i < array_length_1d(estrelas); i++)
	{
		//Desenhando
		if (estrelas[i])
		{
			draw_sprite_ext(spr_formas_vitoria1, (estrelas[0] + estrelas[1] + estrelas[2]) -1 , xx, yy, escala + menu_x*.02, escala + menu_y*.02, 0, c_white, 1);
		}
	}


}
