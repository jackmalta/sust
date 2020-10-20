///@arg x
///@arg y
///@arg angulo
///@arg cor
///@arg alpha
///@arg radius
function scr_draw_weird(argument0, argument1, argument2, argument3, argument4, argument5) {

	gpu_set_blendmode(bm_subtract);
	draw_primitive_begin(pr_linestrip);
	for (var i = 0; i < argument5; i++)
	{
		draw_set_color(argument3);
		draw_set_alpha(argument4);
		var xx = lengthdir_x(i, (i * argument2) + 90);
		var yy = lengthdir_y(i, (i * argument2) + 90);
	
		draw_vertex(argument0 + xx, argument1 + yy);
		draw_set_color(c_white);
		draw_set_alpha(1);
	}

	draw_primitive_end();
	gpu_set_blendmode(bm_normal);


}
