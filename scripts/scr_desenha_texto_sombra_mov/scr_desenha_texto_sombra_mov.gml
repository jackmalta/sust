///@arg x
///@arg y
///@arg txt
///@arg cor
///@arg sombra_cor
///@arg tamanho_mov
function scr_desenha_texto_sombra_mov() {


	var xx		= argument[0];
	var yy		= argument[1];
	var txt		= argument[2];
	var cor1	= argument[3];
	var cor2	= argument[4];
	var tam		= 0; if (argument_count > 5) tam = argument[5];

	draw_set_color(cor2);
	draw_set_alpha(.3);
	draw_text_transformed(xx + sin( 3 * get_timer()/1000000) * tam, yy, txt, 1.2, 1.2, 0);
	draw_set_alpha(1);
	draw_set_color(cor1);
	draw_text(xx, yy, txt);
	draw_set_color(-1);


}
