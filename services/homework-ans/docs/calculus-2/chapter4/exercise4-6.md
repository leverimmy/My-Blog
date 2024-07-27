
## 第 1 题

利用 Green 公式计算下列曲线积分.

(1) $\oint_{L^{+}}(x+y)^2\text{d}{x} - (x^2 + y^2)\text{d}{y}$, 其中 $L^{+}$ 是以 $(0, 0), (1, 0), (0, 1)$ 为顶点的三角形的边界, 逆时针为正;

(3) $\oint_{L^{+}}(x^2+y)\text{d}{x} - (x-y^2)\text{d}{y}$, 其中 $L$ 是椭圆 $\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1$ 的正向边界;

**解**

(1) $X = (x + y)^2, Y = -(x^2 + y^2)$, 因此由 Green 定理

$$
\begin{aligned}
    \oint_{L^{+}}(x+y)^2\text{d}{x} - (x^2 + y^2)\text{d}{y} & = \oint_{L^{+}}X\text{d}{x}+Y\text{d}{y} \\
    & = \iint\limits_{D}\left(\dfrac{\partial Y}{\partial x} - \dfrac{\partial X}{\partial y}\right)\text{d}{x}\text{d}{y} \\
    & = \iint\limits_{D}(-2x - 2x - 2y)\text{d}{x}\text{d}{y} \\
    & = -\int_{0}^{1}\text{d}{x}\int_{0}^{1 - x}(4x + 2y)\text{d}{y} \\
    & = \int_{0}^{1}(3x^2 - 2x - 1)\text{d}{x} \\
    & = -1
\end{aligned}
$$

(3) $X = x^2 + y, Y = y^2 - x$. 由 Green 定理知

$$
\oint_{L^{+}}(x^2+y)\text{d}{x} - (x-y^2)\text{d}{y} = \oint_{L^{+}}X\text{d}{x} + Y\text{d}{y} = \iint\limits_{D}\left(\dfrac{\partial Y}{\partial x} - \dfrac{\partial X}{\partial y}\right)\text{d}{x}\text{d}{y} = \iint\limits_{D}(-2)\text{d}{x}\text{d}{y} = -2\pi ab
$$

## 第 2 题

计算 $\int_{L^{+}}\dfrac{(x+y)\text{d}{x} + (y-x)\text{d}{y}}{x^2 + y^2}$, 其中 $L^{+}$ 为

(1) 区域 $D = \{(x, y) | a^2 \le x^2 + y^2 \le b^2\}$ 的正向边界 $(b > a > 0)$;

(3) 正方形 $D = \{(x, y) | \left|x\right| + \left|y\right| \le 1\}$ 的逆时针方向;

**解**

(1) $X = \dfrac{x + y}{x^2 + y^2}, Y = \dfrac{y - x}{x^2 + y^2}$, 因此 $\dfrac{\partial Y}{\partial x} = \dfrac{x^2 - 2xy - y^2}{(x^2 + y^2)^2} = \dfrac{\partial X}{\partial y}$. 由 Green 定理知 $\int_{L^{+}}\dfrac{(x+y)\text{d}{x} + (y-x)\text{d}{y}}{x^2 + y^2} = 0$.

(3) 考虑 $D^* = \{(x, y) | x = \epsilon\cos\theta, y = \epsilon\sin\theta, 0 \le \theta \le 2\pi\}$, 正方向为 $\theta$ 从 $2\pi$ 到 $0$. 因此 $\int_{\partial D\cup D^{*}}\dfrac{(x+y)\text{d}{x} + (y-x)\text{d}{y}}{x^2 + y^2} = 0$. 而

$$
\begin{aligned}
    \int_{\partial D^{*}}\dfrac{(x+y)\text{d}{x} + (y-x)\text{d}{y}}{x^2 + y^2} & = \int_{2\pi}^{0}\dfrac{\epsilon^2(\sin\theta + \cos\theta)\cdot(-\sin\theta) + \epsilon^2(\sin\theta - \cos\theta)\cdot\cos\theta}{\epsilon^2}\text{d}{\theta} \\
    & = \int_{2\pi}^{0}\text{d}{\theta} \\
    & = 2\pi
\end{aligned}
$$

因此

