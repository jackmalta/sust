/// @description Insert description here
// You can write your code in this editor

event_inherited();
var fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);

//Pontos
physics_fixture_add_point(fixture, 0, (-sprite_height/2) * .95); //Top middle
physics_fixture_add_point(fixture, sprite_width/2 * .95, sprite_height/2 * .95); //Bottom right
physics_fixture_add_point(fixture, -sprite_width/2 * .95, sprite_height/2 * .95); //Bottom left

	
physics_fixture_set_density(fixture, .8);
physics_fixture_set_friction(fixture, .1);
physics_fixture_set_restitution(fixture, .1);
physics_fixture_set_linear_damping(fixture, .2);
physics_fixture_set_angular_damping(fixture, .2);

physics_fixture_bind(fixture, id);

physics_fixture_delete(fixture);