
## 第 1 题

计算下列第一类曲面积分.

(1) $\iint\limits_{S}(x+y+z)\text{d}{S}$, 其中 $S$ 是上半球面 $x^2 + y^2 + z^2 = a^2(z \ge 0)$;

(3) $\iint\limits_{S}\dfrac{\text{d}{S}}{(1 + x + y)^2}$, 其中 $S$ 是四面体 $x + y + z \le 1, x \ge 0, y \ge 0, z \ge 0$ 的边界面;

**解**

(1) 做坐标变换 $\begin{cases}x = a\sin\varphi\cos\theta, \\ y = a\sin\varphi\sin\theta, \\ z = a\cos\varphi\end{cases}$, 则积分区域变为 $D = \{(a\sin\varphi\cos\theta, a\sin\varphi\sin\theta, a\cos\varphi) | 0 \le \varphi \le \dfrac{\pi}{2}, 0 \le \theta \le 2\pi\}$. $\text{d}{S} = a^2\sin\varphi\text{d}{\varphi}\text{d}{\theta}$. 由对称性知 $\iint\limits_{S}(x+y)\text{d}{S} = 0$. 因此

$$
\begin{aligned}
    \iint\limits_{S}(x+y+z)\text{d}{S} & = \iint\limits_{S}z\text{d}{S} \\
    & = \iint\limits_{S}a\cos\varphi\cdot a^2\sin\varphi\text{d}{\varphi}\text{d}{\theta} \\
    & = a^3\int_{0}^{2\pi}\text{d}{\theta}\int_{0}^{\frac{\pi}{2}}\sin\varphi\cos\varphi\text{d}{\varphi} \\
    & = 2\pi a^3\int_{0}^{\frac{\pi}{2}}\sin\varphi\cos\varphi\text{d}{\varphi} \\
    & = -\dfrac{\pi a^3}{2}\cos2\varphi \bigg\vert_{0}^{\frac{\pi}{2}} \\
    & = \pi a^3
\end{aligned}
$$

(3) 将 $S$ 分解为

$$
\begin{aligned}
    S_1 & = \{(x, y, z) | x + y + z = 1 , x \ge 0, y \ge 0, z \ge 0\}, \\
    S_2 & = \{(x, y, z) | x + y + z \le 1, x = 0, y \ge 0, z \ge 0\}, \\
    S_3 & = \{(x, y, z) | x + y + z \le 1, x \ge 0, y = 0, z \ge 0\}, \\
    S_4 & = \{(x, y, z) | x + y + z \le 1, x \ge 0, y \ge 0, z = 0\}.
\end{aligned}
$$

对于 $S_1$, 由于 $x + y + z = 1$, 所以 $\text{d}{S} = \sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2}\text{d}{x}\text{d}{y} = \sqrt{3}\text{d}{x}\text{d}{y}$.

$$
\begin{aligned}
    \iint\limits_{S_1}\dfrac{\text{d}{S}}{(1 + x + y)^2} & = \iint\limits_{S_1}\dfrac{\sqrt{3}\text{d}{x}\text{d}{y}}{(1 + x + y)^2} \\
    & = \sqrt{3}\int_{0}^{1}\text{d}{x}\int_{0}^{1 - x}\dfrac{\text{d}{y}}{(1 + x + y)^2} \\
    & = \sqrt{3}\int_{0}^{1}\left(\dfrac{1}{1 + x} - \dfrac{1}{2}\right)\text{d}{x} \\
    & = \sqrt{3}\left(\ln(x + 1) - \dfrac{x}{2}\right)\bigg\vert_{0}^{1} \\
    & = \sqrt{3}\left(\ln 2 - \dfrac{1}{2}\right)
\end{aligned}
$$

同理 $\iint\limits_{S_4}\dfrac{\text{d}{S}}{(1 + x + y)^2} = \ln2 - \dfrac{1}{2}$, 再考虑 $S_2$:

$$
\begin{aligned}
    \iint\limits_{S_2}\dfrac{\text{d}{S}}{(1 + x + y)^2} & = \iint\limits_{S_2}\dfrac{\text{d}{y}\text{d}{z}}{(1 + y)^2} \\
    & = \int_{0}^{1}\text{d}{y}\int_{0}^{1 - y}\dfrac{\text{d}{z}}{(1 + y)^2} \\
    & = \int_{0}^{1}\dfrac{1 - x}{(1 + x)^2}\text{d}{x} \\
    & = -\left(\ln(1 +x) + \dfrac{2}{1 + x}\right)\bigg\vert_{0}^{1} \\
    & = 1 - \ln 2
\end{aligned}
$$

