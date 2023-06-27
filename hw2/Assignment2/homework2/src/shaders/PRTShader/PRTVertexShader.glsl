attribute vec3 aVertexPosition;
attribute vec3 aNormalPosition;
attribute vec2 aTextureCoord;
attribute mat3 aPrecomputeLT;

uniform mat3 uLR;
uniform mat3 uLG;
uniform mat3 uLB;

uniform mat4 uModelMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uProjectionMatrix;
uniform mat4 uMoveWithCamera;

varying highp vec3 albedo;


vec3 getLight() {
    vec3 res = vec3(
    dot(uLR[0], aPrecomputeLT[0]) + dot(uLR[1], aPrecomputeLT[1]) + dot(uLR[2], aPrecomputeLT[2]),
    dot(uLG[0], aPrecomputeLT[0]) + dot(uLG[1], aPrecomputeLT[1]) + dot(uLG[2], aPrecomputeLT[2]),
    dot(uLB[0], aPrecomputeLT[0]) + dot(uLB[1], aPrecomputeLT[1]) + dot(uLB[2], aPrecomputeLT[2])
    );

    return res;
}

void main(void){
    albedo = getLight();

    gl_Position = uProjectionMatrix * uViewMatrix * uModelMatrix * vec4(aVertexPosition, 1.0);
}