
## 第 2 题

求下列函数项级数的收敛域, 并指出使级数绝对收敛、条件收敛的 $x$ 的范围.

(1) $\sum\limits_{n = 1}^{\infty}ne^{-nx}$;

(2) $\sum\limits_{n = 1}^{\infty}\left(\dfrac{\ln x}{3}\right)^n$;

(3) $\sum\limits_{n = 1}^{\infty}\left(\dfrac{n + 1}{x}\right)^n$;

(4) $\sum\limits_{n = 1}^{\infty}x^n\sin\dfrac{x}{2^n}$;

(5) $\sum\limits_{n = 1}^{\infty} \dfrac{1}{1 + x^n}$;

**解**

(1) 该级数每一项都为正数, 故绝对收敛域等于收敛域. 由于 $\lim\limits_{n \to \infty}\sqrt[n]{ne^{-nx}} = e^{-x}$, 故当 $x < 0$ 时 $\lim\limits_{n \to \infty}\sqrt[n]{u_n} > 1$, $\sum\limits_{n = 1}^{\infty}u_n$ 发散; 当 $x > 0$ 时 $\lim\limits_{n \to \infty}\sqrt[n]{u_n} < 1$, $\sum\limits_{n = 1}^{\infty}$ 收敛. 又因为当 $x = 0$ 时 $\sum\limits_{n = 1}^{\infty}u_n = \sum\limits_{n = 1}^{\infty}n$ 发散, 故该级数的绝对收敛域为 $(0, +\infty)$.

(2) $\sum\limits_{n = 1}^{\infty}\left(\dfrac{\ln x}{3}\right)^n = \dfrac{\ln x}{3 - \ln x}\lim\limits_{n \to \infty}\left(1 - \left(\dfrac{\ln x}{3}\right)^n\right)$. 因此当 $\left|\dfrac{\ln x}{3}\right|< 1$, 即 $x \in (e^{-3}, e^3)$ 时级数收敛. 当 $x = e^{-3}$ 时 $\sum\limits_{n = 1}^{\infty}u_n = \sum\limits_{n = 1}^{\infty}(-1)^n$ 发散. 当 $x = e^3$ 时 $\sum\limits_{n = 1}^{\infty}u_n = \sum\limits_{n = 1}^{\infty}1$ 发散. 故该级数的收敛域为 $(e^{-3}, e^3)$.

再考虑绝对收敛域. 由于当 $\left|\dfrac{\ln x}{3}\right|< 1$, 即 $x \in (e^{-3}, e^3)$ 时 $\lim\limits_{n \to \infty}\left|\dfrac{\ln x}{3}\right|^n = 0$, 故该级数的绝对收敛域也为 $(e^{-3}, e^3)$.

(3) 由于对任意 $x \in \mathbb{R}$, 都有 $\lim\limits_{n \to \infty}\sqrt[n]{u_n} = \lim\limits_{n \to \infty}\dfrac{n + 1}{x}$ 不存在, 因此收敛域为 $\varnothing$.

(4) 该级数每一项都为正数, 故绝对收敛域等于收敛域. 由于 $\lim\limits_{n \to \infty}\dfrac{u_{n + 1}}{u_n} = \lim\limits_{n \to \infty}\dfrac{x^{n + 1}\sin\frac{x}{2^{n + 1}}}{x^n\sin\frac{x}{2^n}} = \lim\limits_{n\to \infty}\dfrac{x}{2\cos\frac{x}{2^{n + 1}}} = \dfrac{x}{2}$, 因此当 $x \in (-2, 2)$ 时该级数收敛. 当 $x = \pm2$ 时, $\lim\limits_{n \to \infty}u_n = \lim\limits_{n \to \infty}x^n\cdot\dfrac{x}{2^n} = \lim\limits_{n \to \infty}\dfrac{(\pm 2)^{n + 1}}{2^n} \neq 0$, 此时该级数发散. 故该级数的绝对收敛域为 $(-2, 2)$.

(5) 当 $x \in (-1, 1)$ 时, 由于 $\lim\limits_{n \to \infty}u_n = \lim\limits_{n \to \infty}\dfrac{1}{1 + x^n} = 1 \neq 0$, 故此时该级数发散. 当 $x = -1$ 时该级数不存在. 当 $x = 1$ 时, 该级数等于 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{2}$ 发散.

