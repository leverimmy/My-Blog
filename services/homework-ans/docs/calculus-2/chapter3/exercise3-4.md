
## 第 3 题

利用三重积分的几何意义, 求下列三重积分的值.

(1) $\iiint\limits_{\Omega}1\text{d}{x}\text{d}{y}\text{d}{z}, \Omega = \{(x, y, z) | \sqrt{x^2 + y^2} \le z \le H\}$;

(2) $\iiint\limits_{\Omega}1\text{d}{x}\text{d}{y}\text{d}{z}, \Omega = \{(x, y, z) | 0 \le z \le 1 - x - y, 0 \le y \le 1 - x, 0 \le x \le 1\}$.

**解**

(1) 由题知, 这个积分的值是一个底面半径为 $H$ 高为 $H$ 的圆锥的体积, 因此为 $\dfrac{1}{3}\pi H^3$.

(2) 由题知, 这个积分的值是一个由三条两两垂直的长为 $1$ 的边构成的正四面体的体积, 因此为 $\dfrac{1}{6}$.

## 第 4 题

将三重积分 $\iiint\limits_{\Omega}f(x, y, z)\text{d}{x}\text{d}{y}\text{d}{z}$ 化为直角坐标下的累次积分.

(1) $\Omega = \{(x, y, z) | \sqrt{x^2 + y^2} \le z \le 1\}$;

(2) $\Omega = \{(x, y, z) | 0 \le z \le x^2 + y^2, x + y \le 1, x \ge 0, y \ge 0\}$.

**解**

(1) 由 $\sqrt{x^2 + y^2} \le 1$ 得 $-\sqrt{1-x^2} \le y \le \sqrt{1-x^2}$. 因此 $\iiint\limits_{\Omega}f(x, y, z)\text{d}{x}\text{d}{y}\text{d}{z} = \int_{0}^{1}\text{d}{x}\int_{-\sqrt{1-x^2}}^{\sqrt{1-x^2}}\text{d}{y}\int_{\sqrt{x^2+y^2}}^{1}f(x, y, z)\text{d}{z}$.

(2) 由 $x + y \le 1, x \ge 0, y \ge 0$ 得到 $1 - x \le y \le 1, 0 \le x \le 1$. 因此 $\iiint\limits_{\Omega}f(x, y, z)\text{d}{x}\text{d}{y}\text{d}{z} = \int_{0}^{1}\text{d}{x}\int_{1-x}^{1}\text{d}{y}\int_{0}^{x^2+y^2}f(x, y, z)\text{d}{z}$.

## 第 5 题

计算下列三重积分的值.

(1) $\iiint\limits_{\Omega}xy^2z^3\text{d}{x}\text{d}{y}\text{d}{z}$, $\Omega$ 是由马鞍面 $z = xy$ 与平面 $y = x, x = 1, z = 0$ 所围成的空间区域;

(3) $\iiint\limits_{\Omega}x\cos(y + z)\text{d}{x}\text{d}{y}\text{d}{z}$, $\Omega$ 是由曲面 $x = \sqrt{y}$ 与平面 $x = 0, z = 0, y + z = \dfrac{\pi}{2}$ 围成的区域.

**解**

(1) 由题知 $\Omega = \{(x, y, z) | 0 \le x \le 1, 0 \le y \le x, 0 \le z \le xy\}$. 因此

$$
\begin{aligned}
    \iiint\limits_{\Omega}xy^2z^3\text{d}{x}\text{d}{y}\text{d}{z} & = \int_{0}^{1}\text{d}{x}\int_{0}^{x}\text{d}{y}\int_{0}^{xy}xy^2z^3\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{x}\int_{0}^{x}\dfrac{1}{4}x^5y^6\text{d}{y} \\
    & = \int_{0}^{1}\dfrac{1}{28}x^{12}\text{d}{x} \\
    & = \dfrac{1}{364}
\end{aligned}
$$

(3) 由题知 $\Omega = \{(x, y, z) | 0 \le z \le \dfrac{\pi}{2}, 0 \le y \le \dfrac{\pi}{2} - z, 0 \le x \le \sqrt{y}\}$. 因此

