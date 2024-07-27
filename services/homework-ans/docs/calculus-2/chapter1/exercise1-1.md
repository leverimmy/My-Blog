## 第 1 题

证明: $n$ 维 Euclid 空间中的距离 $\left\lVert\mathbf{X} - \mathbf{Y}\right\rVert _n$ 满足正定性、对称性与三角不等式.

**证明**

不妨设 $\mathbf{X} = (x_1, x_2, \cdots, x_n), \mathbf{Y} = (y_1, y_2, \cdots, y_n)$, 则 $\left\lVert\mathbf{X} - \mathbf{Y}\right\rVert _n = \sqrt{\sum_{i = 1}^n(x_i - y_i)^2}$.

(1) 正定性: 显然 $\left\lVert\mathbf{X} - \mathbf{Y}\right\rVert _n = \sqrt{\sum_{i = 1}^n(x_i - y_i)^2} \ge 0$, 且 $\left\lVert\mathbf{X} - \mathbf{Y}\right\rVert _n = 0$ 当且仅当 $\forall i \in [1, n]$ 均有 $x_i - y_i = 0$, 此即 $\mathbf{X} = \mathbf{Y}$.

(2) 对称性: 显然 $\left\lVert\mathbf{Y} - \mathbf{X}\right\rVert _n = \sqrt{\sum_{i = 1}^n(x_i - y_i)^2} = \left\lVert\mathbf{X} - \mathbf{Y}\right\rVert _n$

(3) 三角不等式: 再设 $\mathbf{Z} = (z_1, z_2, \cdots, z_n)$. 要证 $\left\lVert\mathbf{X} - \mathbf{Y}\right\rVert _n \le \left\lVert\mathbf{X} - \mathbf{Z}\right\rVert _n + \left\lVert\mathbf{Z} - \mathbf{Y}\right\rVert _n$, 只需证 $\sqrt{\sum_{i = 1}^n(x_i - y_i)^2} \le \sqrt{\sum_{i = 1}^n(x_i - z_i)^2} + \sqrt{\sum_{i = 1}^n(z_i - y_i)^2}$. 由于

$$
\begin{aligned}
    & \sqrt{\sum_{i = 1}^n(x_i - y_i)^2} \\
    &= \sqrt{\sum_{i = 1}^n[(x_i - z_i) + (z_i - y_i)]^2} \\
    &= \sqrt{\sum_{i = 1}^n(x_i - z_i)^2 + \sum_{i = 1}^n(z_i - y_i)^2 - 2\sum_{i = 1}^n(x_i - z_i)(z_i - y_i)} \\
    &\le \sqrt{\sum_{i = 1}^n(x_i - z_i)^2 + \sum_{i = 1}^n(z_i - y_i)^2 + 2\sqrt{\sum_{i = 1}^n(x_i - z_i)^2\sum_{i = 1}^{n}(z_i - y_i)^2}} \\
    &= \sqrt{\sum_{i = 1}^n(x_i - z_i)^2} + \sqrt{\sum_{i = 1}^n(z_i - y_i)^2}
\end{aligned}
$$

其中不等号由柯西不等式得到. 故三角不等式得证.

## 第 2 题

求下列集合 $\Omega$ 的内部、外部、边界和闭包.

(1) $\Omega$ 为 $\mathbb{R}^2$ 的子集, $\Omega = \{(x, y) | x^2 + y^2 = 1\}$;

(2) $\Omega$ 为 $\mathbb{R}^3$ 的子集, $\Omega = \{(x, y, z) | 1 \le x^2 + y^2 + z^2 < 4\}$.

**解**

(1) 内部: $\varnothing$, 外部: $\{(x, y) | x^2 + y^2 \neq 1\}$, 边界: $\{(x, y) | x^2 + y^2 = 1\}$, 闭包: $\{(x, y) | x^2 + y^2 = 1\}$.

