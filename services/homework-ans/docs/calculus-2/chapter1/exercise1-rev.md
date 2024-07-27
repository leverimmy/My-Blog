
## 第 15 题

设 $f(x, y)$ 是可微函数, 且满足以下条件: $\lim\limits_{x^2 + y^2 \to +\infty}\dfrac{f(x, y)}{\sqrt{x^2 + y^2}} = +\infty$, 试证明: 对于任意的 $\mathbf{v} = (v_1, v_2)$, 都存在点 $(x_0, y_0)$, 使得 $\nabla f(x_0, y_0) = \mathbf{v}$.

**证明**

作辅助函数 $g(x, y) = f(x, y) - v_1 x - v_2 y$, 则

$$
\lim\limits_{x^2 + y^2 \to +\infty}\dfrac{g(x, y)}{\sqrt{x^2 + y^2}} = \lim\limits_{x^2 + y^2 \to +\infty}\dfrac{f(x, y)}{\sqrt{x^2 + y^2}} - \lim\limits_{x^2 + y^2 \to +\infty}\dfrac{v_1 x}{\sqrt{x^2 + y^2}} - \lim\limits_{x^2 + y^2 \to +\infty}\dfrac{v_2 y}{\sqrt{x^2 + y^2}} = +\infty
$$

考虑 $g(x, y)$ 在 $\mathbb{R}^2$ 上的极小值点 $P(x_0, y_0)$, 有 $\nabla g(x_0, y_0) = \mathbf{0}$, 此即 $\nabla f(x_0, y_0) = \mathbf{v}$.

## 第 17 题

已知点 $P(a, b)$ 在曲线 $f(x, y) = 0$ 上, 点 $Q(c, d)$ 在曲线 $g(x, y) = 0$ 上, 其中 $f, g$ 可微, 证明: 若 $|PQ|$ 为两条曲线的距离, 则 $\dfrac{a - c}{b - d} = \dfrac{f_1'(a, b)}{f_2'(a, b)} = \dfrac{g_1'(c, d)}{g_2'(c, d)}$. 利用此结论求椭圆 $x^2 + 2xy + 5y^2 - 16y = 0$ 与直线 $x - y - 8 = 0$ 的距离.

**解**

由于 $|PQ|$ 为两条曲线间的距离, 故由题知 $\vec{PQ} \parallel \nabla f(a, b) \parallel \nabla g(c, d)$. 此即

$$
\dfrac{a - c}{b - d} = \dfrac{f_1'(a, b)}{f_2'(a, b)} = \dfrac{g_1'(c, d)}{g_2'(c, d)}
$$

在此例中, $f_1'(x, y) = 2x + 2y, f_2'(x, y) = 2x + 10y - 16, g_1'(x, y) = 1, g_2'(x, y) = -1$. 代入有方程

$$
\begin{cases}
    \dfrac{a - c}{b - d} = \dfrac{2a + 2b}{2a + 10b - 16} = \dfrac{1}{-1}, \\
    a^2 + 2ab + 5b^2 - 16b = 0, \\
    c - d - 8 = 0.
\end{cases}
$$

解得 $|PQ| = \min\{6\sqrt{2} + 4, 6\sqrt{2} - 4\} = 6\sqrt{2} - 4$.
