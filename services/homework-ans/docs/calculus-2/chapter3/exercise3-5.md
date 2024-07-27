
## 第 1 题

求下列曲面的面积.

(1) 柱面 $x^2 + z^2 = a^2$ 在柱面 $x^2 + y^2 = a^2$ 内的部分;

(2) 锥面 $z = \sqrt{x^2 + y^2}$ 在柱面 $z^2 = 2x$ 内的部分;

(3) 由曲面 $x^2 + y^2 = az$ 与 $z = 2a - \sqrt{x^2 + y^2}$ 所包围的空间几何体的表面积.

**解**

(1) 只考虑 $z \ge 0$ 部分的面积 $S_1$. 由于 $\dfrac{\partial z}{\partial x} = -\dfrac{x}{\sqrt{a^2-x^2}}, \dfrac{\partial z}{\partial y} = 0$, 因此 $\sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2} = \sqrt{1 + \dfrac{x^2}{a^2-x^2}} = \dfrac{a}{\sqrt{a^2-x^2}}$.

$$
\begin{aligned}
    S_1 & = \iint\limits_{x^2+y^2\le a^2}\dfrac{a}{\sqrt{a^2-x^2}}\text{d}{x}\text{d}{y} \\
    & = \int_{-a}^{a}\text{d}{x}\int_{-\sqrt{a^2-x^2}}^{\sqrt{a^2-x^2}}\dfrac{a}{\sqrt{a^2-x^2}}\text{d}{y} \\
    & = \int_{-a}^{a}2a\text{d}{x} \\
    & = 4a^2
\end{aligned}
$$

由对称性知 $S = 2S_1 = 8a^2$.

(2) 在 $xy$ 面上的投影为 $D_{xy} = \{(x, y) | x^2 + y^2 \le 2x\}$, 是一个以 $(1, 0)$ 为圆心, $1$ 为半径的圆, 面积为 $\pi$. 由于 $\dfrac{\partial z}{\partial x} = \dfrac{x}{\sqrt{x^2 + y^2}}, \dfrac{\partial z}{\partial y} = \dfrac{y}{\sqrt{x^2 + y^2}}$, 故 $\sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2} = \sqrt{2}$. 因此

$$
S = \iint\limits_{D_{xy}}\sqrt{2}\text{d}{x}\text{d}{y} = \sqrt{2}\pi
$$

(3) 两者的交线为 $x^2 + y^2 = a(2a-\sqrt{x^2+y^2})$. 积分区域为 $\{(x, y) | x^2+y^2 \le a(2a - \sqrt{x^2+y^2})\}$, 化简后即为 $\{(x, y) | x^2 + y^2 \le a^2\}$. 先考虑 $z = 2a - \sqrt{x^2 + y^2}$ 带来的上表面面积 $S_1$. 由于 $\dfrac{\partial z}{\partial x} = -\dfrac{x}{\sqrt{x^2 + y^2}}, \dfrac{\partial z}{\partial y} = -\dfrac{y}{\sqrt{x^2 + y^2}}$, 故 $\sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2} = \sqrt{2}$.

$$
\begin{aligned}
    S_1 & = \iint\limits_{x^2+y^2\le a^2}\sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2}\text{d}{x}\text{d}{y} \\
    & = \sqrt{2}\iint\limits_{x^2+y^2\le a^2}\text{d}{x}\text{d}{y} \\
    & = \sqrt{2}\pi a^2
\end{aligned}
$$

再考虑 $x^2 + y^2 = az$ 带来的下表面面积 $S_2$. 由于 $\dfrac{\partial z}{\partial x} = \dfrac{2x}{a}, \dfrac{\partial z}{\partial y} = \dfrac{2y}{a}$, 故 $\sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2} = \sqrt{\dfrac{a^2 + 4(x^2 + y^2)}{a^2}}$. 极坐标变换后, 有

$$
\begin{aligned}
    S_2 & = \iint\limits_{x^2 + y^2 \le a^2}\sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2}\text{d}{x}\text{d}{y} \\
    & = \int_{0}^{2\pi}\text{d}{\theta}\int_{0}^{a}r\cdot\sqrt{1+\dfrac{4r^2}{a^2}}\text{d}{r} \\
    & = \dfrac{2\pi}{a}\int_{0}^{a}r\sqrt{a^2 + 4r^2}\text{d}{r} \\
    & = \dfrac{\pi}{4a}\int_{a^2}^{5a^2}\sqrt{u}\text{d}{u} \\
    & = \dfrac{\pi}{6}(5\sqrt{5} - 1)a^2
\end{aligned}
$$

因此表面积为 $S = S_1 + S_2 = \dfrac{\pi}{6}(6\sqrt{2} + 5\sqrt{5} - 1)a^2$.

## 第 2 题

求下列曲面所包围的均匀物体的质心.

(1) $\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} = 1, x \ge 0, y \ge 0, z \ge 0$;

**解**

(1) 积分区域为 $\Omega = \{(x, y, z) | \dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} \le 1, x \ge 0, y \ge 0, z \ge 0\}$. 做坐标变换 $\begin{cases}x = ar\sin\varphi\cos\theta, \\ x = br\sin\varphi\sin\theta, \\ z = cr\cos\varphi, \end{cases}$, 则 $\left|\dfrac{D(x, y, z)}{D(r, \varphi, \theta)}\right| = abcr^2\sin\varphi$. 因此

