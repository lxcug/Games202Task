class PRTMaterial extends Material {
    constructor(vertexShader, fragmentShader) {
        super({
                'uLR': { type: 'updatedInRealTime', value: null },
                'uLG': { type: 'updatedInRealTime', value: null },
                'uLB': { type: 'updatedInRealTime', value: null },
            },
            ['aPrecomputeLT'], vertexShader, fragmentShader, null);
    }
}

async function buildPRTMaterial(vertexPath, fragmentPath) {
    let vertexShader = await getShaderString(vertexPath);
    let fragmentShader = await getShaderString(fragmentPath);
    return new PRTMaterial(vertexShader, fragmentShader);
}