$$
\begin{aligned}
    \iiint\limits_{\Omega}x\cos(y + z)\text{d}{x}\text{d}{y}\text{d}{z} & = \int_{0}^{\frac{\pi}{2}}\text{d}{z}\int_{0}^{\frac{\pi}{2}-z}\text{d}{y}\int_{0}^{\sqrt{y}}x\cos(y+z)\text{d}{x} \\
    & = \dfrac{1}{2}\int_{0}^{\frac{\pi}{2}}\text{d}{z}\int_{0}^{\frac{\pi}{2}-z}y\cos(y+z)\text{d}{y} \\
    & = \dfrac{1}{2}\int_{0}^{\frac{\pi}{2}}\left(\dfrac{\pi}{2} - z - \cos z\right)\text{d}{z} \\
    & = \dfrac{\pi^2}{16} - \dfrac{1}{2}
\end{aligned}
$$

## 第 6 题

计算累次积分 $I = \int_{0}^{1}\text{d}{x}\int_{0}^{x}\text{d}{y}\int_{0}^{y}\dfrac{\cos z}{(1 - z)^2}\text{d}{z}$ 的值.

**解**

积分区域为 $\Omega = \{0 \le z \le y \le x \le 1\}$. 因此

$$
\begin{aligned}
    I & = \int_{0}^{1}\text{d}{x}\int_{0}^{x}\text{d}{y}\int_{0}^{y}\dfrac{\cos z}{(1 - z)^2}\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{z}\int_{z}^{1}\text{d}{y}\int_{y}^{1}\dfrac{\cos z}{(1-z)^2}\text{d}{x} \\
    & = \int_{0}^{1}\text{d}{z}\int_{z}^{1}(1-y)\dfrac{\cos z}{(1-z)^2}\text{d}{y} \\
    & = \dfrac{1}{2}\int_{0}^{1}\cos z\text{d}{z} \\
    & = \dfrac{\sin 1}{2}
\end{aligned}
$$

## 第 7 题

计算下列三重积分的值.

(1) $\iiint\limits_{\Omega}\sqrt{x^2 + y^2}\text{d}{x}\text{d}{y}\text{d}{z}, \Omega = \{\sqrt{x^2 + y^2} \le z \le 1\}$;

(3) $\iiint\limits_{\Omega}\dfrac{z}{x^2 + y^2}\text{d}{x}\text{d}{y}\text{d}{z}, \Omega = \{(x, y, z) | 0 \le z \le x^2 + y^2, x + y \le 1, x, y \ge 0\}$;

(5) $\iiint\limits_{\Omega}xyz\text{d}{x}\text{d}{y}\text{d}{z}, \Omega = \{(x, y, z) | x^2 + y^2 + z^2 \le 4, x^2 + y^2 + (z - 2)^2\le 4, x \ge 0, y \ge 0\}$;

**解**

(1) 做坐标变换 $\begin{cases}x = r\cos \theta, \\ y = r\sin \theta, \\ z = z,\end{cases}$ 则

$$
\begin{aligned}
    \iiint\limits_{\Omega}\sqrt{x^2 + y^2}\text{d}{x}\text{d}{y}\text{d}{z} & = \int_{0}^{1}\text{d}{r}\int_{0}^{2\pi}\text{d}{\theta}\int_{r}^{1}r^2\text{d}{z} \\
    & = \int_{0}^{1}\text{d}{r}\int_{0}^{2\pi}r^2(1-r)\text{d}{\theta} \\
    & = 2\pi\int_{0}^{1}r^2(1-r)\text{d}{r} \\
    & = \dfrac{\pi}{6}
\end{aligned}
$$

(3)

$$
\begin{aligned}
    \iiint\limits_{\Omega}\dfrac{z}{x^2 + y^2}\text{d}{x}\text{d}{y}\text{d}{z} & = \int_{0}^{1}\text{d}{x}\int_{0}^{1-x}\text{d}{y}\int_{0}^{x^2+y^2}\dfrac{z}{x^2 + y^2}\text{d}{z} \\
    & = \dfrac{1}{2}\int_{0}^{1}\text{d}{x}\int_{0}^{1-x}(x^2+y^2)\text{d}{y} \\
    & = \dfrac{1}{2}\int_{0}^{1}\left(x^2(1-x) + \dfrac{1}{3}(1-x)^3\right)\text{d}{x} \\
    & = \dfrac{1}{12}
\end{aligned}
$$

(5)

