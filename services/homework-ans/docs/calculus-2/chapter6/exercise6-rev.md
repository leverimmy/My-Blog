
## 第 4 题

设 $u_n(x) (n = 1, 2, \cdots)$ 是 $[a, b]$ 上的连续函数, 若 $\sum\limits_{n = 1}^{\infty}u_n(a), \sum\limits_{n = 1}^{\infty}u_n(b)$ 有一个发散, 证明: $\sum\limits_{n = 1}^{\infty}u_n(x)$ 在 $(a, b)$ 上非一致收敛.

**证明**

使用反证法. 假设 $\sum\limits_{n = 1}^{\infty}u_n(x)$ 在 $(a, b)$ 上一致收敛. 不妨设 $\sum\limits_{n = 1}^{\infty}u_n(a)$ 发散. 由于 $\sum\limits_{n = 1}^{\infty}u_n(x)$ 在 $(a, b)$ 上一致收敛, 则

$$
\forall \epsilon > 0, \exists N(\epsilon) > 0, \text{s.t.}\, \forall n > N, p \in \mathbb{N}^*, \left|\sum\limits_{k = n + 1}^{n + p}u_k(x)\right| < \epsilon, \forall x \in (a, b).
$$

由于 $u_n(x) (n = 1, 2, \cdots)$ 是 $[a, b]$ 上的连续函数, 故不等式两端同时取极限 $x \to a$, 得

$$
\left|\sum\limits_{k = n + 1}^{n + p}u_k(a)\right| \le \epsilon
$$

这说明 $\sum\limits_{n = 1}^{\infty}u_n(a)$ 收敛, 与题目矛盾, 因此假设不成立. 故 $\sum\limits_{n = 1}^{\infty}u_n(x)$ 在 $(a, b)$ 上非一致收敛.

## 第 8 题

考查下列函数项级数在指定区间的一致收敛性.

(1) $\sum\limits_{n = 2}^{\infty}\ln\left(1 + \dfrac{x}{n\ln^2n}\right), x \in (0, +\infty)$;

(2) $\sum\limits_{n = 2}^{\infty}\ln\left(1 + \dfrac{x}{n\ln^2n}\right), x \in (-1, 1)$;

(3) $\sum\limits_{n = 1}^{\infty}\dfrac{n^2}{\sqrt{n!}}(x^n + x^{-n}), \dfrac{1}{3} \le \left|x\right| \le 3$;

**解**

(1) 假设 $\sum\limits_{n = 2}^{\infty}\ln\left(1 + \dfrac{x}{n\ln^2n}\right)$ 在 $(0, +\infty)$ 上一致收敛, 则其一般项一致趋于 $0$. 但取 $\epsilon = \ln 2$, $\forall N \in \mathbb{N}^*$, 取 $n = N + 1, x = (N+1)\ln^2(N+1)$, 则

$$
\left|\ln\left(1 + \dfrac{x}{n\ln^2n}\right)\right| = \ln(1 + 1) = \ln2 = \epsilon.
$$

这说明其一般项并非一致趋于 $0$., 矛盾. 故 $\sum\limits_{n = 2}^{\infty}\ln\left(1 + \dfrac{x}{n\ln^2n}\right)$ 在 $(0, +\infty)$ 上非一致收敛.

(2) 由于 $\left|\ln\left(1 + \dfrac{x}{n\ln^2n}\right)\right| \le \left|\dfrac{x}{n\ln^2n}\right| \le \dfrac{1}{n\ln^2n} \quad (-1<x<1)$, 且 $\sum\limits_{n = 2}^{\infty}\dfrac{1}{n\ln^2n}$ 收敛, 故由 Weierstrass 定理知 $\sum\limits_{n = 2}^{\infty}\ln\left(1 + \dfrac{x}{n\ln^2n}\right)$ 在 $(-1, 1)$ 上一致收敛.

(3) 只需说明 $\sum\limits_{n = 1}^{\infty}\dfrac{n^2x^n}{\sqrt{n!}}$ 在 $[1, 3]$ 上一致收敛即可. 由于 $\left|\dfrac{n^2x^n}{\sqrt{n!}}\right| \le \dfrac{n^23^n}{\sqrt{n!}}$, 因此只需要说明 $\sum\limits_{n = 1}^{\infty}\dfrac{n^23^n}{\sqrt{n!}}$ 收敛, 即可使用 Weierstrass 判别法证明 $\sum\limits_{n = 1}^{\infty}\dfrac{n^2x^n}{\sqrt{n!}}$ 在 $[1, 3]$ 上一致收敛. 下证明 $\sum\limits_{n = 1}^{\infty}\dfrac{n^23^n}{\sqrt{n!}}$ 收敛. 设 $u_n = \dfrac{n^23^n}{\sqrt{n!}}$. 由于

$$
\lim\limits_{n \to \infty}\sqrt[n]{u_n} = \lim\limits_{n \to \infty}\sqrt[n]{\dfrac{n^2 3^n}{\sqrt{n!}}} = \lim\limits_{n \to \infty}\dfrac{3}{\sqrt[2n]{n!}} = 0 < 1
$$

故由根值判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{n^23^n}{\sqrt{n!}}$ 收敛. 因此 $\sum\limits_{n = 1}^{\infty}\dfrac{n^2}{\sqrt{n!}}(x^n + x^{-n})$ 当 $\dfrac{1}{3} \le \left|x\right| \le 3$ 时一致收敛.
