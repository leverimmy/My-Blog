
## 第 2 题

计算曲面积分 $\oint\limits_{S^{+}}\dfrac{x\text{d}{y}\wedge\text{d}{z} + y\text{d}{z}\wedge\text{d}{x} + z\text{d}{x}\wedge\text{d}{y}}{(x^2 + y^2 + z^2)^{\frac{3}{2}}}$, 其中 $S^{+}$ 为:  % 这里符号有问题, 应该是 \oiint

(1) 不包含也不经过原点的半径为 $R$ 的球面外侧;

(2) 不包含也不经过原点的任意封闭曲面的外侧;

(3) 球面 $x^2 + y^2 + z^2 = \epsilon^2(\epsilon > 0)$;

(4) 包含原点在其内部的任意封闭曲面的外侧.

**解**

$X = \dfrac{x}{(x^2 + y^2 + z^2)^{\frac{3}{2}}}, Y = \dfrac{y}{(x^2 + y^2 + z^2)^{\frac{3}{2}}}, Z = \dfrac{z}{(x^2 + y^2 + z^2)^{\frac{3}{2}}}$. 因此 $\dfrac{\partial X}{\partial x} = \dfrac{y^2 + z^2 - 2x^2}{(x^2 + y^2 + z^2)^{\frac{5}{2}}}, \dfrac{\partial Y}{\partial y} = \dfrac{x^2 + z^2 - 2y^2}{(x^2 + y^2 + z^2)^{\frac{5}{2}}}, \dfrac{\partial Z}{\partial z} = \dfrac{x^2 + y^2 - 2z^2}{(x^2 + y^2 + z^2)^{\frac{5}{2}}}$.

(1) 由 Gauss 公式, 该积分值为 $0$.

(2) 由 Gauss 公式, 该积分值为 $0$.

(3) 设此球面为 $\Gamma$, 该积分值为 $J$. 由对称性知 $J = 3\oint\limits_{\Gamma^{+}}Z\text{d}{x}\wedge\text{d}{y}$. 对于 $z > 0$, $\text{d}{x}\wedge\text{d}{y} = \text{d}{x}\text{d}{y}, z = \sqrt{\epsilon^2 - x^2 - y^2}$. 对于 $z < 0$, $\text{d}{x}\wedge\text{d}{y} = -\text{d}{x}\text{d}{y}, z = -\sqrt{\epsilon^2 - x^2 - y^2}$. 因此

$$
\begin{aligned}
    J & = \dfrac{6}{\epsilon^3}\iint\limits_{D}\sqrt{\epsilon^2 - x^2 - y^2}\text{d}{x}\text{d}{y} \\
    & = \dfrac{6}{\epsilon^3}\int_{0}^{\epsilon}r\sqrt{\epsilon^2 - r^2}\text{d}{r}\int_{0}^{2\pi}\text{d}{\theta} \\
    & = 2\pi \cdot\dfrac{9}{2}(\epsilon^2 - r^2)^{\frac{3}{2}}\bigg\vert_{0}^{\epsilon} \\
    & = 4\pi
\end{aligned}
$$

(4) 设积分区域为 $A$, 则由 Gauss 公式, $\oint\limits_{\Gamma^{-}\cup A^{+}}\dfrac{x\text{d}{y}\wedge\text{d}{z} + y\text{d}{z}\wedge\text{d}{x} + z\text{d}{x}\wedge\text{d}{y}}{(x^2 + y^2 + z^2)^{\frac{3}{2}}} = 0$. 因此 % 这里符号有问题, 应该是 \oiint

$$
\begin{aligned}
    \quad & \oint\limits_{A^{+}}\dfrac{x\text{d}{y}\wedge\text{d}{z} + y\text{d}{z}\wedge\text{d}{x} + z\text{d}{x}\wedge\text{d}{y}}{(x^2 + y^2 + z^2)^{\frac{3}{2}}} \\ % 这里符号有问题, 应该是 \oiint
    & = -\oint\limits_{\Gamma^{-}}\dfrac{x\text{d}{y}\wedge\text{d}{z} + y\text{d}{z}\wedge\text{d}{x} + z\text{d}{x}\wedge\text{d}{y}}{(x^2 + y^2 + z^2)^{\frac{3}{2}}} \\ % 这里符号有问题, 应该是 \oiint
    & = \oint\limits_{\Gamma^{+}}\dfrac{x\text{d}{y}\wedge\text{d}{z} + y\text{d}{z}\wedge\text{d}{x} + z\text{d}{x}\wedge\text{d}{y}}{(x^2 + y^2 + z^2)^{\frac{3}{2}}} \\ % 这里符号有问题, 应该是 \oiint
    & = 4\pi
\end{aligned}
$$

## 第 3 题

利用 Gauss 公式计算下列曲面积分.

