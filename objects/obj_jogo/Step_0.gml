/// @description Insert description here
// You can write your code in this editor


//Criando a opção de opções
if (!instance_exists(obj_mesa))
{
	var d_w	= room_width;
	var w	= sprite_get_width(spr_opcoes);
	var h	= sprite_get_height(spr_opcoes);
	
	var xx	= d_w - w;
	var yy	= 0;
	cor = c_white;
	
	var mouse_sobre = mouse_x == clamp(mouse_x, xx, xx + w) && mouse_y == clamp(mouse_y, yy, yy + h);
	var mouse_click = mouse_check_button_pressed(mb_left);
	
	//Passando o mouse sobre ele
	if (mouse_sobre)
	{
		cor = c_aqua;
		if (mouse_click)
		{
			var pop = audio_play_sound(snd_click, 2, 0);
			audio_sound_gain(pop, global.sfx * .1, 0);
			if (blur == noone)
			{
				blur = instance_create_layer(0, 0, layer, obj_blur_2_pass);
			}
			else
			{
				instance_destroy(blur);
				blur = noone;
			}
		}
	}
}


if (keyboard_check_pressed(vk_up) && global.som < 10) 
{
	global.som++;
	audio_sound_gain(som_fundo, global.som*.1, 2);
}
if (keyboard_check_pressed(vk_down) && global.som > 0)
{
	global.som--;
	audio_sound_gain(som_fundo, global.som*.1, 2);
}