$$
\int_{L^{+}}\dfrac{(x+y)\text{d}{x} + (y-x)\text{d}{y}}{x^2 + y^2} = \int_{D\cup D^*}\dfrac{(x+y)\text{d}{x} + (y-x)\text{d}{y}}{x^2 + y^2} - \int_{D^*}\dfrac{(x+y)\text{d}{x} + (y-x)\text{d}{y}}{x^2 + y^2} = -2\pi
$$

## 第 3 题

计算下列曲线积分.

(1) $\int_{L^{+}}(1+xe^{2y})\text{d}{x} + (x^2e^{2y}-y^2)\text{d}{y}$, 其中 $L$ 是从点 $(0, 0)$ 经上半圆周 $(x - 2)^2 + y^2 = 4$ 到点 $(4, 0)$ 的弧段;

(3) $\int_{L^{+}}\left(\ln\dfrac{y}{x} - 1\right)\text{d}{x} + \dfrac{x}{y}\text{d}{y}$, 其中 $L$ 是从点 $(1, 1)$ 出发到点 $(3, 3e)$ 的任何一条不与坐标轴相交的简单曲线.

**解**

(1) $X = 1 + xe^{2y}, Y = x^2e^{2y} - y^2$. 设 $A(0, 0), B(4, 0)$, 正方向由 $B$ 到 $A$. 则 $AB$ 和 $L$ 围成的图形 $D$ 满足: $\iint\limits_{D}\left(\dfrac{\partial Y}{\partial x} - \dfrac{\partial X}{\partial y}\right)\text{d}{x}\text{d}{y} = \iint\limits_{D}(2xe^{2y} - 2xe^{2y})\text{d}{x}\text{d}{y} = 0$. 由于 $\int_{BA}X\text{d}{x} = \int_{4}^{0}(1 + x)\text{d}{x} = -12$, 故由 Green 定理

$$
\int_{L^{+}}(1+xe^{2y})\text{d}{x} + (x^2e^{2y}-y^2)\text{d}{y} = \iint\limits_{D}\left(\dfrac{\partial Y}{\partial x} - \dfrac{\partial X}{\partial y}\right)\text{d}{x}\text{d}{y} - \int_{BA}X\text{d}{x} = 12
$$

(3) $X = \ln\dfrac{y}{x} - 1, Y = \dfrac{x}{y}$, 因此 $\dfrac{\partial Y}{\partial x} = \dfrac{1}{y} = \dfrac{\partial X}{\partial y}$. 所以这个曲线积分与路径无关, 此时可以先沿着 $x$ 轴正方向, 再沿着 $y$ 轴正方向的路径来计算这个积分.

$$
\begin{aligned}
    \int_{L^{+}}\left(\ln\dfrac{y}{x} - 1\right)\text{d}{x} + \dfrac{x}{y}\text{d}{y} & = \int_{1}^{3}\left(\ln\dfrac{1}{x} - 1\right)\text{d}{x} + \int_{1}^{3e}\dfrac{3}{y}\text{d}{y} \\
    & = -x\ln x\bigg\vert_{1}^{3} + 3\ln y\bigg\vert_{1}^{3e} \\
    & = 3
\end{aligned}
$$

## 第 4 题

计算下列区域的面积.

(1) 星形线 $\begin{cases}x = a\cos^3t, \\ y = a\sin ^3t,\end{cases} 0 \le t \le 2\pi$ 所围区域 $(a > 0)$;

**解**

$$
\begin{aligned}
    S & = 4\int_{L}y\text{d}{x} \\
    & = 4\int_{0}^{\frac{\pi}{2}}(a\sin^3t)\cdot(-3a^2\cos^2t\sin t)\text{d}{t} \\
    & = 12a^2\left(\int_{0}^{\frac{\pi}{2}}\sin^4t\text{d}{t} - \int_{0}^{\frac{\pi}{2}}\sin^6t\text{d}{t}\right) \\
    & = 12a^2\cdot\left(\dfrac{3\cdot 1}{4\cdot 2} - \dfrac{5\cdot 3\cdot 1}{6\cdot 4\cdot 2}\right)\cdot\dfrac{\pi}{2} \\
    & = \dfrac{3}{8}\pi a^2
\end{aligned}
$$

## 第 5 题

已知 $f(u)$ 连续可微, $L$ 为任意一条分段光滑曲线, 证明:

(1) $\oint_{L^{+}}f(xy)(y\text{d}{x} + x\text{d}{y}) = 0$;

(2) $\oint_{L^{+}}f(x^2 + y^2)(x\text{d}{x} + y\text{d}{y}) = 0$.

**证明**

(1) $X = yf(xy), Y = xf(xy)$, 因此 $\dfrac{\partial Y}{\partial x} = f(xy) + xyf'(xy) = \dfrac{\partial X}{\partial y}$. 由定理 4.6.3 和定理 4.6.4 得 $\oint_{L^{+}}f(xy)(y\text{d}{x} + x\text{d}{y}) = 0$.

(2) $X = xf(x^2 + y^2), Y = yf(x^2 + y^2)$, 因此 $\dfrac{\partial Y}{\partial x} = 2xyf'(x^2 + y^2) = \dfrac{\partial X}{\partial y}$. 由定理 4.6.3 和定理 4.6.4 得 $\oint_{L^{+}}f(x^2 + y^2)(x\text{d}{x} + y\text{d}{y}) = 0$.

## 第 6 题

设 $D$ 是平面区域, $\partial D$ 为逐段光滑曲线, $(\bar{x}, \bar{y})$ 为 $D$ 的形心, $\sigma(D)$ 是 $D$ 的面积, 证明:

(1) $\oint_{\partial D}x^2\text{d}{y} = 2\sigma(D)\bar{x}$;

(2) $\oint_{\partial D}xy\text{d}{y} = \sigma(D)\bar{y}$.

**证明**

(1) 由 Green 定理 $\oint_{\partial D}x^2\text{d}{y} = \iint\limits_{D}2x\text{d}{x}\text{d}{y}$. 由定义 $\bar{x} = \dfrac{\iint\limits_{D}x\text{d}{x}\text{d}{y}}{\iint\limits_{D}\text{d}{x}\text{d}{y}} = \dfrac{\iint\limits_{D}x\text{d}{x}\text{d}{y}}{\sigma(S)}$. 因此 $\oint_{\partial D}x^2\text{d}{y} = 2\sigma(D)\bar{x}$.

(2) 由 Green 定理 $\oint_{\partial D}xy\text{d}{y} = \iint\limits_{D}y\text{d}{x}\text{d}{y}$. 由定义 $\bar{y} = \dfrac{\iint\limits_{D}y\text{d}{x}\text{d}{y}}{\iint\limits_{D}\text{d}{x}\text{d}{y}} = \dfrac{\iint\limits_{D}y\text{d}{x}\text{d}{y}}{\sigma(S)}$. 因此 $\oint_{\partial D}xy\text{d}{y} = \sigma(D)\bar{y}$.

## 第 8 题

设 $D$ 是平面区域, $\partial D$ 为逐段光滑曲线, $\mathbf{n}$ 为 $D$ 的单位外法向, $u, v \in C^2(D)$, 证明:

(1) $\oint_{\partial D}\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{l} = \iint\limits_{D}\Delta u\text{d}{x}\text{d}{y}$;

(2) $\oint_{\partial D}v\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{l} = \iint\limits_{D}v\Delta u\text{d}{x}\text{d}{y} + \iint\limits_{D}\nabla u\cdot \nabla v\text{d}{x}\text{d}{y}$;

(3) $\oint_{\partial D}\begin{vmatrix}\dfrac{\partial u}{\partial \mathbf{n}} & \dfrac{\partial v}{\partial \mathbf{n}} \\ u & v\end{vmatrix}\text{d}{l} = \iint\limits_{D}\begin{vmatrix}\Delta u & \Delta v \\ u & v\end{vmatrix}\text{d}{x}\text{d}{y}$.

其中 $\Delta = \dfrac{\partial^2}{\partial x^2} + \dfrac{\partial^2}{\partial y^2}, \nabla = \dfrac{\partial}{\partial x}\mathbf{i} + \dfrac{\partial}{\partial y}\mathbf{j}$.

**证明**

$\text{d}{\mathbf{l}} = (\text{d}{x}, \text{d}{y}), \mathbf{n} = \left(\dfrac{\text{d}{y}}{\left|\text{d}{\mathbf{l}}\right|}, -\dfrac{\text{d}{x}}{\left|\text{d}{\mathbf{l}}\right|}\right)$.

(1) 由 Green 定理,

