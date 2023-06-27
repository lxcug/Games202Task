function getRotationPrecomputeL(precompute_L, rotationMatrix) {
	// rotationMatrix 在WebGLRenderer.js line55注释说是天空盒的旋转矩阵, 但是实际是作用于物体上的, 是物体的旋转矩阵, 对应的SH旋转矩阵为rotationMatrix的逆矩阵
	let rotationMatrix_inverse = mat4.create()
	mat4.invert(rotationMatrix_inverse, rotationMatrix)
	let r = mat4Matrix2mathMatrix(rotationMatrix_inverse);

	let shRotateMatrix3x3 = computeSquareMatrix_3by3(r);
	let shRotateMatrix5x5 = computeSquareMatrix_5by5(r);

	let result = [];
	for(let i = 0; i < 9; i++) {
		result[i] = [];
	}

	for(let i = 0; i < 3; i++) {
		let L_SH_R_3 = math.multiply([precompute_L[1][i], precompute_L[2][i], precompute_L[3][i]], shRotateMatrix3x3);
		let L_SH_R_5 = math.multiply([precompute_L[4][i], precompute_L[5][i], precompute_L[6][i], precompute_L[7][i], precompute_L[8][i]], shRotateMatrix5x5);

		result[0][i] = precompute_L[0][i];
		result[1][i] = L_SH_R_3._data[0];
		result[2][i] = L_SH_R_3._data[1];
		result[3][i] = L_SH_R_3._data[2];
		result[4][i] = L_SH_R_5._data[0];
		result[5][i] = L_SH_R_5._data[1];
		result[6][i] = L_SH_R_5._data[2];
		result[7][i] = L_SH_R_5._data[3];
		result[8][i] = L_SH_R_5._data[4];
	}

	return result;
}

function computeSquareMatrix_3by3(rotationMatrix) { // 计算方阵SA(-1) 3*3

	// 1、pick ni - {ni}
	let n1 = [1, 0, 0, 0]; let n2 = [0, 0, 1, 0]; let n3 = [0, 1, 0, 0];

	// 2、{P(ni)} - A  A_inverse
	let P_n1 = SHEval(n1[0], n1[1], n1[2], 3);
	let P_n2 = SHEval(n2[0], n2[1], n2[2], 3);
	let P_n3 = SHEval(n3[0], n3[1], n3[2], 3);
	let P_ni = math.matrix([
		[P_n1[1], P_n2[1], P_n3[1]],
		[P_n1[2], P_n2[2], P_n3[2]],
		[P_n1[3], P_n2[3], P_n3[3]]
	]);
	let A_inverse = math.inv(P_ni);

	// 3、用 R 旋转 ni - {R(ni)}
	let R_n1 = math.multiply(rotationMatrix, n1);
	let R_n2 = math.multiply(rotationMatrix, n2);
	let R_n3 = math.multiply(rotationMatrix, n3);

	// 4、R(ni) SH投影 - S
	let P_R_n1 = SHEval(R_n1[0], R_n1[1], R_n1[2], 3);
	let P_R_n2 = SHEval(R_n2[0], R_n2[1], R_n2[2], 3);
	let P_R_n3 = SHEval(R_n3[0], R_n3[1], R_n3[2], 3);
	let S = math.matrix([
		[P_R_n1[1], P_R_n2[1], P_R_n3[1]],
		[P_R_n1[2], P_R_n2[2], P_R_n3[2]],
		[P_R_n1[3], P_R_n2[3], P_R_n3[3]]
	]);

	// 5、S*A_inverse
	return math.multiply(S, A_inverse);
}

