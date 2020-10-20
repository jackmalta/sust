/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_font(fnt_explica);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_color(-1);
var marg = 250;
draw_set_halign(1);
draw_set_valign(1);

//draw_text_ext_transformed_color(room_width/2, room_height/2, texto, 25, room_width - marg*2, size, size, 0, c_red, c_white, c_red, c_white, alpha);
draw_text_ext_transformed_color(room_width/2, room_height/2, texto, 25, room_width - marg*2, size + angle, size + angle, 0, c_white, c_red, c_white, c_red, 1);
draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
