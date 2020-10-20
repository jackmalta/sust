/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

sprite_index = spr_level_moldura;
//Pegando o mundo em que eu estou
var str = room_get_name(room);

//Pegando meu mundo
mundo = int64(string_char_at(str, 10));
//Checando se o level anterior possui alguma forma
if (level-1 >= 0)
{
	var ant = global.leveis[# mundo, level-1];
	if (ant > 0)
		bloq = false;
	else
		bloq = true;
}
else
{
	bloq = false;
}

destino = asset_get_index("rm_mundo_" + string(mundo) + "_" + string(level));
if (!destino)
{
	destino = rm_mundos;
}