同理 $\iint\limits_{S_3}\dfrac{\text{d}{S}}{(1 + x + y)^2} = 1 - \ln 2$. 因此总和为

$$
\begin{aligned}
    S & = S_1 + S_2 + S_3 + S_4 \\
    & = \sqrt{3}\left(\ln 2 - \dfrac{1}{2}\right) + (1 - \ln 2) + (1 - \ln 2) + \ln2 - \dfrac{1}{2} \\
    & = \dfrac{3 - \sqrt{3}}{2} + (\sqrt{3} - 1)\ln 2
\end{aligned}
$$

## 第 2 题

计算圆柱面 $x^2 + y^2 = ax$ 被球面 $x^2 + y^2 + z^2 = a^2$ 所截部分的面积 $(a > 0)$.

**解**

进行坐标变换 $\begin{cases}x = \dfrac{a}{2} + \dfrac{a}{2}\cos\theta, \\ y = \dfrac{a}{2}\sin\theta,\end{cases}$ 则积分区域变为 $L = \{(x, y) | x = \dfrac{a}{2} + \dfrac{a}{2}\cos\theta, y = \dfrac{a}{2}\sin\theta, 0 \le \theta \le 2\pi\}$. 同时 $\text{d}{l} = \dfrac{a}{2}\text{d}{\theta},z^2 = a^2 - ax = \dfrac{a^2}{2}(1-\cos\theta)$. 不妨只考虑 $z > 0$ 的部分.

$$
\begin{aligned}
    \int_{L}z\text{d}{l} & = \int_{0}^{2\pi}\sqrt{\dfrac{a^2}{2}(1 - \cos\theta)}\cdot\dfrac{a}{2}\text{d}{\theta} \\
    & = \dfrac{a^2}{2}\int_{0}^{2\pi}\sin\dfrac{\theta}{2}\text{d}{\theta} \\
    & = -a^2\cos\dfrac{\theta}{2}\bigg\vert_{0}^{2\pi} \\
    & = 2a^2
\end{aligned}
$$

由对称性, $z < 0$ 的区域所截面积也为 $2a^2$, 因此全面积为 $4a^2$.

## 第 3 题

求抛物面 $2z = x^2 + y^2$ 在 $z \in [0, 1]$ 部分的质量, 其中质量面密度为 $\sigma = z$.

**解**

抛物面的面积元素为

$$
\begin{aligned}
    \text{d}{S} & = \sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2}\text{d}{x}\text{d}{y} \\
    & = \sqrt{1 + x^2 + y^2}\text{d}{x}\text{d}{y} \\
\end{aligned}
$$

进行坐标变换 $\begin{cases}x = r\cos\theta, \\ y = r\sin\theta,\end{cases}$ 则有

$$
\begin{aligned}
    \iint\limits_{0 \le x^2 + y^2 \le 2}\sigma\text{d}{S} & = \iint\limits_{0 \le x^2 + y^2 \le 2}\dfrac{x^2 + y^2}{2}\cdot\sqrt{1 + x^2 + y^2}\text{d}{x}\text{d}{y} \\
    & = \int_{0}^{\sqrt{2}}\text{d}{r}\int_{0}^{2\pi}\dfrac{r^3}{2}\sqrt{1 + r^2}\text{d}{r} \\
    & = \pi\int_{0}^{\sqrt{2}}r^3\sqrt{1 + r^2}\text{d}{r} \\
    & = \dfrac{\pi}{2}\int_{0}^{2}u\sqrt{1 + u}\text{d}{u} \\
    & = \dfrac{\pi}{15}(3u-2)(u+1)^{\frac{3}{2}}\bigg\vert_{0}^{2} \\
    & = \dfrac{12\sqrt{3} + 2}{15}\pi
\end{aligned}
$$

## 第 8 题

求锥面 $z = \sqrt{x^2 + y^2}$ 在柱面 $z^2 = 2x$ 内的面积.

**解**

锥面的面积元素为

$$
\begin{aligned}
    \text{d}{S} & = \sqrt{1 + \left(\dfrac{\partial z}{\partial x}\right)^2 + \left(\dfrac{\partial z}{\partial y}\right)^2}\text{d}{x}\text{d}{y} \\
    & = \sqrt{2}\text{d}{x}\text{d}{y} \\
\end{aligned}
$$

锥面被柱面所截部分记作 $S$ (其面积也记为 $S$), 它在 $xy$ 平面上的投影区域是圆域 $D_{xy} = \{(x, y) | x^2 + y^2 \le 2x\}$, 所以

$$
S = \iint\limits_{S}1\text{d}{S} = \iint_{D_{xy}}\sqrt{2}\text{d}{x}\text{d}{y} = \sqrt{2}\pi
$$
