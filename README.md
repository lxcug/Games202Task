# Games202作业记录

## 作业2 PRT(Precomputed Radiance Transfer)

### 1. 计算Lighting的SH coefficients

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627171208.png)

> 会用到的库函数
>
> sh::ToSphericalCoords(const Eigen::Vector3d& dir, double* phi, double* theta) -> void 将笛卡尔坐标系下的向量转为球面坐标系方向
> sh::GetIndex(int l, int m) -> int 计算l阶的m球谐函数对应的index
> sh::EvalSH(int l, int m, double phi, double theta) -> double 计算l, m对应的球谐函数在theta, phi方向的值

首先将cubemap的某个像素下的光照方向转为球面坐标(theta, phi), 注意需要将temp单位化

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627171150.png)

计算cubemap上一个pixel对应球面上的面积

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627171133.png)

SH的系数为环境光Le与SH basis的乘积在半球空间上的积分，这里用求和的形式，对于每一个piexl计算一次分量然后求和

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627171106.png)

完整代码

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627171051.png)

最外层循环将cubemap的6个面对应的SH各阶系数同存储在SHCoeffiecents中，接下来的两次循环遍历一张cubemap的像素，计算该像素对SH basis系数的贡献，可以理解为计算cubemap的一个面展开为SH basis对应的系数

###  2. Diffuse Unshadowed

对于diffuse材质的物体，不考虑visibility，LightTransport项可以化简为$\frac{\rho}{\pi}$max(n$\cdot$i, 0)

只需要在匿名函数shFunc中计算LightTransport在给定方向(theta, phi)下的值即可，Diffuse Unshadowed只需返回max(n$\cdot$i, 0)

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627171026.png)

<img src="https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627171002.png" style="zoom:67%;" />

Lighting部分之所以不用consine term采样的方法做是因为通过随机采样$w_i$不好计算其与cube map的交点(如果做的话需要做射线与平面求交，还需要进行插值处理)，进而得不到入射的radiance。

### 3. Diffuse Shadowed

与Unshadowed相比多了visibility项，从shading point向wi发射一条ray判断是否与场景相交

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627170931.png)

### 4. Inter-reflection

**Reference: https://www.cse.chalmers.se/~uffe/xjobb/Readings/GlobalIllumination/Spherical%20Harmonic%20Lighting%20-%20the%20gritty%20details.pdf**

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627170849.png)

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgs20230627170906.png)

> 基本思想：如何计算一个vertex的间接Light Transport？
>
> 从该vertex发射一条ray(direction为wi)，如果ray与空间中的三角形相交，由于光线可逆，这个交点会向vertex发射radiance，用barycentric intepolation计算交点的SH Coefficients，那么交点对vertex SH Coeffs的贡献为交点的SH Coeffs乘上cosine term(dot(wi, vertex的normal))。

写一个递归函数来计算每个点Indirect Light Transport即可，最后将Indir的LT加到Dir的LT上，记住Indir LT不要忘记乘上$\frac{1}{\pi}$。

### 5. 实时球谐光照计算

球谐函数的两个重要性质：

1. 旋转不变性；

2. 对于每一个band上的SH Coeffs，其旋转后的SH Coeffs都可以被同band上的SH Coeffs线性表示。

由于性质1我们求旋转后的天空盒函数投影到SH的系数可以转换为求天空盒函数投影到SH上的系数得旋转矩阵，由于性质2旋转SH Coeffs是线性变换
$$
取l\ band上的2l+1个向量n_i\\
R(P(n_i)) = P(R(n_i))\ \ \ 性质1\\
R(P(n_i)) = MP(n_i)\ \ \ 性质2\\
因此有\\M(P(n_i)) = P(R(n_i))
$$
为什么要利用性质1转换成先旋转再投影，个人理解是先投影的话SH Coeffs向量过长(l=3 向量长度为9)，无法直接用3阶(4阶)的旋转矩阵作用在向量上。

### 6. Tips

1. 自己新建材质的js文件需要手动在index.html中进行加载，否则加载不出mary模型；
2. tools.js中的mat4Matrix2mathMatrix函数未考虑行列优先的不同，glMatrix是列优先，math.js是行优先，因此此函数返回值需要transpose，同样，在WebRenderer.js中将旋转后的PrecomputeL_RGB3是行优先(9 * 3), 传入uniform时需要转置；
3. 在WebGLRenderer.js line55注释中将rotationMatrix解释为天空盒的旋转矩阵, 但是实际是作用于物体上的, 是物体的旋转矩阵, 对应的天空盒旋转矩阵为rotationMatrix的逆矩阵。

## 作业3 SSR(Screen Space Reflection)

![](https://raw.githubusercontent.com/lxcug/imgs/main/imgsIMG_7864.JPG)