(2) 内部: $\{(x, y, z) | 1 < x^2 + y^2 + z^2 < 4\}$, 外部 $\{(x, y, z) | x^2 + y^2 + z^2 < 1 \lor x^2 + y^2 + z^2 > 4\}$, 边界: $\{(x, y, z) | x^2 + y^2 + z^2 = 1 \lor x^2 + y^2 + z^2 = 4\}$, 闭包: $\{(x, y, z) | 1 \le x^2 + y^2 + z^2 \le 4\}$.

## 第 3 题

证明下列命题:

(1) 已知 $S \subset \mathbb{R}^n$, 则 $S$ 为开集 $\iff$ $S = \mathring{S}$;

(2) 若 $S \subset \mathbb{R}^n$ 为开集, 则 $S \cap \partial S = \varnothing$;

(3) 任意多个开集之并为开集; 有限个开集之交为开集;

(4) 若 $A, B \subset \mathbb{R}^n$, 记 $S = A \cap B, T = A \cup B$, 则 $\mathring{S} = \mathring{A} \cap \mathring{B}, \mathring{T} \supset \mathring{A} \cup \mathring{B}$;

(5) 若 $A \subset \mathbb{R}^n$, 则集合 $\mathring{A}$ 的内部等于 $\mathring{A}$.

## 第 4 题

证明下列命题:

(1) 已知 $S \subset \mathbb{R}^n$, 则 $S$ 为闭集 $\iff$ $S = \overline{S} \iff \partial S \subset S$;

(2) 若 $A, B \subset \mathbb{R}^n$, 则 $\overline{A}\backslash\overline{B} \subset \overline{A \backslash B}, \overline{A}\cup\overline{B} \subset \overline{A\cup B}$ (事实上他们相等), $\overline{A}\cap\overline{B} \supset \overline{A\cap B}$;

(3) 若 $P_1, P_2, \cdots, P_k \in \mathbb{R}^n$, 则 $\{P_1, P_2, \cdots, P_k\}$ 为闭集;

(4) 任意多个闭集之交为闭集; 有限个闭集之并为闭集.

**证明**

## 第 5 题

证明下列命题:

(1) 已知 $S \subset \mathbb{R}^n$, 则 $\overset{\circ}{S}$ 等于 $S$ 的余集的闭包的余集; $\overline{S}$ 等于 $S$ 的余集的内部的余集;

(2) 若 $A \subset \mathbb{R}^n$, 则 $\overline{A} = A \cup \partial A = \overset{\circ}{A} \cup \partial A, \overset{\circ}{A} = A \backslash\partial A = \overline{A}\backslash\partial A, \partial A = \partial(\mathbb{R}^n\backslash A)$;

(3) 若 $A \subset \mathbb{R}^n$, 则 $\partial(\overset{\circ}{A}), \partial(\overline{A}) \subset \partial A$;

(4) 若 $A, B \subset \mathbb{R}^n$, 则 $\partial(A\cup B) \subset \partial A \cup \partial B$;

(5) $\partial A = \varnothing$ $\iff$ $A$ 既是开集又是闭集.

**证明**

## 第 6 题

证明: $\mathbb{R}^n$ 中的点列 $\{\mathbf{X}_k\}$ 为 Cauchy 列当且仅当 $\{\mathbf{X}_k\}$ 的 $n$ 个分量构成的 $n$ 个实数列 $\{x_k^{(i)}\}_{k=1}^{+\infty}(i = 1, 2, \cdots, n)$ 均为 Cauchy 列.

**证明**

## 第 7 题

下列集合中, 哪些是连通的, 哪些是非连通的?

(1) $D = \{(x, y) | y \neq 0\}$;

(2) $D = \{(x, y) | 0 < x^2 + y^2 \le 2\}$;

(3) $\Omega = \{(x, y, z) | x^2 + y^2 \neq 0\}$;

(4) $\Omega = \{(x, y, z) | 1 < x^2 + y^2 + z^2 \le 4\}$.

**解**

(1) 不是.

(2) 是.

(3) 是.

(4) 是.

## 第 8 题

连通的闭集是否为闭区域? 如果是,请证明; 如果不是, 请举出反例.

**解**

## 第 9 题

证明: $\mathbb{R}^n$ 中的收敛点列必为有界点列.

**证明**
