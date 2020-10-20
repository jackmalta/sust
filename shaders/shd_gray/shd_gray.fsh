//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec3 val		= vec3(.2, .7, .06);
	vec4 cor_base	= v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec3 cor_nova	= vec3(cor_base.rgb);
	float val_fim	= dot(cor_nova, val);
    gl_FragColor	= vec4(val_fim, val_fim, val_fim, cor_base.a);
}
