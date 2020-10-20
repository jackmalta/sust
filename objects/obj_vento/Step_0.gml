/// @description Insert description here
// You can write your code in this editor


//Colisão com o outro
var outro = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_shapes, 0, 1);

if (outro)
{
	with(outro)
	{
		dir = other.image_angle;
		var xx = lengthdir_x(other.forca, dir);
		var yy = lengthdir_y(other.forca, dir);
	
		physics_apply_force(x, y, xx, yy);
	}
}



if !(get_timer()/100000 % 10)
{
	var larg	= sprite_get_width(spr_leaf)/2;	
	var xx		= random_range(bbox_left, bbox_right);
	var yy		= random_range(bbox_top, bbox_bottom);
	var scala	= random_range(1, 1.5);
	
	var f			= instance_create_layer(xx, yy, layer, obj_folha);
	f.image_xscale	= scala;
	f.image_yscale	= scala;
	f.image_angle	= image_angle-90;
	//f.image_index	= irandom(sprite_get_number(spr_leaf));
}