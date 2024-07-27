
## 第 1 题

计算下列曲线积分.

(1) $\int_L(x+y)\text{d}{l}$, 其中 $L$ 为 $O(0, 0), A(1, 0), B(0, 1)$ 为顶点的三角形的三条边;

(2) $\int_L\sqrt{x^2+y^2}\text{d}{l}$, 其中 $L$ 为圆周 $x^2+y^2=2x$;

(3) $\int_Ly^2\text{d}{l}$, 其中 $L$ 为摆线 $\begin{cases}x = a(t - \sin t), \\ y = a(1 - \cos t),\end{cases}0 \le t \le 2\pi$;

(4) $\int_L(x^{\frac{4}{3}}+y^{\frac{4}{3}})\text{d}{l}$, 其中 $L$ 为星形线 $\begin{cases}x = a\cos^3t, \\ y = a\sin^3t,\end{cases}0 \le t \le 2\pi$.

**解**

(1) $L = L_1 + L_2 + L_3$, 其中 $L_1 = \begin{cases}x = x, \\ y = 0, \end{cases}L_2 = \begin{cases}x = x, \\ y = 1-x, \end{cases}L_3 = \begin{cases}x = 0, \\ y = y, \end{cases}(0 \le x \le 1, 0 \le y \le 1)$. 因此

$$
\begin{aligned}
    \int_L (x+y)\text{d}{l} & = \int_{L_1} (x+y)\text{d}{l} + \int_{L_2} (x+y)\text{d}{l} + \int_{L_3} (x+y)\text{d}{l} \\
    & = \int_{0}^{1}x\text{d}{x} + \int_{0}^{1}\sqrt{2}\text{d}{x} + \int_{0}^{1}y\text{d}{y} \\
    & = \dfrac{1}{2} + \sqrt{2} + \dfrac{1}{2} \\
    & = \sqrt{2} + 1
\end{aligned}
$$

(2) 设 $\begin{cases}x=1+\cos\theta, \\ y = \sin\theta, \end{cases}$ 则 $\text{d}{l} = \sqrt{(\text{d}{x})^2 + (\text{d}{y})^2} = \sqrt{(-\sin\theta)^2+(\cos\theta)^2}\text{d}{\theta} = \text{d}{\theta}$.

$$
\begin{aligned}
    \int_L\sqrt{x^2+y^2}\text{d}{l} & = \int_{-\pi}^{\pi}\sqrt{(1+\cos\theta)^2 + \sin^2\theta}\text{d}{\theta} \\
    & = \int_{-\pi}^{\pi}2\cos\dfrac{\theta}{2}\text{d}{\theta} \\
    & = 4\int_{-\frac{\pi}{2}}^{\frac{\pi}{2}}\cos u\text{d}{u} \\
    & = 8
\end{aligned}
$$

(3) $\text{d}{l} = \sqrt{(\text{d}{x})^2 + (\text{d}{y})^2} = \sqrt{a^2(a-\cos t)^2 + (a\sin t)^2} = \sqrt{2}a\sin\dfrac{t}{2}$. 因此

$$
\begin{aligned}
    \int_Ly^2\text{d}{l} & = \int_{0}^{2\pi}a^2(1-\cos t)^2\cdot\sqrt{2}a\sin\dfrac{t}{2} \text{d}{t} \\
    & = 4\sqrt{2}a^3\int_{0}^{2\pi}\sin^3\dfrac{t}{2}\text{d}{t} \\
    & = 8\sqrt{2}a^3\int_{0}^{2\pi}\sin^3u\text{d}{u} \\
    & = 32\sqrt{2}a^3\int_{0}^{\frac{\pi}{2}}\sin^5u\text{d}{u} \\
    & = 32\sqrt{2}a^3\cdot\dfrac{4 \cdot 2}{5\cdot 3} \\
    & = \dfrac{256}{15}a^3
\end{aligned}
$$

(4) $\text{d}{l} = \sqrt{(\text{d}{x})^2+(\text{d}{y})^2} = \sqrt{(3a\cos^2t\sin t)^2 + (3a\sin^2t\cos t)^2}\text{d}{t} = 3a\left|\sin t\cos t\right|\text{d}{t}$. 只考虑 $0 \le t \le \dfrac{\pi}{2}$ 的情况.

