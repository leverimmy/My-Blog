
## 第 1 题

计算下列第二类曲线积分.

(1) $\int_{L^{+}}\dfrac{x^2\text{d}{y}-y^2\text{d}{x}}{x^{\frac{5}{3}}+y^{\frac{5}{3}}}$, 其中 $L^{+}$ 是星形线在第一象限中的弧段 $\begin{cases}x = a\cos^3t, \\ y = a\sin^3t,\end{cases}0 \le t \le \dfrac{\pi}{2}$, 正向为 $(0, a)$ 到 $(a, 0)$;

(2) $\int_{\bar{AB}}x\text{d}{x}+y\text{d}{y}+z\text{d}{z}$, 其中路径是从点 $A(1, 1, 1)$ 到 $B(2, 3, 4)$ 的直线段;

(3) $\int_{L^{+}}\dfrac{-y\text{d}{x}+x\text{d}{y}}{x^2+y^2}+b\text{d}{z}$, 其中 $L^{+}$ 是螺旋线 $x=a\cos t, y=a\sin t, z = bt$ 上由参数 $t=0$ 到 $t=2\pi$ 的一段有向弧段.

**解**

(1) $\text{d}{x} = -3a\cos^2t\sin t, \text{d}{y} = 3a\sin^2t\cos t$, 正向参数值为 $t$ 从 $\dfrac{\pi}{2}$ 到 $0$. 因此

$$
\begin{aligned}
    \int_{L^{+}}\dfrac{x^2\text{d}{y}-y^2\text{d}{x}}{x^{\frac{5}{3}}+y^{\frac{5}{3}}} & = \int_{\frac{\pi}{2}}^{0}\dfrac{a^2\cos^6t\cdot 3a\sin^2t\cos t - a^2\sin^6t\cdot (-3a\cos^2t\sin t)}{a^{\frac{5}{3}}(\cos^5t + \sin^5t)}\text{d}{t} \\
    & = 3a^{\frac{4}{3}}\int_{\frac{\pi}{2}}^{0}\cos^2t\sin^2t\text{d}{t} \\
    & = 3a^{\frac{4}{3}}\cdot\dfrac{1}{8}\left(t - \dfrac{1}{4}\sin4t\right)\bigg\vert_{\frac{\pi}{2}}^{0} \\
    & = -\dfrac{3\pi}{16}a^{\frac{4}{3}}
\end{aligned}
$$

(2) 设路径上的任意一点 $P$ 可被表示为 $P(1 + t, 1 + 2t, 1 + 3t)$, 正向参数值为 $t$ 从 $0$ 到 $1$, 则

$$
\begin{aligned}
    \int_{\bar{AB}}x\text{d}{x}+y\text{d}{y}+z\text{d}{z} & = \int_{0}^{1}[(1 + t) + 2(1 + 2t) + 3(1 + 3t)]\text{d}{t} \\
    & = \int_{0}^{1}(14t + 6)\text{d}{t} \\
    & = (7t^2 + 6t)\bigg\vert_{0}^{1} \\
    & = 13
\end{aligned}
$$

(3) $\text{d}{x} = -a\sin t\text{d}{t}, \text{d}{y} = a\cos t\text{d}{t}, \text{d}{z} = b\d{t}$. 因此

$$
\begin{aligned}
    \int_{L^{+}}\dfrac{-y\text{d}{x}+x\text{d}{y}}{x^2+y^2}+b\text{d}{z} & = \int_{0}^{2\pi}\left(\dfrac{-a\sin t\cdot (-a\sin t) + a\cos t \cdot a\cos t}{(a\cos t)^2 + (a\sin t)^2} + b^2\right)\text{d}{t} \\
    & = \int_{0}^{2\pi}(1 + b^2)\text{d}{t} \\
    & = 2\pi(1 + b^2)
\end{aligned}
$$

## 第 2 题

计算下列第二类曲线积分.

(1) $\int_{L^{+}}(x^2-y^2)\text{d}{x}$, 其中 $L^{+}$ 是抛物线 $y=x^2$ 从点 $(0, 0)$ 到点 $(2, 4)$ 的弧段;

(3) $\oint_{L^{+}}\dfrac{\text{d}{x} + \text{d}{y}}{\left|x\right| + \left|y\right|}$, 其中 $L^+$ 是 $x^2+y^2=a^2$, 逆时针为正向;

(5) $\int_{L^+}xyz\text{d}{z}$, 其中 $L$ 为 $\begin{cases}x^2+y^2+z^2=1, \\ z=y,\end{cases}$ 从 $z$ 轴正向看去是逆时针方向.

