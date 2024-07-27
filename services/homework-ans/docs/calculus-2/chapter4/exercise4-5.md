
## 第 1 题

计算下列第二类曲面积分, 其中 $S^{+}$ 是球面 $x^2 + y^2 + (z-R)^2 = R^2$ 的外侧.

(1) $\oint\limits_{S^{+}} \text{d}{x}\wedge\text{d}{y}$; % 这里有问题, 应该是 \oiint

(2) $\oint\limits_{S^{+}} z\text{d}{x}\wedge\text{d}{y}$; % 这里有问题, 应该是 \oiint

(3) $\oint\limits_{S^{+}} z^2\text{d}{x} \wedge \text{d}{y}$. % 这里有问题, 应该是 \oiint

**解**

(1) 由对称性知 $\oint\limits_{S^{+}} \text{d}{x}\wedge\text{d}{y} = 0$. % 这里有问题, 应该是 \oiint

(2) 记上半球面为 $S_1^{+}$, 满足 $z = R + \sqrt{R^2 - x^2 - y^2}$, $\text{d}{x}\wedge\text{d}{y} = \text{d}{x}\text{d}{y}$, 下半球面为 $S_2^{+}$, 满足 $z = R - \sqrt{R^2 - x^2 - y^2}$, $\text{d}{x} \wedge\text{d}{y} = -\text{d}{x}\text{d}{y}$. 则 $D_{xy} = \{(x, y) | x^2 + y^2 \le R^2\}$. 换元 $\begin{cases}x = r\cos\theta, \\ y = r\sin\theta\end{cases}$, 则 $D_{r\theta} = \{(r, \theta) | 0 \le r \le R, 0 \le \theta \le 2\pi\}$. 因此

$$
I_1 = \int_{0}^{R}r\text{d}{r}\int_{0}^{2\pi}(R + \sqrt{R^2-r^2})\text{d}{\theta}
$$

$$
I_2 = \int_{0}^{R}r\text{d}{r}\int_{0}^{2\pi}(-R + \sqrt{R^2 - r^2})\text{d}{\theta}
$$

$$
\begin{aligned}
    I & = I_1 + I_2 \\
    & = 4\pi\int_{0}^{R}r\sqrt{R^2 -r^2}\text{d}{r} \\
    & = -\dfrac{4\pi}{3}(R^2 - r^2)^{\frac{3}{2}}\bigg\vert_{0}^{R} \\
    & = \dfrac{4\pi R^3}{3}
\end{aligned}
$$

(3) 同 (2) 可知

$$
\begin{aligned}
    I & = I_1' + I_2' \\
    & = 8\pi\int_{0}^{R}r\sqrt{R^2 -r^2}\text{d}{r} \\
    & = \dfrac{8\pi R^3}{3}
\end{aligned}
$$

## 第 3 题

计算下列曲面积分.

(1) $\iint_{S^{+}}x\text{d}{y}\wedge\text{d}{z} + y\text{d}{z}\wedge\text{d}{x} + z\text{d}{x}\wedge\text{d}{y}$, 其中 $S^{+}$ 为平面 $x = 0, y = 0, z = 0, x = 1, y = 1, z = 1$ 所围立方体表面的外侧;

(2) $\iint\limits_{S^{+}} x^2\text{d}{y} \wedge \text{d}{z} + y^2\text{d}{z}\wedge\text{d}{x}+z^2\text{d}{x}\wedge\text{d}{y}$, 其中 $S^{+}$ 是柱面 $x^2 + y^2 = 1$ 被平面 $z = 0, z = 3$ 所截部分的外侧;

**解**

(1) 设 $S_1 = \{(x, y, z) | 0 \le x, y \le 1, z = 0\}$. 由对称性知 $\iint_{S^{+}}x\text{d}{y}\wedge\text{d}{z} + y\text{d}{z}\wedge\text{d}{x} + z\text{d}{x}\wedge\text{d}{y} = 3\iint\limits_{S_1}\text{d}{x}\text{d}{y} = 3$.

(2) 将 $S^{+}$ 分为三个部分: $S_1^{+}$ 上底面, $S_2^{+}$ 下底面, $S_3^{+}$ 侧面.