(1) $\oint\limits_{S^{+}}x^3\text{d}{y}\wedge\text{d}{z} + y^3\text{d}{z}\wedge\text{d}{x} + z^3\text{d}{x}\wedge\text{d}{y}$, 其中 $S^{+}$ 为球面 $x^2 + y^2 + z^2 = a^2(a > 0)$ 的外侧; % 这里符号有问题, 应该是 \oiint

(3) $\oint\limits_{S^{+}}(x + 2y + 3z)\text{d}{x}\wedge\text{d}{y} + (y+2z)\text{d}{y}\wedge\text{d}{z} + (z^2 - 1)\text{d}{z}\wedge\text{d}{x}$, 其中 $S^{+}$ 为平面 $x + y + z = 1$ 及与三个坐标平面所围四面体的表面, 外侧为正; % 这里符号有问题, 应该是 \oiint

(5) $\oint\limits_{S^{+}}\mathbf{A}\cdot\text{d}{\mathbf{S}}$, 其中 $\mathbf{A} = \dfrac{\mathbf{r}}{r^3}, \mathbf{r} = x\mathbf{i} + y\mathbf{j} + z\mathbf{k}, r = ||\mathbf{r}||$, $S$ 为椭球面 $\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} = 1$, 外侧为正; % 这里符号有问题, 应该是 \oiint

**解**

(1) $X = x^3, Y = y^3, Z = z^3$, 且 $x^2 + y^2 + z^2 = R^2$. 由 Gauss 公式

$$
\begin{aligned}
    \oint\limits_{S^{+}}\mathbf{A}\cdot\text{d}{\mathbf{S}} & = \iiint\limits_{\Omega}\left(\dfrac{\partial X}{\partial x} + \dfrac{\partial Y}{\partial y} + \dfrac{\partial Z}{\partial z}\right)\text{d}{x}\text{d}{y}\text{d}{z} \\ % 这里符号有问题, 应该是 \oiint
    & = \iiint\limits_{\Omega}3R^2\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = 4\pi
\end{aligned}
$$

(3) $X = x + 2y + 3z, Y = y + 2z, Z = z^2 - 1$. 由 Gauss 公式

$$
\begin{aligned}
    \quad & \oint\limits_{S^{+}}(x + 2y + 3z)\text{d}{x}\wedge\text{d}{y} + (y+2z)\text{d}{y}\wedge\text{d}{z} + (z^2 - 1)\text{d}{z}\wedge\text{d}{x} \\ % 这里符号有问题, 应该是 \oiint
    & = \iiint\limits_{\Omega}\left(\dfrac{\partial X}{\partial x} + \dfrac{\partial Y}{\partial y} + \dfrac{\partial Z}{\partial z}\right)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \iiint\limits_{\Omega}(0 + 0 + 3)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \dfrac{1}{2}
\end{aligned}
$$

(5) 由第2题 (4) 得 $\oint\limits_{S^{+}}\mathbf{A}\cdot\text{d}{\mathbf{S}} = 4\pi$. % 这里符号有问题, 应该是 \oiint

## 第 4 题

求向量场 $\mathbf{A}$ 通过闭曲面 $S$ (从里向外) 的通量 $\Phi = \oint\limits_{S^{+}}\mathbf{A}\cdot\text{d}{\mathbf{S}}$.

(1) $\mathbf{A} = x^3\mathbf{i} + y^3\mathbf{j} + z^3\mathbf{k}$, $S$ 为球面 $x^2 + y^2 + z^2 = R^2$;

(2) $\mathbf{A} = (x - y + z)\mathbf{i} + (y - z + x)\mathbf{j} + (z - x + y)\mathbf{k}$, $S$ 为椭球面 $\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} = 1$.

**解**

(1) 由第3题 (1) 得 $\Phi = \dfrac{12}{5}\pi R^5$.

(2) $X = x - y - z, Y = y - z + x, Z = z - x + y$. 由 Gauss 公式

$$
\begin{aligned}
    \Phi & = \oint\limits_{S^{+}}\mathbf{A}\cdot\text{d}{\mathbf{S}} \\
    & = \iiint\limits_{\Omega}\left(\dfrac{\partial X}{\partial x} + \dfrac{\partial Y}{\partial y} + \dfrac{\partial Z}{\partial z}\right)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \iiint\limits_{\Omega}(1 + 1 + 1)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = 4\pi abc
\end{aligned}
$$

## 第 5 题

利用 Stokes 公式计算下列积分.

(1) $\oint_{L^{+}}y\text{d}{x} + z\text{d}{y} + x\text{d}{z}$, 其中 $L$ 是球面 $x^2 + y^2 + z^2 = R^2$ 与平面 $x + y + z = 0$ 的交线, 从 $z$ 轴正向看上去, 为逆时针方向;

