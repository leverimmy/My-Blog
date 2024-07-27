
## 第 1 题

证明: $\left|\int_L\mathbf{V}\cdot\text{d}{\mathbf{r}}\right| \le \int_{L}\|\mathbf{V}\|\text{d}{l}$.

**证明**

设 $\mathbf{n}$ 为 $\mathbf{V}$ 的单位法向量, $\mathbf{t}$ 为 $\mathbf{r}$ 的切向量. 由于 $\mathbf{V}\cdot \text{d}{\mathbf{r}} = \|\mathbf{V}\|\text{d}{l}\cdot\cos\left<\mathbf{n}, \mathbf{t}\right> \le \|\mathbf{V}\|\text{d}{l}$, 故 $\left|\int_L\mathbf{V}\cdot\text{d}{\mathbf{r}}\right| \le \int_{L}\|\mathbf{V}\|\text{d}{l}$.

## 第 2 题

设曲面 $S:z = f(x, y), (x, y) \in D$, $S^{+}$ 的法方向向上, $F \in C(\mathbb{R}^3)$, 求证:

(1) $\iint\limits_{S^{+}}F(x, y, z)\text{d}{y}\wedge\text{d}{z} = -\iint\limits_{D}F(x, y, f(x, y))\dfrac{\partial f}{\partial x}\text{d}{x}\text{d}{y}$;

(2) $\iint\limits_{S^{+}}F(x, y, z)\text{d}{z}\wedge\text{d}{x} = -\iint\limits_{D}F(x, y, f(x, y))\dfrac{\partial f}{\partial y}\text{d}{x}\text{d}{y}$.

**证明**

(1) $\mathbf{n} = (-f_x, -f_y, 1)$ 为 $S^{+}$ 的法向量.

$$
\begin{aligned}
    \iint\limits_{S^{+}}F(x, y, z)\text{d}{y}\wedge\text{d}{z} & = \iint\limits_{D}(F, 0, 0)\cdot \dfrac{\mathbf{n}}{\left|\mathbf{n}\right|}\text{d}{S} \\
    & = \iint\limits_{D}F\cdot\dfrac{-f_x}{\left|\mathbf{n}\right|}\cdot \left|\mathbf{n}\right|\text{d}{x}\text{d}{y} \\
    & = -\iint\limits_{D}F(x, y, f(x, y))\dfrac{\partial f}{\partial x}\text{d}{x}\text{d}{y}
\end{aligned}
$$

(2) 由 (1) 的对称性知命题得证.

## 第 3 题

设闭曲线 $L:x=x(t), y = y(t), t\in[\alpha, \beta]$, $L^{+}$ 的方向为 $t$ 增大的方向, 证明: 由 $L$ 围成区域的面积可以表示成 $S = \dfrac{1}{2}\int_{\alpha}^{\beta}\begin{vmatrix}x(t) & y(t) \\ x'(t) & y'(t)\end{vmatrix}\text{d}{t}$.

**证明**

由于

$$
\begin{aligned}
    S & = \oint_{L^{+}}x\text{d}{y} - y\text{d}{x} \\
    & = \int_{\alpha}^{\beta}(x(t)y'(t) - y(t)x'(t))\text{d}{t} \\
    & = \dfrac{1}{2}\int_{\alpha}^{\beta}\begin{vmatrix}x(t) & y(t) \\ x'(t) & y'(t)\end{vmatrix}\text{d}{t}
\end{aligned}
$$

故命题得证.

## 第 4 题

设 $L\subset \mathbb{R}^2$ 为光滑闭曲线, 逆时针为正向, $\mathbf{n}$ 为 $L$ 的外法线单位向量, $\mathbf{a}$ 为一固定向量, 求证: $\oint_{L}\cos\left<\mathbf{n}, \mathbf{a}\right>\text{d}{l} = 0$.

**证明**

不妨设 $\mathbf{a} = (a_x, a_y)$ 为单位向量. 设 $L$ 围成的区域为 $D$. $\mathbf{n} = \left(-\dfrac{\text{d}{y}}{\left|\text{d}{l}\right|}, \dfrac{text{d}{x}}{\left|\text{d}{l}\right|}\right)$. 由 Green 定理

$$
\begin{aligned}
    \oint_{L}\cos\left<\mathbf{n}, \mathbf{a}\right>\text{d}{l} & = \oint_{L}a_y\text{d}{x} - a_x\text{d}{y} \\
    & = \iint\limits_{D}0\text{d}{x}\text{d}{y} \\
    & = 0
\end{aligned}
$$

## 第 5 题

设 $S$ 为闭曲面, $\mathbf{a}$ 为常向量, $\mathbf{n} = (\cos\alpha, \cos\beta, \cos\gamma)$ 为 $S$ 的单位法向量, 证明: $\oint_{S}\cos\left<\mathbf{n}, \mathbf{a}\right>\text{d}{S} = 0$. % 这里符号有问题, 应该是 $\oiint$

**证明**

不妨设 $\mathbf{a} = (a_x, a_y)$ 为单位向量. 设 $S$ 为成的区域为 $\Omega$. 由 Gauss 定理

$$
\begin{aligned}
    \oint_{S}\cos\left<\mathbf{n}, \mathbf{a}\right>\text{d}{S} & = \oint_{S}(a_x\cos\alpha, a_y\cos\beta, a_z\cos\gamma)\cdot\text{d}{S} \\
    & = \iiint\limits_{\Omega}0\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = 0
