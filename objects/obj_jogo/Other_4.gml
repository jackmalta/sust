/// @description Insert description here
// You can write your code in this editor


camera_set_view_size(view_camera[0], view_w, view_h);
surface_resize(application_surface, view_w, view_h);

//Criando o background
var bg  = spr_bg_default;

if (room != rm_mundos)
{
	var str = "spr_bg_mundo_" + string_char_at(room_get_name(room), 10);
	bg = asset_get_index(str);
}

var lay = layer_get_id("background");
var back_id = layer_background_get_id(lay);
layer_background_change(back_id, bg);
layer_background_stretch(back_id, 1);
layer_background_blend(back_id, c_white);