**解**

(1) 将 $y = x^2$ 代入, 有

$$
\begin{aligned}
    \int_{L^{+}}(x^2-y^2)\text{d}{x} & = \int_{0}^{2}(x^2 - x^4)\text{d}{x} \\
    & = \left(\dfrac{1}{3}x^3 - \dfrac{1}{5}x^5\right)\bigg\vert_{0}^{2} \\
    & = -\dfrac{56}{15}
\end{aligned}
$$

(3) 设 $\begin{cases}x = a\cos t, \\ y = a\sin t, \end{cases}$, 正向参数值为 $t$ 从 $0$ 到 $2\pi$, 则 $\text{d}{x} + \text{d}{y} = -a\sin t + a\cos t$. 故

$$
\begin{aligned}
    \oint_{L^{+}}\dfrac{\text{d}{x} + \text{d}{y}}{\left|x\right| + \left|y\right|} & = \int_{0}^{2\pi}\dfrac{-a\sin t + a\cos t}{a\cos t + a\sin t}\text{d}{t} \\
    & = \int_{0}^{2\pi}\dfrac{\cos t - \sin t}{\cos t + \sin t}\text{d}{t} \\
    & = \ln\left|\cos x + \sin x\right|\bigg\vert_{0}^{2\pi} \\
    & = 0
\end{aligned}
$$

(5) 设 $\begin{cases}x = \cos t, \\ y = z = \dfrac{\sqrt{2}}{2}\sin t, \end{cases}$, 正向参数值为 $t$ 从 $0$ 到 $\dfrac{\pi}{2}$, 则 $\text{d}{z} = \dfrac{\sqrt{2}}{2}\cos t\text{d}{t}$. 故

$$
\begin{aligned}
    \int_{L^+}xyz\text{d}{z} & = \int_{0}^{2\pi}\left(\cos t\cdot \dfrac{\sqrt{2}}{2}\sin t\cdot\dfrac{\sqrt{2}}{2}\sin t\right) \cdot \dfrac{\sqrt{2}}{2}\cos t\text{d}{t} \\
    & = \dfrac{\sqrt{2}}{4}\int_{0}^{2\pi}\cos^2t\sin^2t\text{d}{t} \\
    & = \dfrac{\sqrt{2}}{4}\cdot\dfrac{1}{8}\left(t - \dfrac{1}{4}\sin4t\right)\bigg\vert_{0}^{2\pi} \\
    & = \dfrac{\sqrt{2}\pi}{16}
\end{aligned}
$$

## 第 3 题

计算 $\int_{L^+}\mathbf{F}\cdot\text{d}{\mathbf{r}}$.

(1) $\mathbf{F} = -y\mathbf{i}+x\mathbf{j}$, $L$ 是由 $x=y, x=1, y=0$ 围成的三角形的边界, 逆时针为正向;

(3) $\mathbf{F} = F\mathbf{i}$, $L$ 是由 $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}=1$ 在第一象限由点 $(0, b)$ 到点 $(a, 0)$ 的弧段;

**解**

(1) 将 $L^{+}$ 拆成 $3$ 段: $L_1^+ = \begin{cases}x = t, \\ y = 0,\end{cases} L_2^+ = \begin{cases}x = 1, \\ y = t,\end{cases} L_3^+ = \begin{cases}x = 1 - t, \\ y = 1 - t,\end{cases}$, 正向参数值均为 $t$ 从 $0$ 到 $1$, 则

$$
\begin{aligned}
    \int_{L^+}\mathbf{F}\cdot\text{d}{\mathbf{r}} & = \int_{L_1^+}\mathbf{F}\cdot\text{d}{\mathbf{r}} + \int_{L_2^+}\mathbf{F}\cdot\text{d}{\mathbf{r}} + \int_{L_3^+}\mathbf{F}\cdot\text{d}{\mathbf{r}} \\
    & = \int_{0}^{1}(0, t)\cdot(1, 0)\text{d}{t} + \int_{0}^{1}(-t, 1)\cdot(0, 1)\text{d}{t} + \int_{0}^{1}(t - 1, 1 - t) \cdot (-1, -1)\text{d}{t} \\
    & = 0 + 1 + 0 \\
    & = 1
\end{aligned}
$$

(3) 设 $\begin{cases}x = a\sin\theta, \\ y = b\cos\theta, \end{cases}$, 正向参数值为 $\theta$ 从 $0$ 到 $\dfrac{\pi}{2}$, 则

