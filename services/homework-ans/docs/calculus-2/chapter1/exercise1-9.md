
## 第 1 题

研究下列函数的极值.

(1) $z = x^3 + y^3 - 3x^2 - 3y^2$;

(2) $z = e^{2x}(x + y^2 + 2y)$;

(4) $z = x_1 + \dfrac{x_2}{x_1} + \dfrac{x_3}{x_2} + \cdots + \dfrac{x_n}{x_{n - 1}} + \dfrac{2}{x_n}, \quad x_i > 1$;

(5) $u = x + \dfrac{y^2}{4x} + \dfrac{z^2}{y} + \dfrac{2}{z}, \quad x, y, z > 0$.

**解**

(1) $\dfrac{\partial z}{\partial x} = 3x^2 - 6x, \dfrac{\partial z}{\partial y} = 3y^2 - 6y$. Hesse 矩阵为 $H = \begin{pmatrix}6x - 6 & 0\\ 0 & 6y - 6\end{pmatrix}$. 驻点有 $(0, 0), (0, 2), (2, 0), (2, 2)$. 代入 Hesse 矩阵判断正定性、负定性知极小值点为 $(2, 2)$, 极大值点为 $(0, 0)$. 因此极小值为 $z(2, 2) = -8$, 极大值为 $z(0, 0) = 0$.

(2) $\dfrac{\partial z}{\partial x} = e^{2x}(2x + 2y^2 + 4y + 1), \dfrac{\partial z}{\partial y} = e^{2x}(2y + 2)$. Hesse 矩阵为 $H = \begin{pmatrix}e^{2x}(4x + 4y^2 + 8y + 4) & (4y+4)e^{2x}\\ (4y+4)e^{2x} & 2e^{2x}\end{pmatrix}$. 驻点为 $(\dfrac{1}{2}, -1)$. 代入 Hesse 矩阵, 为正定的. 因此有极小值为 $z\left(\dfrac{1}{2}, -1\right) = -\dfrac{e}{2}$.

(4) $\dfrac{\partial z}{\partial x_1} = 1 - \dfrac{x_2}{x_1}$, $\dfrac{\partial z}{\partial x_i} = \dfrac{1}{x_{i - 1}} - \dfrac{x_{i + 1}}{x_i^2}, \quad (2 \le i \le n - 1)$, $\dfrac{\partial z}{\partial x_n} = \dfrac{1}{x_{n - 1}} - \dfrac{2}{x_n^2}$. 因此 Hesse 矩阵为

$$
\begin{pmatrix}
    \dfrac{2x_2}{x_1^3} & -\dfrac{1}{x_1^2} & 0 & 0 & \cdots & 0 \\
    -\dfrac{1}{x_1^2} & \dfrac{2x_3}{x_2^3} & -\dfrac{1}{x_2^2} & 0 & \cdots & 0 \\
    0 & -\dfrac{1}{x_2^2} & \dfrac{2x_4}{x_3^3} & -\dfrac{1}{x_3^2} & \cdots & 0 \\
    0 & 0 & -\dfrac{1}{x_3^2} & \dfrac{2x_5}{x_4^3} & \cdots & 0 \\
    \vdots & \vdots & \vdots & \vdots & \ddots & \vdots \\
    0 & 0 & 0 & 0 & \cdots & \dfrac{4}{x_n^3}
\end{pmatrix}
$$

驻点为 $(2^{\frac{1}{n+1}}, 2^{\frac{2}{n+1}}, \cdots, 2^{\frac{n}{n+1}})$. 代入 Hesse 矩阵知其为正定的, 因此有极小值 $z(2^{\frac{1}{n+1}}, 2^{\frac{2}{n+1}}, \cdots, 2^{\frac{n}{n+1}}) = (n+1)2^{\frac{1}{n+1}}$.

