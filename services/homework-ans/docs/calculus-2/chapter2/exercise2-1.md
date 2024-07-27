
## 第 1 题

证明: $f(x, y) = \sin(x^2 + y^2)$ 在 $\mathbb{R}^2$ 上非一致连续.

**证明**

反证法. 假设 $f(x, y) = \sin(x^2 + y^2)$ 在 $\mathbb{R}^2$ 上一致连续, 那么对任意 $\epsilon > 0$, 比如 $\epsilon = \dfrac{1}{3}$, 则存在 $\delta > 0$, 使得只要 $\|(x_1, y_1) - (x_2, y_2)\| < \delta$, 就有 $\left|\sin(x_1^2 + y_1^2) - \sin(x_2^2 + y_2^2)\right| < \epsilon = \dfrac{1}{3}$. 取 $(x_1, y_1) = (0, \sqrt{n\pi}), (x_2, y_2) = (0, \sqrt{n\pi + \dfrac{\pi}{2}})$, 则当 $n$ 足够大时可以保证 $\|(x_1, y_1) - (x_2, y_2)\| < \delta$. 但此时

$$
\begin{aligned}
    \left|\sin(x_1^2 + y_1^2) - \sin(x_2^2 + y_2^2)\right| & = \left|\sin(n\pi) - \sin\left(n\pi + \dfrac{\pi}{2}\right)\right| \\
    & = \cos\left(n\pi + \dfrac{\pi}{4}\right)\sin\left(\dfrac{\pi}{4}\right) \\
    & = \dfrac{\sqrt{2}}{2}\cos\left(n\pi + \dfrac{\pi}{4}\right)
\end{aligned}
$$

当 $n$ 取 $2$ 的倍数的时候有 $\left|\sin(x_1^2 + y_1^2) - \sin(x_2^2 + y_2^2)\right| = \dfrac{1}{2} > \dfrac{1}{3} = \epsilon$. 矛盾. 因此 $f(x, y) = \sin(x^2 + y^2)$ 在 $\mathbb{R}^2$ 上非一致连续.

## 第 2 题

已知函数 $f:\mathbb{R}^n\to\mathbb{R}$ 连续, 且 $\lim\limits_{\| X\|\to +\infty}f(X)$ 存在, 求证: $f$ 在 $\mathbb{R}^n$ 上一致连续.

**证明**

记 $L = \lim\limits_{\| X\|\to +\infty}f(X)$, 则 $\exists M_0 > 0$, 使得 $\forall \epsilon > 0, \|X\| > M_0$, 都有 $\left|f(X) - L\right| < \dfrac{\epsilon}{2}$. 对于 $\|X\| \le M_0$ 的有界闭区域, $f$ 在上面是一致连续的, 现只需要考虑 $\|X\| > M_0$ 的区域. 由于 $\forall X, X'$ 满足 $\|X\|, \|X'\| > M_0, \|X - X'\| < \delta$, 有 $\left|f(X) - f(X')\right| \le \left|f(X) - L\right| + \left|f(X') - L\right| < \dfrac{\epsilon}{2} + \dfrac{\epsilon}{2} = \epsilon$, 所以 $f$ 在 $\|X\| > M_0$ 的区域上也是一致连续的. 故 $f$ 在 $\mathbb{R}^2$ 上一致连续.

## 第 3 题

证明: 函数 $f(X)$ 在 $\Omega \subset \mathbb{R}^n$ 上一致连续的充要条件是: 对 $\Omega \subset \mathbb{R}^n$ 上的任何两个点列 $\{X_n\}$ 和 $\{Y_n\}$, 当 $\lim\limits_{n\to\infty}\|X_n-Y_n\| = 0$ 时, 有 $\lim\limits_{n\to\infty}(f(X_n)-f(Y_n)) = 0$.

**证明**

先证必要性: 假设 $f(X)$ 在 $\Omega \subset \mathbb{R}^n$ 上一致连续, 则对于任意点列 $\{X_n\}, \{Y_n\}$: $\forall \epsilon > 0, \exists \delta_0 > 0$ 使得 $\forall X, X'' \in \Omega, \|X - X'\| < \delta_0$ 有 $\|f(X) - f(X')\| < \epsilon$. 由于 $\lim\limits_{n \to \infty}\|X_n - Y_n\| = 0$, 故按定义展开有 $\exists M > 0, \forall n > M$, 有 $\|X_n - Y_n\| < \delta_0$ 从而 $\|f(X_n) - f(Y_n)\| < \epsilon$. 故由定义知 $\lim\limits_{n \to \infty}\|f(X_n)-f(Y_n)\| = 0$.