$$
\begin{aligned}
    \oint_{\partial D}\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{l} & = \oint_{\partial D}\dfrac{\partial u}{\partial x}\text{d}{y} - \dfrac{\partial u}{\partial y}\text{d}{x} \\
    & = \iint\limits_{D}\left(\dfrac{\partial^2u}{\partial x^2} + \dfrac{\partial^2u}{\partial y^2}\right)\text{d}{x}\text{d}{y} \\
    & = \iint\limits_{D}\Delta u\text{d}{x}\text{d}{y}
\end{aligned}
$$

(2) 由 Green 定理,

$$
\begin{aligned}
    \oint_{\partial D}v\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{l} & = \oint_{\partial D}v\dfrac{\partial u}{\partial x}\text{d}{y} - v\dfrac{\partial u}{\partial y}\text{d}{x} \\
    & = \iint\limits_{D}\left(\dfrac{\partial v}{\partial x}\dfrac{\partial u}{\partial x} + v\dfrac{\partial^2u}{\partial x^2} + v\dfrac{\partial^2u}{\partial y^2} + \dfrac{\partial v}{\partial y}\dfrac{\partial u}{\partial y}\right)\text{d}{x}\text{d}{y} \\
    & = \iint\limits_{D}v\Delta u\text{d}{x}\text{d}{y} + \iint\limits_{D}\nabla u\cdot \nabla v\text{d}{x}\text{d}{y}
\end{aligned}
$$

(3) 由 (2) 知,

$$
\begin{aligned}
    \oint_{\partial D}\begin{vmatrix}\dfrac{\partial u}{\partial \mathbf{n}} & \dfrac{\partial v}{\partial \mathbf{n}} \\ u & v\end{vmatrix}\text{d}{l} & = \oint_{\partial D}v\dfrac{\partial u}{\partial \mathbf{n}}\text{d}{l} - \oint_{\partial D}u\dfrac{\partial v}{\partial \mathbf{n}}\text{d}{l} \\
    & = \left(\iint\limits_{D}v\Delta u\text{d}{x}\text{d}{y} + \iint\limits_{D}\nabla u\cdot \nabla v\text{d}{x}\text{d}{y}\right) - \left(\iint\limits_{D}u\Delta v\text{d}{x}\text{d}{y} + \iint\limits_{D}\nabla v\cdot \nabla u\text{d}{x}\text{d}{y}\right) \\
    & = \iint\limits_{D}v\Delta u\text{d}{x}\text{d}{y} - \iint\limits_{D}u\Delta v\text{d}{x}\text{d}{y} \\
    & = \iint\limits_{D}\begin{vmatrix}\Delta u & \Delta v \\ u & v\end{vmatrix}\text{d}{x}\text{d}{y}
\end{aligned}
$$

## 第 9 题

设 $L$ 为逐段光滑曲线, $\mathbf{n}$ 为 $L$ 所围区域的单位外法向, $\left<\mathbf{n}, \mathbf{i}\right>, \left<\mathbf{n}, \mathbf{j}\right>$ 分别表示 $\mathbf{n}$ 与 $x$ 轴、$y$ 轴正向的夹角, 计算: $\oint_{L}(x\cos\left<\mathbf{n}, \mathbf{i}\right> + y\cos\left<\mathbf{n}, \mathbf{j}\right>)\text{d}{l}$.

**解**

设 $L$ 所围区域为 $D$, 面积为 $S$. $\text{d}{\mathbf{l}} = (\text{d}{x}, \text{d}{y})$, 则 $\mathbf{n} = \left(\dfrac{\text{d}{y}}{\text{d}{l}}, -\dfrac{\text{d}{x}}{\text{d}{l}}\right)$. 由 Green 定理,

$$
\begin{aligned}
    \oint_{L}(x\cos\left<\mathbf{n}, \mathbf{i}\right> + y\cos\left<\mathbf{n}, \mathbf{j}\right>)\text{d}{l} & = \oint_{L}x\text{d}{y} - y\text{d}{x} \\
    & = \iint\limits_{D}2\text{d}{x}\text{d}{y} \\
    & = 2S
\end{aligned}
$$

## 第 10 题

求解下列常微分方程.

(1) $(x^2 - y)\text{d}{x} - (x + \sin^2y)\text{d}{y} = 0$;