(5) $\dfrac{\partial u}{\partial x} = 1 - \dfrac{y^2}{4x^2}, \dfrac{\partial u}{\partial y} = \dfrac{y}{2x} - \dfrac{z^2}{y^2}, \dfrac{\partial u}{\partial z} = \dfrac{2z}{y} - \dfrac{2}{z^2}$. Hesse 矩阵为 $\begin{pmatrix}\dfrac{y^2}{2x^3} & -\dfrac{y}{2x^2} & 0\\ -\dfrac{y}{2x^2} & \dfrac{1}{2x} + \dfrac{2z^2}{y^3} & -\dfrac{2z}{y^2} \\ 0 & -\dfrac{2z}{y^2} & \dfrac{2}{y} + \dfrac{4}{z^3}\end{pmatrix}$. 驻点为 $\left(\dfrac{1}{2}, 1, 1\right)$ 和 $\left(-\dfrac{1}{2}, -1, -1\right)$. 代入 Hesse 矩阵知极小值点为 $(\dfrac{1}{2}, 1, 1)$. 因此极小值为 $u(\dfrac{1}{2}, 1, 1) = 4$.

## 第 2 题

函数 $z = z(x, y)$ 由 $2x^2 + 2y^2 + z^2 + 8xz - z + 8 = 0$ 确定, 求 $z = z(x, y)$ 的极值.

**解**

记 $F(x, y, z) = 2x^2 + 2y^2 + z^2 + 8xz - z + 8$. 因此 $\dfrac{\partial z}{\partial x} = -\dfrac{\dfrac{\partial F}{\partial x}}{\dfrac{\partial F}{\partial z}} = -\dfrac{4x + 8z}{2z + 8x - 1}, \dfrac{\partial z}{\partial y} = -\dfrac{\dfrac{\partial F}{\partial y}}{\dfrac{\partial F}{\partial z}} = \dfrac{4y}{2z + 8x - 1}$. 因此在极值点有 $\begin{cases}4x_0 + 8z_0 = 0, \\ y_0 = 0.\end{cases}$ 代入方程有 $2(-2z_0)^2 + z_0^2 + 8(-2z_0)z_0 - z_0 + 8 = 0$, 化简得 $7z_0^2 + z_0 - 8 = 0$. 解得 $z_{01} = 1. z_{02} = -\dfrac{8}{7}$. 经检验 Hesse 矩阵也满足条件, 所以极小值为 $1$, 极大值为 $-\dfrac{8}{7}$.

## 第 4 题

求下列函数在给定区域的最值.

(2) $z = xy(4 - x - y), (x, y) \in \{x + y \le 6, y \ge 0, x \ge 1\}$.

**解**

由于 $\dfrac{\partial z}{\partial x} = 4y - y^2 - 2xy, \dfrac{\partial z}{\partial y} = 4x - x^2 - 2xy$, 所以驻点满足方程

$$
\begin{cases}
    4y - y^2 - 2xy = 0 \\
    4x - x^2 - 2xy = 0
\end{cases}
$$

解得 $(x, y) = (0, 0), (0, 4), \left(\dfrac{4}{3}, \dfrac{4}{3}\right), (4, 0)$. 再加上 $x \ge 1$ 的条件后, 只剩下 $z\left(\dfrac{4}{3}, \dfrac{4}{3}\right) = \dfrac{64}{27}$ 和 $z(4, 0) = 0$.

再考虑边界上的极值. 当 $y = 0$ 时 $z \equiv 0$. 当 $x = 1$ 时 $z = y(3 - y) \in \left[0, \dfrac{9}{4}\right]$. 当 $x + y = 6$ 时 $z = -2xy \in [-18, 0]$.

综上可得 $z$ 有最大值 $\dfrac{64}{27}$, 最小值 $-18$.

## 第 5 题

证明下列各题

(1) 设 $D$ 为 $\mathbb{R}^2$ 中的有界闭区域. $f(x, y)$ 在 $D$ 上连续, 在 $D$ 内可微, 且满足方程 $\dfrac{\partial f}{\partial x} + \dfrac{\partial f}{\partial y} = kf(x, y)(k > 0)$, 若在 $D$ 的边界上有 $f(x, y) = 0$, 试证 $f(x, y)$ 在 $D$ 上恒为 $0$.

