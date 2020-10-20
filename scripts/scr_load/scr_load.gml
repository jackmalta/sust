function scr_load() {

	global.leveis = ds_grid_create(5, 10);
	ds_grid_clear(global.leveis, 3);

	ini_open("game.ini");
	ds_grid_read(global.leveis, ini_read_string("shapes", "shapes", 3));

	ini_close();


}
