## 第 1 题

写出下列函数表达式:

(1) 将圆锥的体积 $V$ 表示为圆锥斜高 $l$ 与高 $h$ 的函数;

(2) 在半径为 $1$ 的球面内内接长宽高分别为 $x, y, z$ 的长方体, 将其表面积表示为 $x, y$ 的函数;

(3) 在椭球面 $\dfrac{x^2}{a^2} +\dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} = 1$ 内接长宽高分别为 $2x, 2y, 2z$ 的长方体, 将其体积表示为 $x, y$ 的函数;

(4) 将点 $P(x, y, z)$ 到球面 $(x - 1)^2 + y^2 + (z + 1)^2 = 2$ 的最短距离表示为 $P$ 的坐标的函数.

## 第 2 题

求下列函数的定义域, 并画出定义域的图形

(1) $f(x, y) = \sqrt{4x^2 + y^2 - 1}$;

(2) $f(x, y) = \ln(xy)$;

(3) $f(x, y, z) = \sqrt{y^2 - 1} + \ln(4 - x^2 - y^2 - z^2)$;

(4) $f(x, y, z) = \arcsin\dfrac{x^2 - y^2}{x^2 + y^2}$.

## 第 3 题

已知 $f\left(x + y, \frac{y}{x}\right) = x^2 - y^2$, 求 $f(x, y)$.

**解**

设 $\begin{cases} m = x + y, \\ n = \frac{y}{x}, \end{cases}$ 则 $\begin{cases}x = \frac{m}{n + 1}, \\ y = \frac{nm}{n + 1}.\end{cases}$ 因此 $f(m, n) = x^2 - y^2 = \frac{m^2(1-n)}{1+n} (n \neq -1)$. 而当 $n = -1$ 时显然有 $f(m, n) = 0$. 故

$$
f(x, y) = \begin{cases}
    \frac{x^2(1 - y)}{1 + y}, &y \neq -1, \\
    0, &y = -1.
\end{cases}
$$

## 第 4 题

如果 $n$ 元函数 $f(x_1, x_2, \cdots, x_n)$ 对任意实数 $t$ 满足 $f(tx_1, tx_2, \cdots, tx_n) = t^kf(x_1, x_2, \cdots, x_n)$, 则称 $f$ 是 $x_1, x_2, \cdots, x_n$ 的 $k$ 次齐次式, 下列函数是否为齐次式? 若是, 求出次数 $k$.

(1) $f(x, y, z) = \frac{x^3 + y^3 + z^3}{xyz}$;

(2) $f(x, y, z) = \sqrt{x^3 + y^3 + z^3} + xyz$;

(3) $f(x_1, x_2, \cdots, x_n) = \sum_{i = 1}^n\sum_{j = 1}^na_{ij}x_ix_j$.

**解**

(1) $f(tx, ty, yz) = \frac{(tx)^3 + (ty)^3 + (tz)^3}{(tx)(ty)(tz)} = \frac{x^3 + y^3 + z^3}{xyz} = t^0f(x, y, z)$. 因此 $k = 0$.

(2) $f(tx, ty, tz) = \sqrt{(tx)^3 + (ty)^3 + (tz)^3} + (tx)(ty)(tz) = t^{\frac{3}{2}}\sqrt{x^3 + y^3 + z^3} + t^3xyz$. 因此不是齐次式.

(3) $f(tx_1, tx_2, \cdots, tx_n) = \sum_{i = 1}^n\sum_{j = 1}^na_{ij}(tx_i)(tx_j) = t^{2}\sum_{i = 1}^n\sum_{j = 1}^na_{ij}x_ix_j = t^{2}f(x_1, x_2, \cdots, x_n)$. 因此 $k = 2$​.

## 第 5 题

位于 $(a, b, c)$ 质量为 $M_0$ 的空间质点对于位于 $(x, y, z)$ 质量为 $m_0$ 的空间质点的引力是定义在 $\mathbb{R}^n\backslash\{a, b, c\}$ 上的一个向量值函数 $\mathbf{F}(x, y, z) = (F_x, F_y, F_z)$, 写出 $\mathbf{F}$ 及分量 $F_x, F_y, F_z$ 的函数表达式.

## 第 6 题

$\mathbb{R}^2$ 的子集 $D$ 到 $\mathbb{R}^2$ 的映射 $F:(x, y)\mapsto (u, v)$ 为 $\begin{cases}u = x^2 - y^2, \\ v = xy, \end{cases}$ 其中定义域 $D$ 是由四条曲线 $x^2 - y^2 = 1, x^2 - y^2 = 4, xy = 1, xy = 2$ 围成的平面区域, 求 $F$ 的值域 $F(D)$, 并问: 在 $D$ 内的直线 $x = a$ 映射为何曲线?

**解**

由题知 $F(D)$ 中区域被夹在 $x^2 - y^2 = 1$ 和 $x^2 - y^2 = 4$ 之间, $xy = 1$ 和 $xy = 2$ 之间. 因此 $F(D) = \{(u, v) | 1 \le u \le 4, 1 \le v \le 2\}$.

因为当 $x = a$ 时 $u = a^2 - y^2, v = ay$, 所以消去 $y$ 可得曲线 $a^2u + v^2 = a^4 (1 \le u \le 4, 1 \le v \le 2)$.

## 第 7 题

$\mathbb{R}^2 \backslash \{(0, 0)\}$ 到 $\mathbb{R}^2$ 的映射 $F:(x, y) \mapsto (u, v)$ 为 $\begin{cases}u = \frac{x}{x^2 + y^2}, \\ v = \frac{y}{x^2 + y^2}.\end{cases}$

问: (1) $O-xy$ 平面上的圆 $x^2 + y^2 = R^2$ 映射为 $O-uv$ 平面上的什么曲线?

(2) $O-xy$ 平面上的线段 $y = x(0 < x \le 1)$ 映射为 $O-uv$ 平面上的什么曲线?

**解**

(1) 解得 $\begin{cases}x = \frac{u}{u^2 + v^2}, \\ y = \frac{v}{u^2 + v^2}.\end{cases}$ 代入 $x^2 + y^2 = R^2$ 得 $u^2 + v^2 = \frac{1}{R^2}$.

(2) 代入 $y = x(0 < x \le 1)$ 得 $v = u(v \ge \dfrac{1}{2})$.