考虑 $\dfrac{u_{n + 1}}{u_n} = \dfrac{1 + x^n}{1 + x^{n + 1}}$. 当 $\left|x\right| > 1$ 时, $\lim\limits_{n \to \infty}\left|\dfrac{u_{n + 1}}{u_n}\right| = \lim\limits_{n \to \infty}\left|\dfrac{1 + x^n}{1 + x^{n + 1}}\right| = \lim\limits_{n \to \infty}\left|\dfrac{\frac{1}{x^n} + 1}{\frac{1}{x^n} + x}\right| = \dfrac{1}{\left|x\right|} < 1$, 该级数绝对收敛. 综上所述, 该级数在 $\{x | \left|x\right| > 1\}$ 上收敛, 且绝对收敛.

## 第 3 题

下列函数项级数在收敛域上是否一致收敛?

(1) $\sum\limits_{n = 1}^{\infty}\dfrac{1 - \cos nx}{n^2}$;

(3) $\sum\limits_{n = 1}^{\infty}x^3e^{-nx^2}$;

(5) $\sum\limits_{n = 1}^{\infty}\dfrac{\cos nx + \sin n^x}{n^{1.001}}$;

**解**

(1) 由于 $\left|\dfrac{1 - \cos nx}{n^2}\right| \le \dfrac{2}{n^2}$ 且 $\sum\limits_{n = 1}^{\infty}\dfrac{2}{n^2}$ 收敛, 因此由 Weierstrass 判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{1 - \cos nx}{n^2}$ 在收敛域上一致收敛.

(3) 由于 $e^{nx^2} \ge 1 + (nx^2) + \dfrac{1}{2}(nx^2)^2$, 故

$$
\left|\dfrac{x^3}{e^{nx^2}}\right| \le \dfrac{\left|x^3\right|}{1 + (nx^2) + \dfrac{1}{2}(nx^2)^2} \le \dfrac{\left|x^3\right|}{(nx^2) + \dfrac{1}{2}(nx^2)^2} \le \dfrac{\left|x^3\right|}{2\sqrt{(nx^2)}\cdot\dfrac{1}{2}(nx^2)^2} = \dfrac{\left|x^3\right|}{\sqrt{2n^3}\left|x^3\right|} = \dfrac{1}{\sqrt{2n^3}}.
$$

而 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt{2n^3}}$ 收敛, 因此由 Weierstrass 判别法知 $\sum\limits_{n = 1}^{\infty}x^3e^{-nx^2}$ 在收敛域上一致收敛.

(5) 由于 $\left|\dfrac{\cos nx + \sin n^x}{n^{1.001}}\right| \le \dfrac{2}{n^{1.001}}$, 且 $\sum\limits_{n = 1}^{\infty}\dfrac{2}{n^{1.001}}$ 收敛, 因此由 Weierstrass 判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{\cos nx + \sin n^x}{n^{1.001}}$ 在收敛域上一致收敛.

## 第 4 题

考察级数 $\sum\limits_{n = 1}^{\infty}\dfrac{(-1)^n}{x + 2^n}$ 在 $[0, +\infty)$ 上是否一致收敛?

**解**

一致收敛. 记 $u_n(x) = (-1)^n$. 由于 $\left|\sum\limits_{k = 1}^{n}u_k(x)\right| \le 1$ 部分和有界, 且 $v_n(x) = \dfrac{1}{x + 2^n}$ 对于任意的 $x \in [0, +\infty)$ 都单调且一致趋于 $0$, 故由 Dirichlet 判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{(-1)^n}{x + 2^n} = \sum\limits_{n = 1}^{\infty}u_n(x)v_n(x)$ 一致收敛.

## 第 5 题

证明级数 $\sum\limits_{n = 1}^{\infty}\dfrac{(-1)^n}{x^2 + n}$ 在 $x \in (-\infty, +\infty)$ 上一致收敛, 但不绝对收敛.

**证明**

记 $u_n(x) = (-1)^n$. 由于 $\left|\sum\limits_{k = 1}^{n}u_k(x)\right| \le 1$ 部分和有界, 且 $v_n(x) = \dfrac{1}{x^2 + n}$ 对于任意的 $x \in (-\infty, +\infty)$ 都单调且一致趋于 $0$, 故由 Dirichlet 判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{(-1)^n}{x^2 + n} = \sum\limits_{n = 1}^{\infty}u_n(x)v_n(x)$ 一致收敛.

当 $x = 1$ 时 $\sum\limits_{n = 1}^{\infty}\left|u_n\right| = \sum\limits_{n = 1}^{\infty}\dfrac{1}{1 + n}$ 发散, 因此该级数不绝对收敛.
