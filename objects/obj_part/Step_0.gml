/// @description Insert description here
// You can write your code in this editor

phy_speed_x *= .93;
phy_speed_y -= .03;

image_alpha *= .95;

image_xscale -= .01;
image_yscale -= .01;

if (image_alpha <= 0.01) instance_destroy();


