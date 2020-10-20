/// @description Init
event_inherited();



//-----------------------------------------------------------------------------
#region TITLE, INFO, CORNER, CLICK (optional):
//-----------------------------------------------------------------------------
title_text	= @"Blur 2 Pass
				2xN, iso-weighted, Gauss
				Very slow, blocky";

info_text	= @"Blur 2: 2xN, Iso-weighted, Gauss:

				Blur all pixels in a NxN kernel with the same weight on each sample one pass
				Calculate a NxN kernel is very inefficient";

corner_text	= "";			// if wanted/needed, update this in a step or draw event

click_region_gui	= true; // false: mouse click region in room space | true: mouse click region in gui space
deselectable		= true;	// Allow deselecting by clicking on the module again
#endregion
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
#region SPRITE & SHADER (mandatory):
//-----------------------------------------------------------------------------
shader         = shd_blur_2_pass;                                  // Or how ever the shader was named

u_blur_vector  = shader_get_uniform(shader, "blur_vector"); // 1,0: horizontal blur | 0,1: vertical blur
u_texel_size   = shader_get_uniform(shader, "texel_size");  // if texel size never changes: hardcode into the shader

image_w        = surface_get_width(application_surface);
image_h        = surface_get_height(application_surface);
texel_w        = 1 / image_w;
texel_h        = 1 / image_h;

srf_ping       = -1;                                        // needed for first blur stage and surface scaling
srf_pong       = -1;                                        // only needed for surface scaling

srf_scale      = 1;                                         // surface scale factor
srf_scale_prev = 1;                                         // only needed if surface scale can change

//application_surface_draw_enable(false);                     // needed for post processing


#endregion
//-----------------------------------------------------------------------------