做坐标变换 $\begin{cases}x = r\sin\varphi\cos\theta, \\ y = r\sin\varphi\sin\theta, \\ z = r\cos\varphi, \end{cases}$ 则 $\Omega = \Omega_1 + \Omega_2$, 其中

$$
\begin{aligned}
    \Omega_1 & = \{0 \le r \le 2, 0 \le \varphi \le \dfrac{\pi}{4}, 0 \le \theta \le \dfrac{\pi}{2}\}, \\
    \Omega_2 & = \{0 \le r \le 4\cos\varphi, \dfrac{\pi}{4} \le \varphi \le \dfrac{\pi}{2}, 0 \le \theta \le \dfrac{\pi}{2}\}.
\end{aligned}
$$

因此

$$
\begin{aligned}
    \iiint\limits_{\Omega_1}xyz\text{d}{x}\text{d}{y}\text{d}{z} & = \int_{0}^{2}r^5\text{d}{r}\int_{0}^{\frac{\pi}{4}}\sin^3\varphi \cos\varphi\text{d}{\varphi}\int_{0}^{\frac{\pi}{2}}\sin\theta\cos\theta\text{d}{\theta} \\
    & = \int_{0}^{2}r^5\text{d}{r}\int_{0}^{\frac{\pi}{4}}\sin^3\varphi \text{d}{\sin\varphi}\int_{0}^{\frac{\pi}{2}}\sin\theta\text{d}{\sin\theta} \\
    & = \dfrac{32}{3}\cdot\dfrac{1}{16}\cdot\dfrac{1}{2} \\
    & = \dfrac{1}{3}
\end{aligned}
$$

且

$$
\begin{aligned}
    \iiint\limits_{\Omega_2}xyz\text{d}{x}\text{d}{y}\text{d}{z} & = \int_{\frac{\pi}{4}}^{\frac{\pi}{2}}\sin^3\varphi \cos\varphi\text{d}{\varphi}\int_{0}^{4\cos\varphi}r^5\text{d}{r}\int_{0}^{\frac{\pi}{2}}\sin\theta\cos\theta\text{d}{\theta} \\
    & = \dfrac{1}{2}\int_{\frac{\pi}{4}}^{\frac{\pi}{2}}\sin^3\varphi \cos\varphi\text{d}{\varphi}\int_{0}^{4\cos\varphi}r^5\text{d}{r} \\
    & = \dfrac{1024}{3}\int_{\frac{\pi}{4}}^{\frac{\pi}{2}}\sin^3\varphi\cos^7\varphi\text{d}{\varphi} \\
    & = -\dfrac{1024}{3}\int_{\frac{\pi}{4}}^{\frac{\pi}{2}}(1-\cos^2\varphi)\cos^7\varphi\text{d}{\cos\varphi} \\
    & = \dfrac{1024}{3}\int_{0}^{\frac{\sqrt{2}}{2}}(u^7-u^9)\text{d}{u} \\
    & = \dfrac{8}{5}
\end{aligned}
$$

故

$$
\begin{aligned}
    \iiint\limits_{\Omega}xyz\text{d}{x}\text{d}{y}\text{d}{z} & = \iiint\limits_{\Omega_1}xyz\text{d}{x}\text{d}{y}\text{d}{z} + \iiint\limits_{\Omega_2}xyz\text{d}{x}\text{d}{y}\text{d}{z} \\
    & = \dfrac{1}{3} + \dfrac{8}{5} \\
    & = \dfrac{29}{15}
\end{aligned}
$$

## 第 8 题

做适当的变量代换, 计算下列三重积分.

(1) $\iiint\limits_{\Omega}\sqrt{1 - \dfrac{x^2}{a^2} - \dfrac{y^2}{b^2} - \dfrac{z^2}{c^2}}\text{d}{x}\text{d}{y}\text{d}{z}, \Omega = \{(x, y, z) | \dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} \le 1\}$;

**解**

(1) 作代换 $\begin{cases}x = ar\sin\varphi\cos\theta, \\ y = br\sin\varphi\sin\theta, \\ z = cr\sin\varphi,\end{cases}$ 有