(2) $e^{y}\text{d}{x} + (xe^{y}-2y)\text{d}{y} = 0$;

(3) $\dfrac{x\text{d}{x} + y\text{d}{y}}{\sqrt{x^2 + y^2}} = \dfrac{y\text{d}{x} - x\text{d}{y}}{x^2}$;

(4) $\left(\cos x + \dfrac{1}{y}\right)\text{d}{x} + \left(\dfrac{1}{y} - \dfrac{x}{y^2}\right)\text{d}{y} = 0$.

**解**

(1) 原方程可化为 $\text{d}{\left(\dfrac{1}{3}x^3 - xy - \dfrac{1}{2}y + \dfrac{1}{4}\sin2y\right)} = 0$, 因此解为 $\dfrac{1}{3}x^3 - xy - \dfrac{1}{2}y + \dfrac{1}{4}\sin2y = C$.

(2) 原方程可化为 $\text{d}{(xe^y - y^2)} = 0$, 因此解为 $xe^y - y^2 = C$.

(3) 原方程可化为 $\text{d}{\sqrt{x^2 + y^2}} = -\text{d}{\left(\dfrac{y}{x}\right)}$, 因此解为 $\sqrt{x^2 + y^2} + \dfrac{y}{x} = C$.

(4) 原方程可化为 $\text{d}{\left(\sin x + \dfrac{x}{y} + \ln y\right)} = 0$, 因此解为 $\sin x + \dfrac{x}{y} + \ln y = C$.

## 第 11 题

解下列方程.

(1) $(y\cos x - x\sin x)\text{d}{x} + (y\sin x + x\cos x)\text{d}{y} = 0$​;

(2) $(x + y)\text{d}x + (y - x)\text{d}y = 0$;

(3) $(3x^2 + y)\text{d}{x} + (2x^2y - x)\text{d}{y} = 0$;

(4) $(x + y)(\text{d}x - \text{d}y) = \text{d}x + \text{d}y$;

(5) $(x^2 - \sin^2 y)\text{d}{x} + x\sin 2y\text{d}{y} = 0$.

**解**

(1) 有积分因子 $e^{y}$. 原方程可化为 $\text{d}{(e^{y}(y\sin x + x\cos x - \sin x))} = 0$. 因此解为 $e^{y}(y\sin x + x\cos x - \sin x) = C$.

(2) 由题知 $\dfrac{\text{d}y}{\text{d}x} = \dfrac{1 + \frac{y}{x}}{1 - \frac{y}{x}}$. 令 $u = \dfrac{y}{x}$, 即 $y = ux$, 则 $\dfrac{\text{d}y}{\text{d}x} = u + x\dfrac{\text{d}u}{\text{d}x}$. 方程可改写为 $u + x\dfrac{\text{d}u}{\text{d}x} = \dfrac{1 + u}{1 - u}$. 分离变量得 $\dfrac{u + 1}{u^2 + 1}\text{d}u = -\dfrac{1}{x}\text{d}x$. 拆为 $\dfrac{u}{u^2 + 1}\text{d}u + \dfrac{1}{u^2 + 1}\text{d}u = -\dfrac{1}{x}\text{d}x$, 则积分可得 $\dfrac{1}{2}\ln(u^2 + 1) + \arctan u = -\ln|x| + C$. 将 $u = \dfrac{y}{x}$ 代入可得解为 $\dfrac{1}{2}\ln(x^2 + y^2) + \arctan \dfrac{y}{x} = C$.

(3) 有积分因子 $\dfrac{1}{x^2}$. 原方程可化为 $\text{d}{\left(3x - \dfrac{y}{x} + y^2\right)} = 0$. 同时, $x = 0$ 也是原方程的解. 因此解为 $3x^3 - xy + x^2y^2 = Cx^2$​.

(4) 有积分因子 $\dfrac{1}{x + y}$. 原方程可化简为 $\text{d}(x - y) = \text{d}\ln(x +y)$. 因此解为 $x - y = \ln(x + y) + C$.

(5) 有积分因子 $\dfrac{1}{x^2}$. 原方程可化为 $\text{d}{\left(x + \dfrac{\sin^2y}{x}\right)} = 0$. 同时, $x = 0$ 也是原方程的解. 因此解为 $x^3 + x^2\sin^2y = Cx^2$.