$$
\begin{aligned}
    M & = \iiint\limits_{\Omega}\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \int_{0}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{\frac{\pi}{2}}\text{d}{\varphi}\int_{0}^{1}\left|\dfrac{D(x, y, z)}{D(r, \varphi, \theta)}\right|\text{d}{r} \\
    & = \int_{0}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{\frac{\pi}{2}}\text{d}{\varphi}\int_{0}^{1}abcr^2\sin\varphi\text{d}{r} \\
    & = \int_{0}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{\frac{\pi}{2}}\sin\varphi\text{d}{\varphi}\int_{0}^{1}abcr^2\text{d}{r} \\
    & = \dfrac{\pi}{2}\cdot 1\cdot \dfrac{1}{3}abc \\
    & = \dfrac{\pi}{6}abc
\end{aligned}
$$

对 $xy$ 平面的静力矩为

$$
\begin{aligned}
    M_{xy} & = \iiint\limits_{\Omega}z\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \int_{0}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{\frac{\pi}{2}}\text{d}{\varphi}\int_{0}^{1}\left|\dfrac{D(x, y, z)}{D(r, \varphi, \theta)}\right|cr\cos\varphi\text{d}{r} \\
    & = \int_{0}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{\frac{\pi}{2}}\text{d}{\varphi}\int_{0}^{1}abc^2r^3\sin\varphi\cos\varphi\text{d}{r} \\
    & = \int_{0}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{\frac{\pi}{2}}\sin\varphi\cos\varphi\text{d}{\varphi}\int_{0}^{1}abc^2r^3\text{d}{r} \\
    & = \dfrac{\pi}{2}\cdot \dfrac{1}{2}\cdot \dfrac{1}{4}abc^2 \\
    & = \dfrac{\pi}{16}abc^2
\end{aligned}
$$

由对称性知 $M_{yz} = \dfrac{\pi}{16}a^2bc, M_{xz} = \dfrac{\pi}{16}ab^2c$. 因此质心坐标为 $\left(\dfrac{3a}{8}, \dfrac{3b}{8}, \dfrac{3c}{8}\right)$.

## 第 3 题

求解下列问题.

(1) 物体在 $P(x, y, z)$ 的点密度为 $\rho = \dfrac{1}{\sqrt{x^2+y^2+z^2}}, \Omega = \{(x, y, z) | 0 \le x, y, z \le 1\}$, 求物体的质心;

**解**

(1) 总质量为

$$
\begin{aligned}
    M & = \iiint\limits_{\Omega}(x+y+z)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{x}\int_{0}^{1}\text{d}{y}\int_{0}^{1}(x+y+z)\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{x}\int_{0}^{1}(x+y+\dfrac{1}{2})\text{d}{y} \\
    & = \int_{0}^{1}(x+1)\text{d}{x} \\
    & = \dfrac{3}{2}
\end{aligned}
$$

对 $xy$ 平面的静力矩为

$$
\begin{aligned}
    M_{xy} & = \iiint\limits_{\Omega}z(x+y+z)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{x}\int_{0}^{1}\text{d}{y}\int_{0}^{1}z(x+y+z)\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{x}\int_{0}^{1}\left(\dfrac{1}{2}(x+y)+\dfrac{1}{3}\right)\text{d}{y} \\
    & = \int_{0}^{1}\left(\dfrac{1}{2}x + \dfrac{7}{12}\right)\text{d}{x} \\
    & = \dfrac{5}{6}
\end{aligned}
$$

因此 $\bar{z} = \dfrac{M_{xy}}{M} = \dfrac{5}{9}$. 由对称性知 $\bar{x} = \bar{y} = \bar{z} = \dfrac{5}{9}$. 因此质心坐标为 $\left(\dfrac{5}{9}, \dfrac{5}{9}, \dfrac{5}{9}\right)$.

## 第 4 题

求下列曲面所包围的均匀物体关于 $z$ 轴的转动惯量.

(1) $z = x^2+y^2, x+y = \pm 1, x - y = \pm 1, z = 0$;

**解**

(1) 设积分区域为 $\Omega = \{(x, y, z) | z \le x^2 + y^2, x+y\le 1, x\ge 0, y \ge 0, z \ge 0\}$.

$$
\begin{aligned}
    J_z' & = \iiint\limits_{\Omega}(x^2+y^2)\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{x}\int_{0}^{1-x}\text{d}{y}\int_{0}^{x^2+y^2}(x^2+y^2)\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{x}\int_{0}^{1-x}(x^2+y^2)^2\text{d}{y} \\
    & = \int_{0}^{1}\left(-\dfrac{28}{15}x^5+4x^4-4x^3+\dfrac{8}{3}x^2-x+\dfrac{1}{5}\right)\text{d}{x} \\
    & = \dfrac{7}{90}
\end{aligned}
$$

由对称性知 $J_z = 4J_z' = 4\cdot\dfrac{7}{90} = \dfrac{14}{45}$.