$$
\begin{aligned}
    \quad & \iint\limits_{S_1^{+}}x^2\text{d}{y} \wedge \text{d}{z} + y^2\text{d}{z}\wedge\text{d}{x}+z^2\text{d}{x}\wedge\text{d}{y} \\
    & = \iint\limits_{S_1^{+}}z^2\text{d}{x}\wedge\text{d}{y} \\
    & = \iint\limits_{S_1^{+}}9\text{d}{x}\wedge\text{d}{y} \\
    & = 9\pi
\end{aligned}
$$

由对称性知 $\iint\limits_{S_2^{+}}x^2\text{d}{y} \wedge \text{d}{z} + y^2\text{d}{z}\wedge\text{d}{x}+z^2\text{d}{x}\wedge\text{d}{y} = \iint\limits_{S_3^{+}}x^2\text{d}{y} \wedge \text{d}{z} + y^2\text{d}{z}\wedge\text{d}{x}+z^2\text{d}{x}\wedge\text{d}{y} = 0$.

故 $\iint\limits_{S^{+}} x^2\text{d}{y} \wedge \text{d}{z} + y^2\text{d}{z}\wedge\text{d}{x}+z^2\text{d}{x}\wedge\text{d}{y} = 9\pi$.

## 第 4 题

计算 $\iint\limits_{S^{+}}\mathbf{A}\cdot\text{d}{\mathbf{S}}$, 其中 $\mathbf{A} = \dfrac{x\mathbf{i} + y\mathbf{j} + z\mathbf{k}}{\sqrt{x^2 + y^2 + z^2}}$, $S^{+}$ 是上半球面 $z = \sqrt{R^2 - x^2 - y^2}$ 的下侧.

**解**

做坐标变换 $\begin{cases}x = R\sin\varphi\cos\theta, \\ y = R\sin\varphi\sin\theta, \\ z = R\cos\varphi, \end{cases}$ 则 $A = \dfrac{D(y, z)}{D(\varphi, \theta)} = R^2\sin^2\varphi\cos\theta$, $B = \dfrac{D(z, x)}{D(\varphi, \theta)} = R^2\sin^2\varphi\sin\theta$, $C = \dfrac{D(x, y)}{D(\varphi, \theta)} = R^2\sin\varphi\cos\varphi$. 积分区域为 $D_{\varphi\theta} = \{(\varphi, \theta) | -\dfrac{\pi}{2} \le \varphi \le 0, 0 \le \theta \le 2\pi\}$. 因此

$$
\begin{aligned}
    \iint\limits_{S^{+}}\mathbf{A}\cdot\text{d}{\mathbf{S}} & = \iint\limits_{D_{\varphi\theta}}(\sin\varphi\cos\theta, \sin\varphi\sin\theta, \cos\varphi)\cdot(R^2\sin^2\varphi\cos\theta, R^2\sin^2\varphi\sin\theta, R^2\sin\varphi\cos\varphi)\text{d}{\varphi}\text{d}{\theta} \\
    & = R^2\iint\limits_{D_{\varphi\theta}}(\sin^3\varphi\cos^2\theta + \sin^3\varphi\sin^2\theta+\sin\varphi\cos^2\varphi)\text{d}{\varphi}\text{d}{\theta} \\
    & = R^2\int_{0}^{2\pi}\text{d}{\theta}\int_{-\frac{\pi}{2}}^{0}\sin\varphi\text{d}{\varphi} \\
    & = -2\pi R^2
\end{aligned}
$$

## 第 5 题

求流速场 $\mathbf{V} = xy\mathbf{i} + yz\mathbf{j} + zx\mathbf{k}$ 由里往外穿过球面 $x^2 + y^2 + z^2 = 1$ 在第一象限部分的流量.

**解**

做坐标变换 $\begin{cases}x = \sin\varphi\cos\theta, \\ y = \sin\varphi\sin\theta, \\ z = \cos\varphi, \end{cases}$ 则 $A = \dfrac{D(y, z)}{D(\varphi, \theta)} = \sin^2\varphi\cos\theta$, $B = \dfrac{D(z, x)}{D(\varphi, \theta)} = \sin^2\varphi\sin\theta$, $C = \dfrac{D(x, y)}{D(\varphi, \theta)} = \sin\varphi\cos\varphi$. 积分区域为 $D_{\varphi\theta} = \{(\varphi, \theta) | 0 \le \varphi \le \dfrac{\pi}{2}, 0 \le \theta \le \dfrac{\pi}{2}\}$. 因此

