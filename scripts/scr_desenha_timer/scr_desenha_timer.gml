///@desc desenha o timer
///@arg x
///@arg y
///@arg radius
///@arg extra_radius
function scr_desenha_timer(argument0, argument1, argument2, argument3) {

	var x1	= argument0;
	var y1	= argument1;
	var r	= argument2;
	var xr	= argument3;
	var cor	= c_black;
	//Checar mouse sobre
	if (device_mouse_x_to_gui(0) > x1 - r && device_mouse_x_to_gui(0) < x1 + r && device_mouse_y_to_gui(0) > y1 - r && device_mouse_y_to_gui(0) < y1 + r)
	{
		cor = c_fuchsia;	
		if (mouse_check_button_pressed(mb_left))
		{
			//global.pause = !global.pause;
		}
	}

	extra = xr * sin(1.5 * get_timer()/1000000);

	draw_set_alpha(.4);
	draw_circle_color(x1, y1, r + extra, cor, cor, cor);
	draw_set_alpha(1);

	scr_draw_circle(x1, y1, level_tempo, level_limite, r + extra, .5);
	draw_circle(x1, y1, r + extra, true);

	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_ext_transformed(x1, y1, "MENU", 20, 100, 1 + abs(extra*.02), 1 + abs(extra*.02), 0);
	draw_set_valign(-1);
	draw_set_halign(-1);


}