(2) 设 $u(x, y)$ 在 $x^2 + y^2 \le 1$ 上连续, 在 $x^2 + y^2 < 1$ 满足 $\dfrac{\partial^2 u}{\partial x^2} + \dfrac{\partial^2u}{\partial y^2} = u$. 且在 $x^2 + y^2 = 1$ 上, $u(x, y) \ge 0$. 证明: 当 $x^2 + y^2 \le 1$ 时, $u(x, y) \ge 0$.

**证明**

(1) 反证法. 假设 $\exists P(x_0, y_0)$ 使得 $f(x_0, y_0) \neq 0$. 不妨设 $f(x_0, y_0) > 0$. 则由题知 $\dfrac{\partial f}{\partial x}\bigg\vert_P + \dfrac{\partial f}{\partial y}\bigg\vert_P = kf(x_0, y_0) > 0$. 因此 $\dfrac{\partial f}{\partial x}\bigg\vert_P$ 和 $\dfrac{\partial f}{\partial y}\bigg\vert_P$ 中至少有一个为正数. 不妨设 $\dfrac{\partial f}{\partial x}\bigg\vert_P> 0$. 则 $f(x, y)$ 从 $f(x_0, y_0)$ 沿着 $x$ 方向单调递增. 而 $f(x_0, y_0) > 0$, 所以沿着该方向到边界时, 有边界点函数值也为正数, 矛盾. 因此 $f(x, y) \equiv 0$.

(2) 反证法. 假设 $\exists P(x_0, y_0)$ 使得 $u(x_0, y_0) < 0$, 且 $u$ 在 $P(x_0, y_0)$ 处取得极小值. 则在极小值点 $P(x_0, y_0)$ 处的 Hesse 矩阵的迹为 $\dfrac{\partial^2 u}{\partial x^2}\bigg\vert_P + \dfrac{\partial^2u}{\partial y^2}\bigg\vert_P > 0$. 这与题目 $\dfrac{\partial^2 u}{\partial x^2}\bigg\vert_P + \dfrac{\partial^2u}{\partial y^2}\bigg\vert_P = u(x_0, y_0) < 0$ 矛盾. 因此当 $x^2 + y^2 \le 1$ 时, $u(x, y) \ge 0$.

## 第 6 题

证明函数 $z(x, y) = (1 + e^y)\cos x - ye^y$ 有无穷多个极大值点而无极小值.

**证明**

由于 $\dfrac{\partial z}{\partial x} = -(1 + e^y)\sin x, \dfrac{\partial z}{\partial y} = (\cos x - 1 - y)e^y$, 所以 Hesse 矩阵为

$$
H = \begin{pmatrix}\dfrac{\partial^2 z}{\partial x^2} & \dfrac{\partial ^2z}{\partial x\partial y} \\ \dfrac{\partial^2z}{\partial x\partial y} & \dfrac{\partial^2z}{\partial y^2}\end{pmatrix} = \begin{pmatrix}-(1+e^y)\cos x & -e^y\sin x \\ -e^y\sin x & (\cos x - y - 2)e^y\end{pmatrix}
$$

且驻点为 $(2k\pi, 0)$ 和 $((2k+1)\pi, 2)$, 其中 $k \in \mathbb{Z}$. 将 $(2k\pi, 0)$ 代入 $H$, 有 $H_1 = \begin{pmatrix}-2 & 0 \\ 0 & -1\end{pmatrix}$ 负定. 因此 $(2k\pi, 0), k \in \mathbb{Z}$ 为极大值点, 且有无穷多个. 将 $((2k + 1)\pi, 2)$ 代入 $H$, 有 $H_2 = \begin{pmatrix}e^2 + 1 & 0 \\ 0 & -5e^2\end{pmatrix}$ 不定. 因此 $((2k + 1)\pi, 2), k \in \mathbb{Z}$ 不为极值点. 所以没有极小值点.

