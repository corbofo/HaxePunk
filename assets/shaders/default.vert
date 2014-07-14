#ifdef GL_ES
	precision mediump float;
#endif

attribute vec3 aVertexPosition;
attribute vec2 aTexCoord;

varying vec2 vTexCoord;

uniform mat4 uMatrix;

void main(void)
{
	vTexCoord = aTexCoord;
	gl_Position = uMatrix * vec4(aVertexPosition, 1.0);
}
