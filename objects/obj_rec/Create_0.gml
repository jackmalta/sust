/// @description Insert description here
// You can write your code in this editor


//Singleton pattern
if (instance_number(obj_rec) > 1) instance_destroy();

//Gif atual
atual = 0;

//Ativo
ativo = 0;
//Gif
gif_image = noone;


//criando a ini
ini_open("gif.ini");
atual = ini_read_real("Gif", "atual", 0);
ini_close();