/// @description Insert description here
// You can write your code in this editor
draw_self();

//Desenhando o braço
if (sprite_index != -1)
{

#region lixo
	//draw_self();
	////Desenhando os braços
	//var tot = sprite_get_number(braco);
	//braco_num += 5 / room_speed;
	//braco_num %= tot;
	////direito
	//var xx = lengthdir_x(sprite_width/3, -image_angle);
	//var yy = lengthdir_y(sprite_width/3, -image_angle);
	//draw_sprite_ext(braco, braco_num, x - xx, y + yy, image_xscale * -1, image_yscale, 0, image_blend, image_alpha);
	
	//var tot = sprite_get_number(braco_outro);
	//braco_outro_num += 5 / room_speed;
	//braco_outro_num %= tot;
	//var xx = lengthdir_x(sprite_width/3, image_angle);
	//var yy = lengthdir_y(sprite_width/3, image_angle);
	////esquerdo
	//draw_sprite_ext(braco_outro, braco_outro_num, x + xx, y + yy, image_xscale, image_yscale, 0, image_blend, image_alpha);
	

	//if (!troquei)
	//{
	//	if (braco_outro_num <= .1)
	//	{
	//		var chance = random(1);
	//		if (chance >= .95)
	//		{
	//			braco_outro = braco_bonus;
	//			braco_outro_num = 0;
	//			troquei = true;
	//		}
	//	}
	//}
	//else
	//{
	//	if (braco_outro_num >= tot-1)
	//	{
	//		braco_outro = braco_origin;
	//		troquei = false;
	//	}
	//}
#endregion


	//Desenhando o rosto
	//draw_sprite_ext(olho, scr_blink_value(), x, y, min(image_xscale, 2), min(image_yscale, 2), image_angle, image_blend, image_alpha);
	
	
	//Debug do estado
	//draw_set_valign(fa_middle);
	//draw_set_halign(fa_center);
	//draw_text(x, y - sprite_height, estado);
	//draw_set_valign(-1);
	//draw_set_halign(-1);
}
