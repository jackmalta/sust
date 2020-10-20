/// @description Insert description here
// You can write your code in this editor



var mouse_click = mouse_check_button_pressed(mb_left);
var mouse_sobre = position_meeting(mouse_x, mouse_y, id);

if (mouse_sobre)
{
	image_alpha = max(.5, sin(get_timer()/500000));
	if (mouse_click)
	{
		var pop = audio_play_sound(snd_click, 2, 0);
		audio_sound_gain(pop, global.sfx * .1, 0);
		if (!criei)
		{
			var t = instance_create_layer(0, 0, layer, obj_transicao);
			t.destino = destino;
			criei = true;
		}
	}
}
else
{
	image_alpha = 1;
}