$$
\begin{aligned}
    \iiint\limits_{\Omega}\sqrt{1 - \dfrac{x^2}{a^2} - \dfrac{y^2}{b^2} - \dfrac{z^2}{c^2}}\text{d}{x}\text{d}{y}\text{d}{z} & = abc\int_{0}^{2\pi}\text{d}{\theta}\int_{0}^{\pi}\sin\varphi\text{d}{\varphi}\int_{0}^{1}\sqrt{1-r^2}r^2\text{d}{r} \\
    & = 4\pi abc\int_{0}^{1}r^2\sqrt{1-r^2}\text{d}{r} \\
    & = 4\pi abc\int_{0}^{\frac{\pi}{2}}\sin^2\alpha\cos\alpha\text{d}{\sin\alpha} \\
    & = 4\pi abc \int_{0}^{\frac{\pi}{2}}(\sin^2\alpha - \sin^4\alpha)\text{d}{\alpha} \\
    & = 4\pi abc\cdot (\dfrac{1}{2} - \dfrac{3\cdot 1}{4\cdot 2})\cdot\dfrac{\pi}{2} \\
    & = \dfrac{\pi^2 abc}{4}
\end{aligned}
$$

## 第 10 题

设 $f(t)$ 在 $(-\infty, +\infty)$ 上连续, $f(t) = 3\iiint\limits_{x^2 + y^2 + z^2 \le t^2}f(\sqrt{x^2 + y^2 + z^2})\text{d}{x}\text{d}{y}\text{d}{z} + \left|t^3\right|$, 求 $f(t)$.

**解**

注意到 $f(t)$ 为偶函数, 因此暂时先考虑 $t\ge 0$ 时的情况, 此时 $f(t) = 3\iiint\limits_{x^2 + y^2 + z^2 \le t^2}f(\sqrt{x^2 + y^2 + z^2})\text{d}{x}\text{d}{y}\text{d}{z} + t^3$. 作变换 $\begin{cases}x = r\sin\varphi\cos\theta, \\ y = r\sin\varphi\sin\theta, \\ z = r\sin\varphi,\end{cases}$, 则

$$
\begin{aligned}
    f(t) & = 3\iiint\limits_{x^2 + y^2 + z^2 \le t^2}f(\sqrt{x^2 + y^2 + z^2})\text{d}{x}\text{d}{y}\text{d}{z} + t^3 \\
    & = t^3 + \int_{0}^{\pi}\sin\varphi\text{d}{\varphi}\int_{0}^{2\pi}\text{d}{\theta}\int_{-t}^{t}r^2f(r)\text{d}{r} \\
    & = t^3 + 12 \pi \int_{-t}^{t}r^2f(r)\text{d}{r} \\
    & = t^3 + 24 \pi \int_{0}^{t}r^2f(r)\text{d}{r}
\end{aligned}
$$

对等式左右两侧求导, 有 $f'(t) = 3t^2 + t^2f(t)$. 解得 $f(t) = Ce^{8\pi t^3}-\dfrac{1}{8\pi}(t\ge 0)$. 又因为 $f(0) = 0$ 且 $f(t)$ 为偶函数, 因此

$$
f(t) = \dfrac{1}{8\pi}e^{8\pi \left|t^3\right|}-\dfrac{1}{8\pi}
$$

## 第 11 题

函数 $f(x, y, z)$ 连续, 计算极限 $\lim\limits_{r \to 0^{+}}\dfrac{1}{r^3}\iiint\limits_{x^2 + y^2 + z^2 \le r^2}f(x, y, z)\text{d}{x}\text{d}{y}\text{d}{z}$.

**解**

将积分中值定理推广到三维, 有 $\exists \xi, \eta, \zeta \in (0, r)$ 使得 $\iiint\limits_{x^2+y^2+z^2\le r^2}f(x, y, z)\text{d}{x}\text{d}{y}\text{d}{z} = \dfrac{4}{3}\pi r^3f(\xi, \eta, \zeta)$. 代入则有

$$
\begin{aligned}
    \lim\limits_{r \to 0^{+}}\dfrac{1}{r^3}\iiint\limits_{x^2 + y^2 + z^2 \le r^2}f(x, y, z)\text{d}{x}\text{d}{y}\text{d}{z} & = \lim\limits_{r \to 0^{+}}\dfrac{1}{r^3}\dfrac{4}{3}\pi r^3f(\xi, \eta, \zeta) \quad \xi, \eta, \zeta \in (0, r) \\
    & = \dfrac{4}{3}\pi f(0, 0, 0)
\end{aligned}
$$