(3) $\oint_{L^{+}}y^2\text{d}{x}+z^2\text{d}{y} + x^2\text{d}{z}$, 其中 $L$ 是以 $A(a, 0, 0), B(0, b, 0), C(0, 0, c)(a, b, c > 0)$ 为顶点的三角形的边界, 方向为 $A \to B \to C \to A$.

**解**

(1) 取 $\mathbf{n} = \left(\dfrac{\sqrt{3}}{3}, \dfrac{\sqrt{3}}{3}, \dfrac{\sqrt{3}}{3}\right)$. 记 $D$ 为球 $x^2 + y^2 + z^2 \le R^2$ 被平面 $x + y + z = 0$ 所截的截面. 由 Stokes 公式

$$
\oint_{L^{+}}y\text{d}{x} + z\text{d}{y} + x\text{d}{z} = \iint\limits_{D}(-1, -1, -1)\cdot\mathbf{n}\text{d}{S}
$$

故 $\oint_{L^{+}}y\text{d}{x} + z\text{d}{y} + x\text{d}{z} = \sqrt{3}\iint\limits_{D}\text{d}{S} = -\sqrt{3}\pi R^2$.

(3) 由 Stokes 公式

$$
\oint_{L^{+}}y^2\text{d}{x} + z^2\text{d}{y} + x^2\text{d}{z} = \iint\limits_{S^{+}}-2z\text{d}{y}\wedge\text{d}{z} - 2x\text{d}{z}\wedge\text{d}{x} - 2y\text{d}{x}\wedge\text{d}{y}
$$

考虑其中的 $\oint_{L^{+}}y^2\text{d}{x} = \iint\limits_{S^{+}}2y\text{d}{x}\wedge\text{d}{y}$, 在 $xy$ 平面内的投影 $D_{xy} = \{(x, y) | 0 \le x \le a, 0 \le y \le b - \dfrac{b}{a}x\}$.

$$
\begin{aligned}
    \oint_{L^{+}}y^2\text{d}{x} & = \iint\limits_{D}2y\text{d}{x}\text{d}{y} \\
    & = \int_{0}^{a}\text{d}{x}\int_{0}^{b - \frac{b}{a}x}2y\text{d}{y} \\
    & = \int_{0}^{a}\left(b - \dfrac{b}{a}x\right)^2\text{d}{x} \\
    & = \dfrac{a}{3b}\left(\dfrac{b}{a}x - b\right)^3\bigg\vert_{0}^{a} \\
    & = \dfrac{ab^2}{3}
\end{aligned}
$$

由对称性知 $\oint_{L^{+}}y^2\text{d}{x}+z^2\text{d}{y} + x^2\text{d}{z} = \dfrac{ab^2 + bc^2 + ca^2}{3}$.

## 第 6 题

试验证下列微分式为某个三元函数 $u(x, y, z)$ 的全微分, 并求出该函数.

(1) $\dfrac{1}{x^2}(yz\text{d}{x} - zx\text{d}{y} - xy\text{d}{z})$;

(2) $\dfrac{1}{(x + z)^2 + y^2}[y\text{d}{x} - (z + x)\text{d}{y} + y\text{d}{z}]$.

**解**

(1) 记 $u(x, y, z) = -\dfrac{yz}{x} + C$, 则 $\text{d}{u} = \dfrac{1}{x^2}(yz\text{d}{x} - zx\text{d}{y} - xy\text{d}{z})$.

(2) 记 $u(x, y, z) = \arctan{\dfrac{x + z}{y}} + C$, 则 $\text{d}{u} = \dfrac{1}{\left(\frac{x+z}{y}\right)^2 + 1}\text{d}{\left(\dfrac{x + z}{y}\right)} = \dfrac{1}{(x + z)^2 + y^2}[y\text{d}{x} - (z + x)\text{d}{y} + y\text{d}{z}]$.

## 第 7 题

证明下列曲线积分与路径无关, 并求积分值.

(1) $\int_{(0, 0, 0)}^{(1, 2, 1)}(y + z)\text{d}{x} + (z + x)\text{d}{y} + (x + y)\text{d}{z}$;

(2) $\int_{(1, -1, 1)}^{(1, 1, -1)}y^2z\text{d}{x} + 2xyz\text{d}{y} + xy^2\text{d}{z}$;

**解**

(1) 记 $u(x, y, z) = xy + yz + zx$, 则 $\int_{(0, 0, 0)}^{(1, 2, 1)}(y + z)\text{d}{x} + (z + x)\text{d}{y} + (x + y)\text{d}{z} = u(1, 2, 1) - u(0, 0, 0) = 5$.

(2) 记 $u(x, y, z) = xy^2z$, 则 $\int_{(1, -1, 1)}^{(1, 1, -1)}y^2z\text{d}{x} + 2xyz\text{d}{y} + xy^2\text{d}{z} = u(1, 1, -1) - u(1, -1, 1) = -2$.