## 第 7 题

求下列函数在给定条件下的条件极值.

(1) $\begin{cases}z = x^2 + y^2, \\ \text{s.t.} \dfrac{x}{a} + \dfrac{y}{b} = 1;\end{cases}$

(2) $\begin{cases}u = x - 2y + 2z, \\ \text{s.t.} x^2 + y^2 + z^2 = 1;\end{cases}$

**解**

(1) $L = x^2 + y^2 + \lambda\left(\dfrac{x}{a} + \dfrac{y}{b} - 1\right)$. $L_x' = 2x + \dfrac{\lambda}{a}, L_y' = 2y + \dfrac{\lambda}{b}$. 因此有方程组 $\begin{cases}2x + \dfrac{\lambda}{a} = 0 \\2y + \dfrac{\lambda}{b} = 0 \\\dfrac{x}{a} + \dfrac{y}{b} = 1\end{cases}$, 解得 $\begin{cases}x = \dfrac{ab^2}{a^2 + b^2} \\y = \dfrac{a^2b}{a^2 + b^2} \\\lambda = -\dfrac{2a^2b}{a^2 + b^2}\end{cases}$. 此时有 $z = \dfrac{a^2b^2}{a^2 + b^2}$ 为极小值.

(2) $L = x - 2y + 2z + \lambda(x^2 + y^2 + z^2 - 1)$. $L_x' = 1 + 2\lambda x, L_y' = -2 + 2\lambda y, L_z' = 2 + 2\lambda z$. 因此有方程组 $\begin{cases}1 + 2\lambda x = 0 \\ -2 + 2\lambda y = 0 \\ 2 + 2\lambda z = 0 \\ x^2 + y^2 + z^2 = 1\end{cases}$. 解得 $\begin{cases}x = -\dfrac{1}{3} \\ y = \dfrac{2}{3} \\ z = -\dfrac{2}{3} \\ \lambda = \dfrac{3}{2}\end{cases}$ 或 $\begin{cases}x = \dfrac{1}{3} \\ y = -\dfrac{2}{3} \\ z = \dfrac{2}{3} \\ \lambda = -\dfrac{3}{2}\end{cases}$. 因此有极小值 $u\left(-\dfrac{1}{3}, \dfrac{2}{3}, -\dfrac{2}{3}\right) = -3$, 极大值 $u\left(\dfrac{1}{3}, -\dfrac{2}{3}, \dfrac{2}{3}\right) = 3$.

## 第 8 题

求函数 $u = x^2 + 2y^2 + z^2 - 2xy - 2yz$ 在区域 $x^2 + y^2 + z^2 \le 4$ 内的最值.

**解**

\begin{enumerate}
    \item 考虑内点处的极值. $\dfrac{\partial u}{\partial x} = 2x - 2y, \dfrac{\partial u}{\partial y} = 4y - 2x - 2z, \dfrac{\partial u}{\partial z} = 2z - 2y$. 因此驻点满足 $x = y = z$. 此时 $u = 0$.
    \item 考虑边界点处的极值. $L = x^2 + 2y^2 + z^2 - 2yz - 2xy + \lambda(x^2 + y^2 + z^2 - 4)$. $L_x' = 2x - 2y + 2\lambda x, L_y' = 4y - 2z - 2z + 2\lambda y, L_z' = 2z - 2y + 2\lambda z$. 因此有方程组 $\begin{cases}2x - 2y + 2\lambda x = 0 \\ 4y - 2z - 2z + 2\lambda y = 0 \\ 2z - 2y + 2\lambda z = 0 \\ x^2 + y^2 + z^2 = 4\end{cases}$. 解得 $(x, y, z) = (0, 0, 0), \left(\dfrac{2\sqrt{3}}{3}, \dfrac{2\sqrt{3}}{3}, \dfrac{2\sqrt{3}}{3}\right), \left(\pm\dfrac{\sqrt{6}}{3}, \mp\dfrac{2\sqrt{6}}{3}, \pm\dfrac{\sqrt{6}}{3}\right), (\pm\sqrt{2}, 0, \mp\sqrt{2}),$. 故有最大值 $u\left(\pm\dfrac{\sqrt{6}}{3}, \mp\dfrac{2\sqrt{6}}{3}, \pm\dfrac{\sqrt{6}}{3}\right) = 12$, 最小值 $u(k, k, k)(k \in \mathbb{R}) \equiv 0$.
