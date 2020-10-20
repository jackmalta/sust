/// @description Insert description here
// You can write your code in this editor


if (bloq)
{
	shader_set(shd_grayscale);
}
//Desenhando o level
var spr	= asset_get_index("spr_mundo_" + string(mundo));

if (sprite_get_number(spr) > level)
{
	draw_sprite_ext(spr, level, x, y, .15, .15, 0, c_white, 1);
}

draw_self();
//Aplicando shader
if (bloq)
{
	shader_reset();
}


//Desenhando o placar
var x1	= x + sprite_width/2;
var y1	= y + sprite_height * 1.2;
var meu	= global.leveis[# mundo, level];


draw_sprite(spr_placar_level, meu, x1, y1);

//Desenhan do o placar
/*
for (var i = 0; i < 3; i++)
{
	var x1	= x + sprite_width/2;
	var y1	= y + sprite_height * 1.2;
	//Vendo quantas formas eu tenho
	var meu = global.leveis[# mundo, level];
	
	if (i >= meu)
	{
		shader_set(shd_grayscale);
	}
	
	draw_sprite_ext(spr_formas_vitoria2, i, x1, y1, .4, .4, 0, c_white, image_alpha);
	
	//draw_text(x1, y1 + 40, meu);
	if (i >= meu) shader_reset();
}