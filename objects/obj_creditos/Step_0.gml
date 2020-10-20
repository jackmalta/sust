/// @description Insert description here
// You can write your code in this editor
size += 0.0015;
angle = sin(get_timer()/500000) * .03;


if (mouse_check_button_released(mb_any)) instance_destroy();