\end{enumerate}

## 第 9 题

求解下列问题.

(1) 求椭圆 $x^2 + \dfrac{y^2}{4} = 1$ 上的点到直线 $x + y = 4$ 的距离的最值;

(3) 求椭圆面 $\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} = 1$ 内接长方体的体积最值;

**解**

(1) 设椭圆上的某一点为 $P(\cos \theta, 2\sin \theta), \theta \in (-\pi, \pi]$. 距离为 $d = \dfrac{\left|\cos \theta + 2\sin \theta - 4\right|}{\sqrt{2}} = \dfrac{\left|4 - \sqrt{5}\cos\varphi\right|}{\sqrt{2}} \in [\dfrac{4\sqrt{2} - \sqrt{10}}{2}, \dfrac{4\sqrt{2} + \sqrt{10}}{2}]$. 因此最大值为 $\dfrac{4\sqrt{2} + \sqrt{10}}{2}$, 最小值为 $\dfrac{4\sqrt{2} - \sqrt{10}}{2}$.

(3) 易知该长方体关于原点中心对称. 设长方体的某一个顶点为 $P(a\cos\theta\cos\varphi, b\cos\theta\sin\varphi, c\sin\theta)$. 则体积为 $V = 8\left|xyz\right| = 8abc\cos^2\theta\sin\theta\sin\varphi\cos\varphi = 4abc\sin\theta(1 - \sin^2\theta)\sin2\varphi \in (0, \dfrac{2\sqrt{3}}{9}abc]$. 因此体积最大值为 $\dfrac{8\sqrt{3}}{9}abc$, 无最小值.

## 第 10 题

求解下列问题.

(3) 已知矩形的周长为 $2p$, 将它绕其一边旋转成的圆柱体的体积最大值为多少?

**解**

设矩形的一边长为 $x$, 则邻边长为 $p - x$. 绕长为 $p - x$ 的边旋转而成的圆柱体体积为 $\pi x^2 (p-x) = \dfrac{\pi}{2}x \cdot x \cdot (2p - 2x) \le \dfrac{\pi}{2}\left(\dfrac{x + x + 2p - 2x}{3}\right)^3 = \dfrac{4p^3\pi}{27}$. 因此圆柱体的体积最大值为 $\dfrac{4p^3\pi}{27}$.

## 第 11 题

求解下列问题.

(1) 求函数 $u = x^2y^2z^2$ 在约束条件 $x^2 + y^2 + z^2 = a^2$ 下的最大值, 并证明:

$$
\sqrt[3]{x^2y^2z^2} \le \dfrac{x^2 + y^2 + z^2}{3};
$$

(2) 类似 (1), 证明: $a_1, a_2, \cdots, a_n > 0$ 有

$$
\sqrt{\dfrac{a_1^2 + a_2^2 + \cdots + a_n^2}{n}} \ge \dfrac{a_1 + a_2 + \cdots + a_n}{n} \ge \sqrt[n]{a_1a_2\cdots a_n} \ge \dfrac{n}{\dfrac{1}{a_1} + \dfrac{1}{a_2} + \cdots + \dfrac{1}{a_n}}.
$$

**证明**

(1) 设 $L = x^2y^2z^2 + \lambda(x^2 + y^2 + z^2 - a^2)$, 则

$$
\begin{aligned}
    L_x' & = 2xy^2z^2 + 2x\lambda = 0 \\
    L_y' & = 2x^2yz^2 + 2y\lambda = 0 \\
    L_z' & = 2x^2y^2z + 2z\lambda = 0
