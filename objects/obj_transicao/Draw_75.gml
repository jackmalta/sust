/// @description Insert description here
// You can write your code in this editor


var w = camera_get_view_width(view_camera[0]) * 1.5;
var h = camera_get_view_height(view_camera[0]) * 1.5;


//draw_set_alpha(image_alpha);
//draw_rectangle(-100, -100, w+100, h+100, false);

//Desenhando circulo
draw_set_color(c_yellow);
draw_circle(-w + pos, h*3 - pos, w, false);


draw_set_alpha(1);
draw_set_color(-1);