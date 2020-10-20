/// @description Insert description here
// You can write your code in this editor
ativo = false;

if (instance_exists(obj_mesa))
{
	mesa = obj_mesa.id;
}
else
{
	mesa = noone;
}
init_blink();

olhos = choose([spr_eyes_norm, spr_eyes_curious, spr_eyes_hurt, spr_eyes_happy, spr_eyes_tense], 
				[spr_eyes_norm2, spr_eyes_curious2, spr_eyes_hurt2, spr_eyes_happy2, spr_eyes_tense2]);
olho = olhos[0];
estado = "parado";

image_index = irandom(image_number) - 1;
image_speed = 0;