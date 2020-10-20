///@arg x
///@arg y
///@arg txt
///@arg cor
///@arg sombra_cor
function scr_desenha_texto_sombra() {


	var xx		= argument[0];
	var yy		= argument[1];
	var txt		= argument[2];
	var cor1	= argument[3];
	var cor2	= argument[4];

	draw_set_color(cor2);
	draw_set_alpha(1);
	draw_text_transformed(xx + 3, yy + 3, txt, 1, 1, 0);
	draw_set_alpha(1);
	draw_set_color(cor1);
	draw_text(xx, yy, txt);
	draw_set_color(-1);


}
