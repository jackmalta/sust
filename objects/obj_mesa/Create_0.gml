/// @description Insert description here
// You can write your code in this editor
//scr_create_simple_fixture(1, sprite_width, sprite_height, 0, 0, 0, 0, 0, id);
var fixture = physics_fixture_create();
physics_fixture_set_box_shape(fixture, sprite_width/2, sprite_height/2);
physics_fixture_set_sensor(fixture, 1);
physics_fixture_set_kinematic(fixture);

physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);

blur = noone;


//Pegando as dimensões
if (instance_exists(obj_jogo))
{
	view_h = obj_jogo.view_h;
	view_w = obj_jogo.view_w;
}
else
{
	view_h = room_height;
	view_w = room_width;
}



//Criando o objeto voltar
//if (instance_exists(obj_voltar)) instance_destroy(obj_voltar);
//var volt = instance_create_depth(0, 0, -500, obj_voltar);
//Pegando o mundo em que eu estou
var str = room_get_name(room);
var dest = string_copy(str, 0, string_length(str)-2);
//volt.destino = asset_get_index(dest);

//Pegando meu mundo
mundo = int64(string_char_at(str, 10));

//Pegando meu level
lvl = int64(string(string_copy(str, 12, string_length(str))));



//Lista
global.lista = ds_list_create();


//Informações dos shapes atuais
shapes = global.leveis[# mundo, lvl];

image_alpha = 0;
//Passar level
timer_tempo = 5;
timer = timer_tempo;
posso = false;

//tempo do level
level_limite = level_tempo;
//level_tempo = level_limite;

tempo_level = level_tempo/5;

pontos			= 0;
pontos_total	= 0;
fazer = true;
estrelas	= [0, 0, 0];
for (var i = 0; i < shapes; i++)
{
	estrelas[i] = 1;
}



angulo = 0;
extra = 0;

fim = false;

//Pause
global.pause = false;



menu_x = 0;
menu_y = 0;

//Alpha do segundo botao
alpa = 0;


//Desenhando a cerca
var tiles = layer_tilemap_get_id("Cerca");
tilemap_tileset(tiles, asset_get_index("tl_mundo_"+string(mundo)));

//Checando meu tamanho
var size	= 32;
var w		= sprite_width;
var cols	= w div size;

for (var i = 0; i < cols; i++)
{
	if (i == 0)
	{
		tilemap_set(tiles, 1, (bbox_left div 32) + i, (bbox_bottom div 32));
	}
	else if (i == cols-1)
	{
		tilemap_set(tiles, 6, (bbox_left div 32) + i, (bbox_bottom div 32));
	}
	else
	{
		var n = irandom(3)+1;
		tilemap_set(tiles, 1 + n, (bbox_left div 32) + i, (bbox_bottom div 32));
	}
}