## 第 8 题

求向量场 $\mathbf{A} = \dfrac{-y\mathbf{i} + x\mathbf{j}}{x^2 + y^2} + a\mathbf{k}$ 沿下列曲线的环量 $\Gamma = \oint_{L^{+}}\mathbf{A}\cdot\text{d}{\mathbf{r}}$.

(1) 圆周 $\begin{cases}x^2 + y^2 = \epsilon^2, \\ z = 0, \end{cases}\epsilon > 0$;

(2) 圆周 $\begin{cases}(x-1)^2 + y^2 = r^2, \\ z = 2,\end{cases}r > 2$.

**解**

(1) 做坐标变换 $\begin{cases}x = \epsilon\cos\theta, \\ y = \epsilon\sin\theta, \end{cases}$ 则

$$
\begin{aligned}
    \Gamma & = \oint_{L^{+}}\mathbf{A}\cdot\text{d}{\mathbf{r}} \\
    & = \int_{0}^{2\pi}\dfrac{-\epsilon\sin\theta\cdot(-\epsilon\sin\theta) + \epsilon\cos\theta\cdot\epsilon\cos\theta}{\epsilon^2}\text{d}{\theta} \\
    & = 2\pi
\end{aligned}
$$

(2) $X = \dfrac{-y}{x^2 + y^2}, Y = \dfrac{x}{x^2 + y^2}$. 设 (1) 中环路为 $L_1$, 本题环路为 $L_2$, $L_1$ 与 $L_2$ 构成的区域为 $D$. 由于 $\dfrac{\partial X}{\partial y} = \dfrac{y^2 - x^2}{(x^2 + y^2)^2} = \dfrac{\partial Y}{\partial x}$, 故由 Stokes 定理,

$$
\begin{aligned}
    \oint_{L_1^{-}}\mathbf{A}\cdot\text{d}{\mathbf{r}} + \oint_{L_2^{+}}\mathbf{A}\cdot\text{d}{\mathbf{r}} = \iint\limits_{D}\left(\dfrac{\partial X}{\partial y} - \dfrac{\partial Y}{\partial x}\right)\text{d}{x}\text{d}{y} = 0
\end{aligned}
$$

故 $\oint_{L_2^{+}}\mathbf{A}\cdot\text{d}{\mathbf{r}} = -\oint_{L_1^{-}}\mathbf{A}\cdot\text{d}{\mathbf{r}} = \oint_{L_1^{+}}\mathbf{A}\cdot\text{d}{\mathbf{r}} = 2\pi$.

## 第 12 题

若向量场的积分与路径无关, 就称向量场为保守场, 考察下列向量场是否为保守场, 如果是, 求出相应的势函数, 并计算积分 $\int_{(4, 0, 1)}^{(2, 1, -1)}\mathbf{V}\cdot\text{d}{\mathbf{r}}$:

(1) $\mathbf{V} = y\cos(xy)\mathbf{i} + x\cos(xy)\mathbf{j} + \sin z\mathbf{k}$;

(3) $\mathbf{V} = (6xy + z^2)\mathbf{i} + (3x^2 - z)\mathbf{j} + (3xz^2 - y)\mathbf{k}$;

**解**

(1) $X = y\cos(xy), Y = x\cos(xy), Z = \sin z$, 则

$$
\begin{aligned}
    \rot{X, Y, Z} & = \begin{vmatrix}\mathbf{i} & \mathbf{j} & \mathbf{k} \\ \dfrac{\partial}{\partial x} & \dfrac{\partial}{\partial y} & \dfrac{\partial}{\partial z} \\ X & Y & Z\end{vmatrix} \\
    & = 0
\end{aligned}
$$

因此该向量场是保守场, 且 $u(x, y, z) = \sin(xy) - \cos z$. 故

$$
\begin{aligned}
    \int_{(4, 0, 1)}^{(2, 1, -1)}\mathbf{V}\cdot\text{d}{\mathbf{r}} & = u(2, 1, -1) - u(4, 0, 1) \\
    & = \sin 2
\end{aligned}
$$

(3) $X = 6xy + z^2, Y = 3x^2 - z, Z = 3xz^2 - y$, 则

$$
\begin{aligned}
    \rot{X, Y, Z} & = \begin{vmatrix}\mathbf{i} & \mathbf{j} & \mathbf{k} \\ \dfrac{\partial}{\partial x} & \dfrac{\partial}{\partial y} & \dfrac{\partial}{\partial z} \\ X & Y & Z\end{vmatrix} \\
    & = (2z - 3z^2)\mathbf{j} \\
    & \neq 0
\end{aligned}
$$

因此该向量场不是保守场.