$$
\begin{aligned}
    \iint\limits_{S^{+}}\mathbf{V}\cdot\text{d}{\mathbf{S}} & = \iint\limits_{D_{\varphi\theta}}(\sin^2\varphi\sin\theta\cos\theta, \sin\varphi\cos\varphi\sin\theta, \sin^2\varphi\cos^2\varphi\cos\varphi)\cdot(\sin^2\varphi\cos\theta, \sin^2\varphi\sin\theta, \sin\varphi\cos\varphi)\text{d}{\varphi}\text{d}{\theta} \\
    & = \iint\limits_{D_{\varphi\theta}}(\sin^4\varphi\sin\theta\cos^2\theta + \sin^3\varphi\cos\varphi\sin^2\theta+\sin^2\varphi\cos^2\varphi\cos\theta)\text{d}{\varphi}\text{d}{\theta} \\
    & = \int_{0}^{\frac{\pi}{2}}\sin^4\varphi\text{d}{\varphi}\int_{0}^{\frac{\pi}{2}}\cos^2\theta\sin\theta\text{d}{\theta} + \int_{0}^{\frac{\pi}{2}}\sin^3\varphi\cos\varphi\text{d}{\varphi}\int_{0}^{\frac{\pi}{2}}\sin^2\theta\text{d}{\theta} + \int_{0}^{\frac{\pi}{2}}\sin^2\varphi\cos^2\varphi\text{d}{\varphi}\int_{0}^{\frac{\pi}{2}}\cos\theta\text{d}{\theta} \\
    & = \dfrac{3\cdot 1}{4\cdot 2}\cdot \dfrac{\pi}{2} \cdot \dfrac{1}{3} + \dfrac{1}{4} \cdot \dfrac{1}{2} \cdot \dfrac{\pi}{2} + 1\cdot\dfrac{\pi}{16} \\
    & = \dfrac{3\pi}{16}
\end{aligned}
$$

## 第 7 题

$\iint\limits_{S^{+}}(x^2 + y^2)\text{d}{x}\wedge\text{d}{y} + y^2\text{d}{y}\wedge\text{d}{z}+z^2\text{d}{z}\wedge\text{d}{x}$, 其中 $S$ 是螺旋面 $x = u\cos v, y = u\sin v, z = av$ 在

$$
D_{uv} = \{(u, v) | 0 \le u \le 1, 0 \le v \le 2\pi\}
$$

的部分, 上侧为正.

**解**

$A = \dfrac{D(y, z)}{D(u, v)} = a\sin v$, $B = \dfrac{D(z, x)}{D(u, v)} = -a\cos v$, $C = \dfrac{D(x, y)}{D(u, v)} = u$. 因此

$$
\begin{aligned}
    \quad & \iint\limits_{S^{+}}(x^2 + y^2)\text{d}{x}\wedge\text{d}{y} + y^2\text{d}{y}\wedge\text{d}{z}+z^2\text{d}{z}\wedge\text{d}{x} \\
    & = \iint\limits_{D_{uv}}(u^2, u^2\sin^2v, a^2v^2)\cdot(a\sin v, -a\cos v, u)\text{d}{u}\text{d}{v} \\
    & = \iint\limits_{D_{uv}}(au^2\sin v - au^2\sin^2v\cos v + a^2uv^2)\text{d}{u}\text{d}{v} \\
    & = \int_{0}^{1}u^2\text{d}{u}\int_{0}^{2\pi}a\sin v\text{d}{v} + \int_{0}^{1}u^2\text{d}{u}\int_{0}^{2\pi}\sin^2v\cos v\text{d}{v} + \int_{0}^{1}u\text{d}{u}\int_{0}^{2\pi}a^2v^2\text{d}{v} \\
    & = 0 + 0 + \dfrac{4\pi^3a^2}{3} \\
    & = \dfrac{4\pi^3a^2}{3}
\end{aligned}
$$
