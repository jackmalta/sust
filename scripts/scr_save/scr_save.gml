function scr_save() {


	//Guardando as informações na ds grid
	ini_open("game.ini");
	ini_write_string("shapes", "shapes", ds_grid_write(global.leveis));
	ini_close();


}