$$
\begin{aligned}
    \int_{L^+}\mathbf{F}\cdot\text{d}{\mathbf{r}} & = \int_{0}^{\frac{\pi}{2}}(F, 0)\cdot(a\cos\theta, -b\sin\theta)\text{d}{\theta} \\
    & = \int_{0}^{\frac{\pi}{2}}aF\cos\theta\text{d}{\theta} \\
    & = aF
\end{aligned}
$$

## 第 4 题

今有一平面力场 $\mathbf{F}$, 大小等于点 $(x, y)$ 到坐标原点的距离, 方向指向坐标原点.

(1) 计算单位质量的质点 $P$ 沿椭圆 $\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1$ 在第一象限中的弧段从点 $(a, 0)$ 移动到点 $(0, b)$ 时, 力 $\mathbf{F}$ 所做的功;

(2) 计算质点 $P$ 沿上述椭圆逆时针绕一圈时, 力 $\mathbf{F}$ 所做的功.

**解**

(1) 设 $\mathbf{r} = (a\cos\theta, b\sin\theta)$, 则 $\mathbf{F} = (-a\cos\theta, -b\sin\theta)$. 所求的功

$$
\begin{aligned}
    W_1 & = \int_{L^+}\mathbf{F}\cdot\text{d}{\mathbf{r}} \\
    & = \int_{0}^{\frac{\pi}{2}}(-a\cos\theta, -b\sin\theta)\cdot(-a\sin\theta, b\cos\theta)\text{d}{\theta} \\
    & = \int_{0}^{\frac{\pi}{2}}(a^2\sin\theta\cos\theta - b^2\sin\theta\cos\theta)\text{d}{\theta} \\
    & = \dfrac{a^2-b^2}{2}\int_{0}^{\frac{\pi}{2}}\sin2\theta\text{d}{\theta} \\
    & = \dfrac{b^2-a^2}{4}\cos2\theta\bigg\vert_{0}^{\frac{\pi}{2}} \\
    & = \dfrac{a^2 - b^2}{2}
\end{aligned}
$$

(2) 同理可得

$$
\begin{aligned}
    W_2 & = \int_{L^+}\mathbf{F}\cdot\text{d}{\mathbf{r}} \\
    & = \int_{0}^{2\pi}(-a\cos\theta, -b\sin\theta)\cdot(-a\sin\theta, b\cos\theta)\text{d}{\theta} \\
    & = \int_{0}^{2\pi}(a^2\sin\theta\cos\theta - b^2\sin\theta\cos\theta)\text{d}{\theta} \\
    & = \dfrac{a^2-b^2}{2}\int_{0}^{2\pi}\sin2\theta\text{d}{\theta} \\
    & = 0
\end{aligned}
$$

## 第 5 题

解答下列各题.

(1) 设一力场的力的大小与作用点到 $z$ 轴的距离成反比, 方向垂直 $z$ 轴且指向 $z$ 轴, 一质点沿圆周 $\begin{cases}x^2 + z^2 = 1, \\ y = 1,\end{cases}$ 由点 $(1, 1, 0)$ 经四分之一圆弧到达点 $(0, 1, 1)$ 时, 求该力场所做的功;

**解**

(1) 设 $\mathbf{F} = k\left(-\dfrac{x}{x^2 + y^2}, -\dfrac{y}{x^2 + y^2}, 0\right)$. 设 $\mathbf{r} = (\cos\theta, 1, \sin\theta)$, 则 $\mathbf{F} = k\left(-\dfrac{\cos\theta}{1 + \cos^2\theta}, -\dfrac{1}{1 + \cos^2\theta}, 0\right)$.

因此总功

$$
\begin{aligned}
    W & = \int_{L^{+}}\mathbf{F}\cdot\text{d}{\mathbf{r}} \\
    & = \int_{0}^{\frac{\pi}{2}}k\left(-\dfrac{\cos\theta}{1 + \cos^2\theta}, -\dfrac{1}{1 + \cos^2\theta}, 0\right)\cdot(-\sin\theta, 0, \cos\theta)\text{d}{\theta} \\
    & = k\int_{0}^{\frac{\pi}{2}}\dfrac{\sin\theta\cos\theta}{1 + \cos^2\theta}\text{d}{\theta} \\
    & = k\int{0}^{1}\dfrac{t}{1 + t^2}\text{d}{t} \\
    & = \dfrac{k}{2}\ln(1 + t^2)\bigg\vert_{0}^{1} \\
    & = \dfrac{k\ln 2}{2}
\end{aligned}
$$