再证充分性: 反证法. 假设 $f(X)$ 不一致连续, 则 $\exists \epsilon_0 > 0, \forall delta > 0, \exists X_0, X_0' \in \Omega$ 满足 $\|X_0 - X_0'\| < \delta$ 但 $\|f(X_0) - f(X_0')\| \ge \epsilon_0$. 取 $\delta_n = \dfrac{1}{n}$, 则 $\exists X_n, Y_n$ 使得 $\|X_n - Y_n\| < \delta_n = \dfrac{1}{n}$, 则由条件知 $\|f(X_n) - f(Y_n)\| \ge \epsilon_0$. 由此, $\lim\limits_{n \to \infty}\|X_n - Y_n\| = 0$ 但 $\|f(X_n) - f(Y_n)\| \ge \epsilon_0$ 恒成立, 说明其极限不为 $0$. 与 $\lim\limits_{n \to \infty}\|f(X_n) - f(Y_n)\| = 0$ 矛盾. 故假设错误, $f(X)$ 在 $\Omega \subset \mathbb{R}^n$ 上一致连续.

## 第 4 题

讨论下列积分在所给区间上的一致收敛性.

(2) $\int_{-\infty}^{+\infty}\dfrac{\cos yx}{1 + x^2}\text{d}{x}(-\infty < y < +\infty)$;

(4) $\int_{0}^{+\infty}e^{-tx^2}\sin x\text{d}{x}(0 < t_0 \le t < +\infty)$;

(6) $\int_{0}^{+\infty}\dfrac{\text{d}{x}}{1 + (x + t)^2}(0 \le t < +\infty)$;

**解**

(2) 考虑 $f(x) = \cos (yx), g(x) = \dfrac{1}{1 + x^2}$, 则对任意 $A<0, B>0, y \in \mathbb{R}$ 均有 $\left|\int_{A}^{B}f(x)\text{d}{x}\right| \le 1$ 有界, 且 $g(x) = \dfrac{1}{1 + x^2}$ 关于 $x$ 单调递减. 由于不含 $y$, 所以 $\lim\limits_{x \to +\infty} g(x) = 0$ 对于 $y$ 一致成立. 由 Dirichlet 判别法知 $\int_{-\infty}^{+\infty}\dfrac{\cos yx}{1 + x^2}\text{d}{x}$ 在 $\mathbb{R}$ 上一致收敛.

(4) 考虑 $f(x) = \sin x, g(x) = e^{-tx}$, 则对任意 $A > 0, t \in [t_0, +\infty)$ 有 $\left|\int_{0}^{A}f(x)\text{d}{x}\right| \le 1$ 有界, 且 $g(x) = e^{-tx}$ 单调递减, 且 $\lim\limits_{x \to +\infty}g(x) = 0$ 对于任意 $t \in [t_0, +\infty)$ 一致成立. 有 Dirichlet 判别法知 $\int_{0}^{+\infty}e^{-tx^2}\sin x\text{d}{x}$ 在 $[t_0, +\infty)$ 上一致收敛.

(6) 考虑含参积分 $I(t) = \int_{0}^{+\infty}\dfrac{\text{d}{x}}{1 + (x + t)^2}$, 则 $I(t) = \int_{0}^{+\infty}\dfrac{\text{d}{(x + t)}}{1 + (x + t)^2} = \arctan(x + t)\bigg\vert_{0}^{+\infty} = \dfrac{\pi}{2} - \arctan t$ 在 $[0, +\infty)$ 一致收敛.

## 第 5 题

证明: 积分 $\int_{0}^{+\infty}e^{-tx}\dfrac{\sin 3x}{x + t}\text{d}{x}(0 \le t < +\infty)$ 一致收敛.

**证明**

先证明函数 $\int_{0}^{+\infty}f(x, t)\text{d}{x} = \int_{0}^{+\infty}\dfrac{\sin 3x}{x + t}\text{d}{x}$ 关于 $t>0$ 一致收敛. 由于 $\int_{0}^{A}\sin 3x\text{d}{x}$ 不含 $t$ 且对充分大的 $A$ 均有界, 并且 $\dfrac{1}{x + t}$ 关于 $x$ 单调递减且趋于 $0$ 对于任意 $t > 0$ 一致成立, 故由 Dirichlet 判别法知 $f(x, t) = \int_{0}^{+\infty}\dfrac{\sin 3x}{x + t}\text{d}{x}$ 关于 $t > 0$ 一致收敛.

再考虑 $g(x, t) = e^{-tx}$, 它关于 $x$ 单调递减且趋于 $0$ 对于任意 $t > 0$ 一致成立. 由 Dirichlet 判别法知 $\int_{0}^{+\infty}e^{-tx}\dfrac{\sin 3x}{x + t}\text{d}{x} = \int_{0}^{+\infty}f(x, t)g(x, t)\text{d}{x}$ 对于 $t > 0$ 一致收敛.

## 第 6 题

设 $f(x, y)$ 在 $[a, +\infty) \times [\alpha, \beta]$ 中连续, 如果对于每一个 $t \in [\alpha, \beta)$, $\int_{a}^{+\infty}f(x, t)\text{d}{x}$ 均收敛, 但 $\int_{a}^{+\infty}f(x, \beta)\text{d}{x}$ 均发散, 证明: $\int_{a}^{+\infty}f(x, y)\text{d}{x}$ 在 $[\alpha, \beta)$ 上非一致收敛.

**证明**

反证法. 假设 $\int_{0}^{+\infty} f(x, t) \text{d}{x}$ 在 $[\alpha, \beta)$ 上一致收敛, 则由定义知 $\forall \epsilon > 0, \exists A > 0, \forall A', A'' > A, \forall t \in [\alpha, \beta)$, 有 $\left|\int_{A'}^{A''}f(x, t)\text{d}{x}\right| < \epsilon$. 考虑数列 $\{t_n\} = \{\beta - \dfrac{1}{n}\} \to \beta, n \to +\infty$, 由于 $f(x, t)$ 在 $[a, +\infty)\times[\alpha, \beta]$ 上连续, 因此对 $\left|\int_{A'}^{A''}f(x, t_n)\text{d}{x}\right| < \epsilon$ 取 $n \to +\infty$ 的极限, 有 $\left|\int_{A'}^{A''}f(x, \beta)\text{d}{x}\right| \le \epsilon$. 但这与 $\int_{a}^{+\infty}f(x, \beta)\text{d}{x}$ 发散矛盾. 因此假设不成立. 命题得证.

## 第 8 题

证明: 积分 $\int_{0}^{+\infty}\dfrac{\sin tx}{x}\text{d}{x}$ 在包含 $t = 0$ 的区间上不一致收敛.

**证明**

反证法. 假设积分 $I(t) = \int_{0}^{+\infty}\dfrac{\sin tx}{x}\text{d}{x}$ 在包含 $t = 0$ 的区间上一致收敛, 不妨设该区间为 $[a, b]$, 其中 $0 \in [a, b]$. 由于 $\dfrac{\sin tx}{x}$ 在带状域 $[0, +\infty)\times[a, b]$ 上连续, 且广义积分 $\int_{0}^{+\infty}\dfrac{\sin tx}{x}\text{d}{x}$ 在包含 $t = 0$ 的区间上一致收敛, 则该广义积分 $I(t)$ 是连续的. 但 $I(t) = \begin{cases}0, t = 0, \\ \dfrac{\pi}{2}, t \neq 0 \end{cases}$ 并不连续, 矛盾. 因此积分 $\int_{0}^{+\infty}\dfrac{\sin tx}{x}\text{d}{x}$ 在包含 $t = 0$ 的区间上不一致收敛.
