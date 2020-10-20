///@desc criação_da_fixture
///@arg shape_1_rectangle_2_circle
///@arg sprite_width
///@arg sprite_height
///@arg density
///@arg friction
///@arg bouncyness
///@arg linear_damp
///@arg angular_damp
///@arg target
///@arg [sensor]
function scr_create_simple_fixture() {


	var shape	= argument[0];
	var spr_w	= argument[1];
	var spr_h	= argument[2];
	var den		= argument[3];
	var fric	= argument[4];
	var rest	= argument[5];
	var lin		= argument[6];
	var ang		= argument[7];
	var target	= argument[8];
	var sensor = false;  if (argument_count > 9) sensor = argument[9];

	var fixture = physics_fixture_create();
	if (shape == 1)
		physics_fixture_set_box_shape(fixture, spr_w/2, spr_h/2);
	else
		physics_fixture_set_circle_shape(fixture, spr_w/2);
	
	physics_fixture_set_density(fixture, den);
	physics_fixture_set_friction(fixture, fric);
	physics_fixture_set_restitution(fixture, rest);
	physics_fixture_set_linear_damping(fixture, lin);
	physics_fixture_set_angular_damping(fixture, ang);
	physics_fixture_set_sensor(fixture, sensor);

	physics_fixture_bind(fixture, target);

	physics_fixture_delete(fixture);


}
