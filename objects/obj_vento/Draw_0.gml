/// @description Insert description here
// You can write your code in this editor


//draw_self();
//achando a base
var xx = x - lengthdir_x(sprite_width/2, image_angle);
var yy = y - lengthdir_y(sprite_width/2, image_angle);
			//draw_set_color(c_white);
			//physics_draw_debug()
draw_set_color(c_white);
//draw_circle(xx, yy, sprite_height/2, false);

draw_sprite_ext(spr_ventilador, get_timer()/80000, xx, yy, 1, 1, image_angle-90, c_white, 1);




/*
draw_set_color(c_red);
draw_set_alpha(.1);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_color(-1);