\end{aligned}
$$

## 第 8 题

设 $\Omega \subset \mathbb{R}^3$ 是一空间区域, $\partial\Omega$ 为逐段光滑曲线, $\mathbf{n}$ 为 $\Omega$ 的单位外法向, $u, v \in C^2(\Omega)$, 证明:

(1) $\oint\limits_{\partial\Omega}\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{S} = \iiint\limits_{\Omega}\Delta u\text{d}{x}\text{d}{y}\text{d}{z}$; % 这里符号有问题, 应该是 $\oiint$

(2) $\oint\limits_{\partial\Omega} v\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{S} = \iiint\limits_{\Omega}v\Delta u\text{d}{x}\text{d}{y}\text{d}{z} + \iiint\limits_{\Omega}\nabla u\cdot \nabla v\text{d}{x}\text{d}{y}\text{d}{z}$ % 这里符号有问题, 应该是 $\oiint$

(3) $\oint\limits_{\partial\Omega}\begin{vmatrix}\dfrac{\partial u}{\partial \mathbf{n}} & \dfrac{\partial v}{\partial \mathbf{n}} \\ u & v\end{vmatrix}\text{d}{S} = \iiint\limits_{\Omega}\begin{vmatrix}\Delta u & \Delta v \\ u & v\end{vmatrix}\text{d}{x}\text{d}{y}\text{d}{z}$, % 这里符号有问题, 应该是 $\oiint$

其中 $\Delta = \dfrac{\partial^2}{\partial x^2} + \dfrac{\partial^2}{\partial y^2} + \dfrac{\partial^2}{\partial z^2}, \nabla = \dfrac{\partial}{\partial x}\mathbf{i} + \dfrac{\partial}{\partial y}\mathbf{j} + \dfrac{\partial}{\partial z}\mathbf{k}$.

**证明** % 这里符号有问题, 应该是 $\oiint$

(1) 设 $\mathbf{n} = (\cos\alpha, \cos\beta, \cos\gamma)$. 由 Gauss 定理,

$$
\begin{aligned}
    \oint_{\partial D}\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{S} & = \oint_{\partial D}(\dfrac{\partial u}{\partial x}\cos\alpha, \dfrac{\partial u}{\partial y}\cos\beta, \dfrac{\partial u}{\partial z}\cos\gamma) \cdot\text{d}{S} \\
    & = \iiint\limits_{D}\left(\dfrac{\partial^2u}{\partial x^2} + \dfrac{\partial^2u}{\partial y^2} + \dfrac{\partial^2u}{\partial z^2}\right)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \iiint\limits_{D}\Delta u\text{d}{x}\text{d}{y}\text{d}{z}
\end{aligned}
$$

(2) 由 Gauss 定理,

$$
\begin{aligned}
    \oint_{\partial D}v\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{S} & = \oint_{\partial D}(v\dfrac{\partial u}{\partial x}\cos\alpha, v\dfrac{\partial u}{\partial y}\cos\beta, v\dfrac{\partial u}{\partial z}\cos\gamma) \cdot\text{d}{S} \\
    & = \iint\limits_{D}\left(\dfrac{\partial v}{\partial x}\dfrac{\partial u}{\partial x} + v\dfrac{\partial^2u}{\partial x^2} + \dfrac{\partial v}{\partial y}\dfrac{\partial u}{\partial y} + v\dfrac{\partial^2u}{\partial y^2} + \dfrac{\partial v}{\partial z}\dfrac{\partial u}{\partial z} + v\dfrac{\partial^2u}{\partial z^2}\right)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \iiint\limits_{\Omega}v\Delta u\text{d}{x}\text{d}{y}\text{d}{z} + \iiint\limits_{\Omega}\nabla u\cdot \nabla v\text{d}{x}\text{d}{y}\text{d}{z}
\end{aligned}
$$

(3) 由 (2) 知,

$$
\begin{aligned}
    \oint_{\partial D}\begin{vmatrix}\dfrac{\partial u}{\partial \mathbf{n}} & \dfrac{\partial v}{\partial \mathbf{n}} \\ u & v\end{vmatrix}\text{d}{l} & = \oint_{\partial D}v\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{l} - \oint_{\partial D}u\dfrac{\partial v}{\partial \mathbf{n}}\text{d}{l} \\
    & = \left(\iint\limits_{D}v\Delta u\text{d}{x}\text{d}{y}\text{d}{z} + \iint\limits_{D}\nabla u\cdot \nabla v\text{d}{x}\text{d}{y}\text{d}{z}\right) - \left(\iint\limits_{D}u\Delta v\text{d}{x}\text{d}{y}\text{d}{z} + \iint\limits_{D}\nabla v\cdot \nabla u\text{d}{x}\text{d}{y}\text{d}{z}\right) \\
    & = \iint\limits_{D}v\Delta u\text{d}{x}\text{d}{y}\text{d}{z} - \iint\limits_{D}u\Delta v\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \iint\limits_{D}\begin{vmatrix}\Delta u & \Delta v \\ u & v\end{vmatrix}\text{d}{x}\text{d}{y}\text{d}{z}
\end{aligned}
$$
