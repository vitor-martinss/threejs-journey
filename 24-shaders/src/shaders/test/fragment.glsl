//precision mediump float;
uniform vec3 uColor;
uniform sampler2D uTexture;
varying vec2 vUv;
varying float vElevation;
// these variable below is for a terrain example
//varying float vRandom;

void main()
{
	// these was for a terrain example
	// gl_FragColor = vec4(0.5, vRandom * 0.5, 1.0, 1.0);
	vec4 textureColor = texture2D(uTexture, vUv);
	textureColor.rgb *= vElevation * 2.0 + 0.5;
	gl_FragColor = textureColor;

	// gl_FragColor = vec4(vUv, 1.0, 1.0);
}