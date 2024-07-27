
## 第 1 题

**解**

## 第 2 题

**解**

## 第 3 题

**解**

## 第 4 题

**解**

## 第 5 题

设曲线 $y = y(x)$ 满足 $4x^2y''-4xy' - y = 0$, 过点 $(1, 4)$, 且在点 $(1, 4)$ 处与 $x$ 轴夹角为 $\frac{\pi}{4}$, 求 $y = y(x)$.

**解**

设 $y = x^\lambda$, 则 $4\lambda(\lambda - 1) + 4\lambda - 1 = 0$. 解得 $\lambda_1 = \frac{1}{2}, \lambda_2 = -\frac{1}{2}$. 故通解为 $y = C_1\sqrt{x} + \frac{C_2}{\sqrt{x}}$. 求导得 $y' = \frac{C_1}{2\sqrt{x}} - \frac{C_2}{2x\sqrt{x}}$. 由题

$$
\begin{cases}
	y(1) = 4 \\
	y'(1) = 1
\end{cases}
\Longrightarrow
\begin{cases}
	C_1 + C_2= 4 \\
	\frac{1}{2}(C_1 - C_2) = 1
\end{cases}
$$

解得 $C_1 = 3, C_2 = 1$. 故 $y = 3\sqrt{x} + \frac{1}{\sqrt{x}}$.

## 第 6 题

设 $y = e^{2x} + (1 + x)e^x$ 为微分方程 $y'' + ay' + by = ce^x$ 的一个解, 求常系数 $a, b, c$ 及微分方程的通解.

**解**

## 第 7 题

已知连续函数 $y = f(x)$ 满足

$$
f(x) = \sin x + \int_{0}^{x}(t-x)f(t)\text{d}{t},
$$

求 $y = f(x)$.

**解**

$f(0) = 0$. 由 $f(x) = \sin x + \int_{0}^{x}tf(t)\text{d}{t} - x\int_{0}^{x}f(t)\text{d}{t}$ 两边求导得 $f'(x) = \cos x + xf(x) - \left(xf(x) + \int_{0}^{x}f(t)\text{d}{t}\right) = \cos x - \int_{0}^{x}f(t)\text{d}{t}$. 这蕴含着 $f'(0) = 1$. 再次求导得 $f''(x) = -\sin x - f(x)$, 即 $y'' + y = -\sin x$. 考虑方程 $z'' + z = e^{-ix}$. 特征方程为 $\lambda^2 + 1 = 0$, $\lambda_1 = i, \lambda_2 = -i$. 因此 $\lambda = -i$ 为特征方程的一个根. 设其有特解 $Z(x) = Axe^{-ix}$, 代入有 $A = \frac{i}{2}$, 则 $Z(x) = \frac{i}{2}e^{-ix}, \text{Im}{Z(x)} = \frac{1}{2}x\cos x$. 故原微分方程有通解 $y = C_1\cos x + C_2\sin x + \frac{1}{2}x\cos x$. 又因为 $f(0) = 0, f(1) = 1$, 故 $C_1 = 0, C_2 = \frac{1}{2}$. 因此 $f(x) = \frac{1}{2}\sin x + \frac{1}{2}x\cos x$.
