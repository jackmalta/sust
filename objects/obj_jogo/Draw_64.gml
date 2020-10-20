/// @description Insert description here
// You can write your code in this editor

if (room != rm_creditos)
{
	if (!instance_exists(obj_mesa))
	{
		var d_w	= view_w;
		var d_h = view_h;
		var w	= sprite_get_width(spr_opcoes);
		var h	= sprite_get_height(spr_opcoes);
	
		var xx	= d_w - w;
		var yy	= 0;
	
		draw_sprite_ext(spr_opcoes, 0, xx, yy, 1, 1, 0, cor, 1);
	
		//Desenhando a quantidade de shapes que o usuário possui
		//scr_desenha_formas(total, 80, view_h/2 - 40);
		//Desenhando de novo
		draw_sprite_ext(spr_placar, 0, view_w * .5, camera_get_view_y(view_camera[0]), 1.5, 1.5, 0, c_white, 1);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		scr_desenha_texto_sombra(view_w * .5, camera_get_view_y(view_camera[0]) + 49, total, c_white, c_black);
		draw_set_valign(-1);
		draw_set_halign(-1);
	
	
		//Desenhando o menu de opções de som
		if (blur != noone)
		{
		
			var mouse_click = mouse_check_button_pressed(mb_left);
		
			global.som = scr_desenho_volume(global.som, "MUSIC", 0, som_fundo);
			global.sfx = scr_desenho_volume(global.sfx, "EFFECTS",  90);
		
		
			//Desenhando opcao de zerar dados
			var x1 = view_w * .5;
			var y1 = view_h - 200;
			var core = c_white;
			if (device_mouse_x_to_gui(0) == clamp(device_mouse_x_to_gui(0), x1 - 50, x1 + 50) && 
				device_mouse_y_to_gui(0) == clamp(device_mouse_y_to_gui(0), y1 - 30, y1 + 30))
			{
				core = c_lime;
			
				if (mouse_click)
				{
					var pop = audio_play_sound(snd_click, 2, 0);
					audio_sound_gain(pop, global.sfx * .1, 0);
					ds_grid_clear(global.leveis, 0);
					ini_open("game.ini");
					ini_write_string("shapes", "shapes", ds_grid_write(global.leveis));
					ini_close();
					room_restart();
				}
			
			}
		
		
			draw_set_color(core);
			//draw_rectangle(x1 - 50, y1 - 30, x1 + 50, y1 + 30, false);
			draw_set_color(c_black);
			//draw_rectangle(x1 - 50, y1 - 30, x1 + 50, y1 + 30, true);
			draw_sprite_ext(spr_limpar, 0, x1, y1, 2, 2, 0, c_white, 1);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			//draw_text(x1, y1+5, "CLEAR DATA");
			scr_desenha_texto_sombra(x1, y1 + 5, "CLEAR DATA", c_white, c_black)
			draw_set_halign(-1);
			draw_set_color(-1);
			draw_set_valign(-1);
		
		}
	
	}

	if (room == rm_mundos && !explica)
	{
		//Desenhando a explicação
		//Texto
		var texto = "Nós cuidamos de uma reserva para animais em risco de extinção, muitos deles já estão prontos para voltar à natureza, mas nós precisamos de sua ajuda para isso, você precisa garantir que eles fiquem em uma zona fora da área em que nós deixamos ele por ao menos 5 segundos, assim eles se acostumam com o habitat novo e nós podemos levar os próximos animais para sua nova casa, quanto mais rápido você fizer isso melhor, como saber qual é a área que nós deixamos eles? Simples! Ela é delimitada por uma cerca. Muito cuidado porque cada animal diferente tem as suas caracteristicas próprias, por exemplo a águia pode fugir se houver qualquer tipo de variação no terreno, a preguiça raramente vai se mexer se você deixar ela em um terreno estável e o penguin é basicamente um triangulo, ele é estável em certas posições e outras não, já o panda é espaçoso, porém muito estável, você pode usar ele para organizar melhor os outros animais. Boa sorte!";
	
		draw_set_alpha(.7);
	
		draw_rectangle_color(70, view_h - 270, view_w - 70, view_h - 20, c_black, c_black, c_black, c_black, false);
		if (mouse_check_button(mb_any))
		{
			explica = true;
		}
		draw_set_font(fnt_explica);
		draw_set_alpha(1);
		draw_text_ext(80, view_h - 260, texto, string_height(texto), view_w - 160);
		draw_set_font(-1);
	
	
	
	}
}