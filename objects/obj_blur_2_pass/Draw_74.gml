/// @description Insert description here
// You can write your code in this editor

// Create ping pong surfaces and resize if needed:
//-------------------------------------------------
if (!surface_exists(srf_ping)) {
    srf_ping = surface_create(image_w * srf_scale, image_h * srf_scale);
    draw_clear(c_black);
    srf_scale_prev = srf_scale;
}

if (!surface_exists(srf_pong)) {
    srf_pong = surface_create(image_w * srf_scale, image_h * srf_scale);
    draw_clear(c_black);
    srf_scale_prev = srf_scale
}

if (srf_scale_prev != srf_scale) { // resize ping pong if scale factor has changed
    surface_resize(srf_ping, image_w * srf_scale, image_h * srf_scale);
    surface_resize(srf_pong, image_w * srf_scale, image_h * srf_scale);
    srf_scale_prev = srf_scale
}

gpu_set_tex_filter(true); // for interpolated scaling | can be removed if the game is set to interpolation

// 1st pass: downscale:
// AppSrf -> ping
//-------------------------------------------------
surface_set_target(srf_ping);
draw_surface_stretched(application_surface, 0, 0, round(image_w * srf_scale), round(image_h * srf_scale));
surface_reset_target();

// 2nd pass: horizontal:
// ping -> pong
//-------------------------------------------------
shader_set(shader);
shader_set_uniform_f(u_blur_vector, 1, 0); // 1,0: horizontal blur
shader_set_uniform_f(u_texel_size, texel_w/srf_scale, texel_h/srf_scale);

surface_set_target(srf_pong);
draw_surface(srf_ping, 0, 0);
surface_reset_target();

// 3rd pass: vertical:
// pong -> ping
//-------------------------------------------------
shader_set_uniform_f(u_blur_vector, 0, 1); // 0,1: vertical blur
                                           // texel size stays the same
surface_set_target(srf_ping);
draw_surface(srf_pong, 0, 0);
surface_reset_target();

// 4th pass: scale up:
// ping -> AppSrf / Screen
//-------------------------------------------------
shader_reset();
draw_surface_stretched(srf_ping, 0, 0, image_w, image_h);
