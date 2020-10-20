/// @description Insert description here
// You can write your code in this editor

//Checando se o jogador pode passar de level
posso = ds_list_empty(global.lista) && !mouse_check_button(mb_left);

if (posso || fim)
{

	if (timer > 0 && !global.pause)
	//Iniciando o timer
	timer -= delta_time/1000000;

}
else
{

	timer = timer_tempo;
	//Tempo do level
	if (!global.pause)
		level_tempo -= delta_time/1000000;

}
//Pausando
//Checar mouse sobre
var x1		= view_w * .5;
var y1		= 80;
var r		= 40;
if (device_mouse_x_to_gui(0) > x1 - r && device_mouse_x_to_gui(0) < x1 + r && device_mouse_y_to_gui(0) > y1 - r && device_mouse_y_to_gui(0) < y1 + r)
{
	if (mouse_check_button_released(mb_left))
	{
		var pop = audio_play_sound(snd_click, 2, 0);
		audio_sound_gain(pop, global.sfx * .1, 0);
		global.pause = !global.pause;
	}
}

//Pausando com o back
if (keyboard_check_pressed(vk_backspace))
{
	global.pause = !global.pause;
}

if (timer <= 0)
{
	
	
	if (room_next(room))
	{
		//room_goto_next();
		//Criar o objeto hurray
	}
	//Ganhando pontos
	
	if (level_tempo > 0)
	{

		global.pause = true;
		
		if (fazer)
		{
			fim = true;
			level_tempo = round(level_tempo);
			//show_message(level_tempo);
			
			//Mostrando os pontos ideais para o level
			//show_message((level_limite - tempo_level) * 100);
			
			pontos_total = level_tempo * 100 * level_limite*.04;
			fazer = false;
		}
		level_tempo -= .2 * level_limite*.03;
		pontos += 20 * level_limite*.03;
		
		
		//Checando se dou mais estrelas
		for (var i = 0; i < array_length_1d(estrelas); i++)
		{
			if (!estrelas[i])
			{
				var pontos_ideal = (level_limite - tempo_level) * 100;
				var pontos_parte = pontos_ideal / 3;
				
				if (estrelas[0] != 1)
				{
					//show_message(pontos_parte * i + pontos_parte);
					estrelas[0] = 1;
					//Tocando o som
					var pop = audio_play_sound(snd_pop, 5, 0);
					audio_sound_gain(pop, global.sfx * .1, 0);
										
					//Atualizando as informações da grid
					global.leveis[# mundo, lvl]++;


					//Criando shake
					var shake = instance_create_layer(0, 0, layer, obj_shake);
					shake.shake = 4 * ((i+1) * (i+1));
					
					//Criando particulas
					repeat(15 * (i+1) * (i+1))
					{
						var escala = 2;
						
						
						var xx	= view_w/2;
						var yy	= view_h/2;
						var w	= sprite_get_width(spr_menu) * escala;
						var h	= sprite_get_height(spr_menu) * escala;
						var x1		= xx - w/4 + (w/4 * i);
						var y1		= yy;
						

						var p = instance_create_layer(x1 + random_range(-90, 90), y1 + random_range(-90, 90), layer, obj_part);
						p.direction = point_direction(p.x, p.y, x1, y1) + 180;
						with(p)
						{
							speed = random(40) + .1;
							phy_speed_x = lengthdir_x(speed, direction);
							phy_speed_y = lengthdir_y(speed, direction);
						}
						
					}
				}
				
				if (pontos > (pontos_parte * i + pontos_parte))
				{
					//show_message(pontos_parte * i + pontos_parte);
					estrelas[i] = 1;
					//Tocando o som
					var pop = audio_play_sound(snd_pop, 5, 0);
					audio_sound_gain(pop, global.sfx * .1, 0);
										
					//Atualizando as informações da grid
					global.leveis[# mundo, lvl]++;


					//Criando shake
					var shake = instance_create_layer(0, 0, layer, obj_shake);
					shake.shake = 4 * ((i+1) * (i+1));
					
					//Criando particulas
					repeat(15 * (i+1) * (i+1))
					{
						var escala = 2;
						
						
						var xx	= view_w/2;
						var yy	= view_h/2;
						var w	= sprite_get_width(spr_menu) * escala;
						var h	= sprite_get_height(spr_menu) * escala;
						var x1		= xx - w/4 + (w/4 * i);
						var y1		= yy;
						

						var p = instance_create_layer(x1 + random_range(-90, 90), y1 + random_range(-90, 90), layer, obj_part);
						p.direction = point_direction(p.x, p.y, x1, y1) + 180;
						with(p)
						{
							speed = random(40) + .1;
							phy_speed_x = lengthdir_x(speed, direction);
							phy_speed_y = lengthdir_y(speed, direction);
						}
						
					}
				}
				
			}
		}
		
	}
	
	else
	{
		//game_restart();
	}
}




//Blur com pause
if (global.pause)
{
	if (blur == noone)
	{
		blur = instance_create_layer(0, 0, layer, obj_blur_2_pass);
	}
	if (timer > 0)
		physics_pause_enable(1);
}
else
{
	physics_pause_enable(0);
	if (blur != noone)
	{
		instance_destroy(blur);
		blur = noone;
	}
}