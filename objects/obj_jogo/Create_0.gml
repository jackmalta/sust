/// @description Insert description here
// You can write your code in this editor

var base_w	= 1280;
var base_h	= 720;


explica = false;

var disp_w	= display_get_width(); 
var disp_h	= display_get_height();

var r		= disp_w/disp_h;

view_h	= min(base_h, disp_h);
view_w	= view_h * r;

camera_set_view_size(view_camera[0], view_w, view_h);
surface_resize(application_surface, view_w, view_h);



scr_load();

//Total de shapes
total = ds_grid_get_sum(global.leveis, 0, 0, ds_grid_width(global.leveis)-1, ds_grid_height(global.leveis)-1);

//menu de opções
blur		= noone;
cor			= c_white;
global.som  = 5;
global.sfx  = 5;
global.pause= false;

//Tocando a música
som_fundo = audio_play_sound(snd_001, 1, 1);
audio_sound_gain(som_fundo, global.som*.1, 2);
draw_set_font(fnt_shape);