#ifdef GL_ES
precision mediump float;
#endif

varying highp vec3 albedo;

vec3 gammaCorrection(vec3 color){
    return pow(color, vec3(1. / 2.2));
}

void main(){
    gl_FragColor = vec4(gammaCorrection(albedo), 1.);
}