$$
\begin{aligned}
    \int_{L'}(x^{\frac{4}{3}}+y^{\frac{4}{3}})\text{d}{l} & = \int_{0}^{\frac{\pi}{2}}a^{\frac{4}{3}}(\cos^4t+\sin^4t)\cdot 3a(\sin t\cos t)\text{d}{t} \\
    & = 3a^{\frac{7}{3}}\int_{0}^{\frac{\pi}{2}}(\cos^4t+\sin^4t)\sin t\cos t\text{d}{t} \\
    & = 3a^{\frac{7}{3}}\left(\dfrac{1}{6}\sin^6t - \dfrac{1}{6}\cos^6t\right)\bigg\vert_{0}^{\frac{\pi}{2}} \\
    & = a^{\frac{7}{3}}
\end{aligned}
$$

由对称性知 $\int_{L}(x^{\frac{4}{3}}+y^{\frac{4}{3}})\text{d}{l} = 4\int_{L'}(x^{\frac{4}{3}}+y^{\frac{4}{3}})\text{d}{l} = 4a^{\frac{7}{3}}$.

## 第 2 题

计算下列曲线积分.

(1) $\int_L x\sqrt{x^2-y^2}\text{d}{l}$, 其中 $L$ 为双纽线右半支 $r^2 = a^2\cos2\theta(-\dfrac{\pi}{4} \le \theta \le \dfrac{\pi}{4}, a > 0)$;

(2) $\int_L(x^2+y^2+z^2)\text{d}{l}$, 其中 $L$ 为螺线 $x=2\cos t, y=2\sin t, z=3t(0\le t \le 2\pi)$;

(3) $\int_L xyz \text{d}{l}$, 其中 $L$ 的参数方程为 $x=t, y=\dfrac{2}{3}\sqrt{2}t^{\frac{3}{2}}, z=\dfrac{1}{2}t^2(0 \le t \le 1)$;

(4) $\int_L x\text{d}{l}$, 其中 $L$ 为球面 $x^2+y^2+z^2=4$ 在第一象限部分的边界.

**解**

(1) 由题知 $\sqrt{x^2-y^2}=\sqrt{(r\cos\theta)^2-(r\sin\theta)^2} = \sqrt{r^2\cos2\theta} = \dfrac{r^2}{a}$. 而

$$
\begin{aligned}
    \text{d}{l} & = \sqrt{(\text{d}{x})^2+(\text{d}{y})^2} \\
    & = \sqrt{(-r\sin\theta)^2+(r\cos\theta)^2} \\
    & = \sqrt{(\cos\theta\text{d}{r} - r\sin\theta\text{d}{\theta})^2 + (\sin\theta\text{d}{r} + r\cos\theta\text{d}{\theta})^2} \\
    & = \sqrt{(\text{d}{r})^2 + r^2(\text{d}{\theta})^2}
\end{aligned}
$$

对 $r^2 = a^2\cos2\theta$ 微分得到 $\text{d}{r} = -\dfrac{a^2\sin2\theta}{r}\text{d}{\theta}$, 代入有 $\text{d}{l} = \sqrt{\left(-\dfrac{a^2\sin2\theta}{r}\text{d}{\theta}\right)^2+r^2(\text{d}{\theta})^2} = \dfrac{1}{r}\sqrt{r^4 - (a^2\sin2\theta)^2}\text{d}{\theta}$. 结合 $r^2 = a^2\cos2\theta$ 知 $\text{d}{l} = \dfrac{a^2}{r}\text{d}{\theta}$. 因此

$$
\begin{aligned}
    \int_L x\sqrt{x^2-y^2}\text{d}{l} & = \int_{-\frac{\pi}{4}}^{\frac{\pi}{4}}r\cos\theta\cdot \dfrac{r^2}{a}\cdot \dfrac{a^2}{r}\text{d}{\theta} \\
    & = a\int_{-\frac{\pi}{4}}^{\frac{\pi}{4}}r^2\cos\theta\text{d}{\theta} \\
    & = a\int_{-\frac{\pi}{4}}^{\frac{\pi}{4}}a^2\cos2\theta\cos\theta\text{d}{\theta} \\
    & = a^3\int_{-\frac{\pi}{4}}^{\frac{\pi}{4}}(1-2\sin^2\theta)\cos\theta\text{d}{\theta} \\
    & = a^3\left(\sin\theta - \dfrac{2}{3}\sin^3\theta\right)\bigg\vert_{-\frac{\pi}{4}}^{\frac{\pi}{4}} \\
    & = \dfrac{2\sqrt{2}a^3}{3}
\end{aligned}
$$

(2) $\text{d}{l} = \sqrt{(\text{d}{x})^2+(\text{d}{y})^2+(\text{d}{z})^2} = \sqrt{(-2\sin t)^2+(2\cos t)^2 + 3^2} = \sqrt{13}$. 因此

$$
\begin{aligned}
    \int_L(x^2+y^2+z^2)\text{d}{l} & = \int_{0}^{2\pi}(4 + 9t^2)\cdot\sqrt{13}\text{d}{t} \\
    & = \sqrt{13}(4t + 3t^3)\bigg\vert_{0}^{2\pi} \\
    & = 24\sqrt{13}\pi^3+8\sqrt{13}\pi
\end{aligned}
$$

(3) $\text{d}{l} = \sqrt{(\text{d}{x})^2+(\text{d}{y})^2+(\text{d}{z})^2} = \sqrt{1^2+(\sqrt{2t})^2 + t^2} = (t+1)\text{d}{t}$. 因此

$$
\begin{aligned}
    \int_Lxyz\text{d}{l} & = \int_{0}^{1}\dfrac{\sqrt{2}}{3}t^{\frac{9}{2}}\cdot(t+1)\text{d}{t} \\
    & = \dfrac{2\sqrt{2}}{3}t^{\frac{11}{2}}\left(\dfrac{1}{13}t + \dfrac{1}{11}\right)\bigg\vert_{0}^{1} \\
    & = \dfrac{16\sqrt{2}}{143}
\end{aligned}
$$

(4) $L = L_1 + L_2 + L_3$, 其中 $L_1 = \begin{cases}x = 0, \\ y = 2\cos\theta, \\ z = 2\sin\theta, \end{cases}L_2 = \begin{cases}x = 2\cos\theta, \\ y = 0, \\ z = 2\sin\theta, \end{cases} L_3 = \begin{cases}x = 2\cos\theta, \\ y = 2\sin\theta, \\ z = 0, \end{cases}(0 \le \theta \le \dfrac{\pi}{2})$. 因此

$$
\begin{aligned}
    \int_L x\text{d}{l} & = \int_{L_1} x\text{d}{l} + \int_{L_2} x\text{d}{l} + \int_{L_3} x\text{d}{l} \\
    & = 0 + 2\int_{0}^{\frac{\pi}{2}}2\cos\theta\cdot4\text{d}{\theta} \\
    & = 8 
\end{aligned}
$$

## 第 4 题

曲线 $y=\ln x$ 的线密度 $\rho(x, y) = x^2$, 试求曲线在 $x = \sqrt{3}$ 与 $x = \sqrt{15}$ 之间的质量.

**解**

$M = \int_L\rho(x, y)\text{d}{l}$, 其中 $L$ 是 $y=\ln x(\sqrt{3} \le x \le \sqrt{15})$. 而 $\text{d}{l} = \sqrt{(\text{d}{x})^2+(\text{d}{y})^2} = \sqrt{1 + \dfrac{1}{x^2}}\text{d}{x}$, 因此

$$
\begin{aligned}
    M & = \int_L\rho(x, y)\text{d}{l} \\
    & = \int_{\sqrt{3}}^{\sqrt{15}}x^2\cdot \sqrt{1 + \dfrac{1}{x^2}}\text{d}{x} \\
    & = \int_{\sqrt{3}}^{\sqrt{15}}x\sqrt{x^2+1}\text{d}{x} \\
    & = \dfrac{1}{3}(x^2+1)^{\frac{3}{2}}\bigg\vert_{\sqrt{3}}^{\sqrt{15}} \\
    & = \dfrac{56}{3}
\end{aligned}
$$

## 第 5 题

求圆柱面 $x^2+y^2=a^2$ 介于曲面 $z = a+\dfrac{x^2}{a}$ 与 $z=0$ 之间的面积 ($a > 0$).

**解**

积分区域为 $L = \{(x, y) | x^2+y^2=a^2\} = \{(x, y) | x = a\cos\theta, b=a\sin\theta, 0 \le \theta \le 2\pi\}$. 而 $\text{d}{l} = \sqrt{(\text{d}{x})^2+(\text{d}{y})^2} = \sqrt{(-a\sin\theta)^2 + (a\cos\theta)^2}\text{d}{\theta} = a\text{d}{\theta}$, 因此

$$
\begin{aligned}
    S & = \int_{L}z\text{d}{l} \\
    & = \int_{0}^{2\pi}(a+a\cos^2\theta)a\text{d}{\theta} \\
    & = \dfrac{1}{2}a^2\int_{0}^{2\pi}(3+\cos2\theta)\text{d}{\theta} \\
    & = 3\pi a^2
\end{aligned}
$$

## 第 6 题

求摆线 $\begin{cases}x = a(t - \sin t), \\ y = a(1 - \cos t),\end{cases}0 \le t \le \pi$ 的形心.

**解**

$\text{d}{l} = \sqrt{(\text{d}{x})^2 + (\text{d}{y})^2} = \sqrt{a^2(a-\cos t)^2 + (a\sin t)^2} = \sqrt{2}a\sin\dfrac{t}{2}$.

总质量

$$
\begin{aligned}
    M & = \int_{L}\text{d}{l} \\
    & = \int_{0}^{\pi}\sqrt{2}a\sin\dfrac{t}{2}\text{d}{t} \\
    & = \sqrt{2}a\int_{0}^{\pi}\sin\dfrac{t}{2}\text{d}{t} \\
    & = 2\sqrt{2}a\int_{0}^{\frac{\pi}{2}}\sin u\text{d}{u} \\
    & = 2\sqrt{2}a
\end{aligned}
$$

对 $x$ 轴的静力矩

$$
\begin{aligned}
    M_{x} & = \int_{L}y\text{d}{l} \\
    & = \int_{0}^{\pi}a(1-\cos t)\cdot\sqrt{2}a\sin\dfrac{t}{2}\text{d}{t} \\
    & = 2\sqrt{2}a^2\int_{0}^{\pi}\sin^2\dfrac{t}{2}\cdot\sin\dfrac{t}{2}\text{d}{t} \\
    & = 4\sqrt{2}a^2\int_{0}^{\frac{\pi}{2}}\sin^3u\text{d}{u} \\
    & = 4\sqrt{2}a^2\cdot\dfrac{2}{3} \\
    & = \dfrac{8\sqrt{2}a^2}{3}
\end{aligned}
$$

对 $y$ 轴的静力矩

$$
\begin{aligned}
    M_y & = \int_{L}x\text{d}{l} \\
    & = \int_{0}^{\pi}a(t-\sin t)\cdot\sqrt{2}a\sin\dfrac{t}{2}\text{d}{t} \\
    & = \sqrt{2}a^2\int_{0}^{\pi}t\sin\dfrac{t}{2}\text{d}{t} -\sqrt{2}a^2\int_{0}^{\pi}\sin t\sin\dfrac{t}{2}\text{d}{t} \\
    & = 4\sqrt{2}a^2\int_{0}^{\frac{\pi}{2}}u\sin u\text{d}{u} - 4\sqrt{2}a^2\int_{0}^{\frac{\pi}{2}}sin^2u\cos u\text{d}{u} \\
    & = 4\sqrt{2}a^2(-u\cos u + \sin u)\bigg\vert_{0}^{\frac{\pi}{2}} - \dfrac{4\sqrt{2}a^2}{3}\sin^3u\bigg\vert_{0}^{\frac{\pi}{2}} \\
    & = 4\sqrt{2}a^2 - \dfrac{4\sqrt{2}a^2}{3} \\
    & = \dfrac{8\sqrt{2}a^2}{3}
\end{aligned}
$$

因此形心在 $\left(\dfrac{M_x}{M}, \dfrac{M_y}{M}\right)$ 即 $(\dfrac{4a}{3}, \dfrac{4a}{3})$ 处.

## 第 7 题

求螺线 $x = a\cos t, y = a\sin t, z = \dfrac{b}{2\pi}t(0 \le t \le 2\pi)$ 绕 $x$ 轴旋转的转动惯量 (线密度为 $1$).

**解**

$\text{d}{l} = \sqrt{(\text{d}{x})^2+(\text{d}{y})^2+(\text{d}{z})^2} = \sqrt{(a\sin t)^2+(a\cos t)^2 + \left(\dfrac{b}{2\pi}\right)^2}\text{d}{t} = \dfrac{\sqrt{b^2+4\pi^2a^2}}{2\pi}\text{d}{t}$. 因此

$$
\begin{aligned}
    J_{x} & = \int_{L}(y^2 + z^2)\text{d}{l} \\
    & = \int_{0}^{2\pi}\left(a^2\sin^2t + \left(\dfrac{b}{2\pi}t\right)^2\right)\dfrac{\sqrt{b^2+4\pi^2a^2}}{2\pi}\text{d}{t} \\
    & = \dfrac{\sqrt{b^2+4\pi^2a^2}}{2\pi}\int_{0}^{2\pi}\left(a^2\cdot\dfrac{1-2\cos2t}{2} + \dfrac{b^2}{4\pi^2}\cdot t^2\right)\text{d}{t} \\
    & = \dfrac{\sqrt{b^2+4\pi^2a^2}}{2\pi}\cdot\left(\pi a^2 + \dfrac{2\pi b^2}{3}\right) \\
    & = \left(\dfrac{a^2}{2} + \dfrac{b^2}{3}\right)\sqrt{b^2+4\pi^2a^2}
\end{aligned}
$$

## 第 8 题

圆周 $L:x^2+y^2=-2y$ 上每点的质量线密度等于 $\sqrt{x^2+y^2}$, 求曲线 $L$ 的质量与曲线 $L$ 对 $x$ 轴的静力矩.

**解**

设 $\begin{cases}x = \cos\theta, \\ y = -1 + \sin\theta,\end{cases}(-\dfrac{3\pi}{2} \le \theta \le \dfrac{\pi}{2})$, 此时恒有 $\cos\dfrac{\theta}{2} \ge \sin\dfrac{\theta}{2}$.

曲线 $L$ 的质量为

$$
\begin{aligned}
    M & = \int_{L}\sqrt{x^2+y^2}\text{d}{l} \\
    & = \int_{-\frac{3\pi}{2}}^{\frac{\pi}{2}}\sqrt{2 - 2\sin\theta}\text{d}{\theta} \\
    & = \sqrt{2}\int_{-\frac{3\pi}{2}}^{\frac{\pi}{2}}(\cos\dfrac{\theta}{2} - \sin\dfrac{\theta}{2})\text{d}{\theta} \\
    & = 2\sqrt{2}\int_{-\frac{3\pi}{4}}^{\frac{\pi}{4}}(\cos\varphi - \sin\varphi)\text{d}{\varphi} \\
    & = 2\sqrt{2}(\sin\varphi + \cos\varphi)\bigg\vert_{-\frac{3\pi}{4}}^{\frac{\pi}{4}} \\
    & = 8
\end{aligned}
$$

对 $x$ 轴的静力矩为

$$
\begin{aligned}
    M_{x} & = \int_{L}y\sqrt{x^2+y^2}\text{d}{l} \\
    & = \sqrt{2}\int_{-\frac{3\pi}{2}}^{\frac{\pi}{2}}(\sin\theta - 1)(\cos\dfrac{\theta}{2} - \sin\dfrac{\theta}{2})\text{d}{\theta} \\
    & = \sqrt{2}\int_{-\frac{3\pi}{2}}^{\frac{\pi}{2}}(2\cos^2\dfrac{\theta}{2}\sin\dfrac{\theta}{2} - 2\sin^2\dfrac{\theta}{2}\cos\dfrac{\theta}{2} + \sin\dfrac{\theta}{2} - \cos\dfrac{\theta}{2})\text{d}{\theta} \\
    & = 2\sqrt{2}\int_{-\frac{3\pi}{4}}^{\frac{\pi}{4}}(2\cos^2\varphi\sin\varphi - 2\sin^2\varphi\cos\varphi + \sin\varphi - \cos\varphi)\text{d}{\varphi} \\
    & = 2\sqrt{2}\left(-\dfrac{2}{3}\cos^2\varphi - \dfrac{2}{3}\sin^3\varphi - \cos\varphi - \sin\varphi\right)\bigg\vert_{-\frac{3\pi}{4}}^{\frac{\pi}{4}} \\
    & = -\dfrac{32}{3}
\end{aligned}
$$
