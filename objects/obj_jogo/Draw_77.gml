/// @description Insert description here
// You can write your code in this editor

xscale = display_get_width() / sprite_get_width(spr_bg_default);
yscale = display_get_height() / sprite_get_height(spr_bg_default);
draw_sprite_ext(spr_bg_default, 0, 0, 0, xscale, yscale, 0, c_white, 1);