\end{aligned}
$$

解得有极大值点满足 $x^2 = y^2 = z^2 = \dfrac{a^2}{3}$, 因此有 $x^2y^2z^2 \le \left(\dfrac{a^2}{3}\right)^3 = \left(\dfrac{x^2 + y^2 + z^2}{3}\right)^3$. 此即 $\sqrt[3]{x^2y^2z^2} \le \dfrac{x^2 + y^2 + z^2}{3}$.

(2) 同理, 拓展至 $n$ 元, 有 $\sqrt{\dfrac{a_1^2 + a_2^2 + \cdots + a_n^2}{n}} \ge \dfrac{a_1 + a_2 + \cdots + a_n}{n}$. 而由 $n$ 元均值不等式有 $\dfrac{a_1 + a_2 + \cdots + a_n}{n} \ge \sqrt[n]{a_1a_2\cdots a_n}$. 将 $a_1 = \dfrac{1}{b_1}, a_2 = \dfrac{1}{b_2}, \cdots, a_n = \dfrac{1}{b_n}$ 代入有 $\dfrac{\dfrac{1}{b_1} + \dfrac{1}{b_2} + \cdots + \dfrac{1}{b_n}}{n}\ge \dfrac{1}{\sqrt[n]{b_1b_2\cdots b_n}}$, 不等式两边同时取倒数, 有 $\sqrt[n]{b_1b_2\cdots b_n} \ge \dfrac{n}{\dfrac{1}{b_1} + \dfrac{1}{b_2} + \cdots + \dfrac{1}{b_n}}$. 此即 $\sqrt[n]{a_1a_2\cdots a_n} \ge \dfrac{n}{\dfrac{1}{a_1} + \dfrac{1}{a_2} + \cdots + \dfrac{1}{a_n}}$. 命题得证.

## 第 13 题

弹簧在弹性限度内的伸长 $x$ 与所受拉力 $y$ 满足关系式 $y = a + bx$, 试根据下列数据确定弹性系数 $b$.

\begin{table}[H]
    \centering
    %\caption{}
    \vspace{1em}
    \begin{tabular}{|c|c|c|c|c|}
        \hline
        $x_i/\text{cm}$ & 2.6 & 3.0 & 3.5 & 4.3 \\
        \hline
        $y_i/\text{kg}$ & 0 & 1 & 2 & 3 \\
        \hline
    \end{tabular}
    %\label{}
\end{table}

**解**

由题可列出方程组 $A\mathbf{x}=\mathbf{b}$:

$$
\begin{pmatrix}
    1 & 2.6 \\
    1 & 3.0 \\
    1 & 3.5 \\
    1 & 4.3
\end{pmatrix}
\begin{pmatrix}
    a \\ b
\end{pmatrix}
=
\begin{pmatrix}
    0 \\ 1 \\ 2 \\ 3
\end{pmatrix}
$$

则 $A^{\top}A = \begin{pmatrix}1 & 1 & 1 & 1 \\ 2.6 & 3.0 & 3.5 & 4.3\end{pmatrix}\begin{pmatrix}1 & 2.6 \\1 & 3.0 \\1 & 3.5 \\1 & 4.3\end{pmatrix}=\begin{pmatrix}4 & 13.4 \\ 13.4 & 46.5\end{pmatrix}$, $A^{\top}\mathbf{b} = \begin{pmatrix}1 & 1 & 1 & 1 \\ 2.6 & 3.0 & 3.5 & 4.3\end{pmatrix}\begin{pmatrix}0 \\ 1 \\ 2 \\ 3\end{pmatrix}=\begin{pmatrix}6 \\ 22.9\end{pmatrix}$

因此方程即

$$
\begin{pmatrix}
    4 & 13.4 \\ 13.4 & 46.5
\end{pmatrix}
\begin{pmatrix}
    a \\ b
\end{pmatrix}
=
\begin{pmatrix}
    6 \\ 22.9
\end{pmatrix}
$$

解得 $a = -4.326, b = 1.739$.
