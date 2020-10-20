///@arg x
///@arg y
///@arg value
///@arg total
///@arg radius
///@arg alpha
///@arg [color];
function scr_draw_circle() {

	var xx		= argument[0];
	var yy		= argument[1];
	var valor	= argument[2];
	var total	= argument[3];
	var raio	= argument[4];
	var alpha	= argument[5];

	if (valor > 0)
	{
		var num		= 80;
		var size	= 360/num;
	
		var val		= (valor/total) * num;
		var val_rgb = (valor/total) * 255;
		var color	= make_color_rgb(255 - val_rgb, val_rgb, 50); if (argument_count > 6) color = argument[6];
		var cor		= color;
	
		if (val > 1)
		{
			draw_set_color(cor);
			draw_set_alpha(alpha);
		
			draw_primitive_begin(pr_trianglefan);
			draw_vertex(xx, yy);
		
			for (var i = 0; i <= val; i++)
			{
				var dir	= (i * size) + 90;
				var x2	= lengthdir_x(raio, dir);	
				var y2	= lengthdir_y(raio, dir);
				draw_vertex(xx + x2, yy + y2);
			}
			draw_primitive_end();
		}
	
		draw_set_alpha(1);
		draw_set_color(-1);
	}


}
