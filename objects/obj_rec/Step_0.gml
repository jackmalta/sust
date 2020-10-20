/// @description Insert description here
// You can write your code in this editor


var x_mouse = display_mouse_get_x() - window_get_x();
var y_mouse = display_mouse_get_y() - window_get_y();

var mouse_sobre = point_in_circle(x_mouse, y_mouse , 20, 20, 20);
var mouse_click = mouse_check_button_pressed(mb_left);


if (ativo)
{
	//Piscar
	image_alpha = abs(sin(get_timer()/1000000));
	
	
	if (gif_image != noone)
	{
		//Esse if permite pular um frame por vez.
		//if (round(get_timer()/100000) mod 2)
			gif_add_surface(gif_image, application_surface, 2, 0, 0, 0);
	}
	else
	{
		gif_image = gif_open(room_width, room_height);
	}
	
	if (mouse_sobre)
	{
		if (mouse_click)
		{
			ativo = false;
			var nome = "MeuGiff_" + string(atual) + ".gif";
			gif_save(gif_image, nome);
			show_message("Gif salva em " + string(filename_dir(nome)));
			atual++;
			ini_open("gif.ini");
			ini_write_real("Gif", "atual", atual);
			ini_close();
		}
	}
	
}
else
{
	image_alpha = 1;
	
	if (mouse_sobre)
	{
		image_alpha = .8;
		if (mouse_click)
		{
			ativo = true;
			
			//Room width e height podem ser alternados por view width e height se você esta usando view
			gif_image = gif_open(room_width, room_height);
		}
	}
}