function computeSquareMatrix_5by5(rotationMatrix) { // 计算方阵SA(-1) 5*5

	// 1、pick ni - {ni}
	let k = 1 / math.sqrt(2);
	let n1 = [1, 0, 0, 0]; let n2 = [0, 0, 1, 0]; let n3 = [k, k, 0, 0];
	let n4 = [k, 0, k, 0]; let n5 = [0, k, k, 0];

	// 2、{P(ni)} - A  A_inverse
	let P_n1 = SHEval(n1[0], n1[1], n1[2], 5);
	let P_n2 = SHEval(n2[0], n2[1], n2[2], 5);
	let P_n3 = SHEval(n3[0], n3[1], n3[2], 5);
	let P_n4 = SHEval(n4[0], n4[1], n4[2], 5);
	let P_n5 = SHEval(n5[0], n5[1], n5[2], 5);
	let P_ni = math.matrix([
		[P_n1[4], P_n2[4], P_n3[4], P_n4[4], P_n5[4]],
		[P_n1[5], P_n2[5], P_n3[5], P_n4[5], P_n5[5]],
		[P_n1[6], P_n2[6], P_n3[6], P_n4[6], P_n5[6]],
		[P_n1[7], P_n2[7], P_n3[7], P_n4[7], P_n5[7]],
		[P_n1[8], P_n2[8], P_n3[8], P_n4[8], P_n5[8]]
	]);
	let A_inverse = math.inv(P_ni);

	// 3、用 R 旋转 ni - {R(ni)}
	let R_n1 = math.multiply(rotationMatrix, n1);
	let R_n2 = math.multiply(rotationMatrix, n2);
	let R_n3 = math.multiply(rotationMatrix, n3);
	let R_n4 = math.multiply(rotationMatrix, n4);
	let R_n5 = math.multiply(rotationMatrix, n5);

	// 4、R(ni) SH投影 - S
	let P_R_n1 = SHEval(R_n1[0], R_n1[1], R_n1[2], 5);
	let P_R_n2 = SHEval(R_n2[0], R_n2[1], R_n2[2], 5);
	let P_R_n3 = SHEval(R_n3[0], R_n3[1], R_n3[2], 5);
	let P_R_n4 = SHEval(R_n4[0], R_n4[1], R_n4[2], 5);
	let P_R_n5 = SHEval(R_n5[0], R_n5[1], R_n5[2], 5);

	let S = math.matrix([
		[P_R_n1[4], P_R_n2[4], P_R_n3[4], P_R_n4[4], P_R_n5[4]],
		[P_R_n1[5], P_R_n2[5], P_R_n3[5], P_R_n4[5], P_R_n5[5]],
		[P_R_n1[6], P_R_n2[6], P_R_n3[6], P_R_n4[6], P_R_n5[6]],
		[P_R_n1[7], P_R_n2[7], P_R_n3[7], P_R_n4[7], P_R_n5[7]],
		[P_R_n1[8], P_R_n2[8], P_R_n3[8], P_R_n4[8], P_R_n5[8]]
	]);

	// 5、S*A_inverse
	return math.multiply(S, A_inverse);
}

function mat4Matrix2mathMatrix(rotationMatrix){

	let mathMatrix = [];
	for(let i = 0; i < 4; i++){
		let r = [];
		for(let j = 0; j < 4; j++){
			r.push(rotationMatrix[i*4+j]);
		}
		mathMatrix.push(r);
	}

	// Reference: https://www.drflower.top/posts/9f24be76/#%E7%8E%AF%E5%A2%83%E5%85%89%E7%90%83%E8%B0%90%E6%97%8B%E8%BD%AC
	return math.transpose(mathMatrix)  // 行优先和列优先转换
}

function getMat3ValueFromRGB(precomputeL) {

    let colorMat3 = [];
    for(var i = 0; i<3; i++){
        colorMat3[i] = mat3.fromValues( precomputeL[0][i], precomputeL[1][i], precomputeL[2][i],
										precomputeL[3][i], precomputeL[4][i], precomputeL[5][i],
										precomputeL[6][i], precomputeL[7][i], precomputeL[8][i] );
	}
    return colorMat3;
}