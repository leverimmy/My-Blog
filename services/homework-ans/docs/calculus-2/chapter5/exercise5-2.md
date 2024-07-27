
## 第 1 题

判断下列级数的敛散性.

(1) $\sum\limits_{n = 1}^{\infty}\dfrac{1}{(2n - 1)2^{n-1}}$;

(3) $\sum\limits_{n = 2}^{\infty}\dfrac{1}{\ln n}$;

(5) $\sum\limits_{n = 1}^{\infty}\left(\dfrac{1 + n^2}{1 + n^3}\right)^2$;

(7) $\sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt{n}}\ln\left(\dfrac{n + 1}{n - 1}\right)$;

**解**

(1) 由于 $\lim\limits_{n \to \infty}\dfrac{u_{n + 1}}{u_n} = \dfrac{2n - 1}{2(2n + 1)} = \dfrac{1}{2} < 1$, 故由比值判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{(2n - 1)2^{n-1}}$ 收敛.

(3) 由于 $\ln n \ge n - 1$, 因此 $\sum\limits_{n = 2}^{\infty}\dfrac{1}{\ln n} \ge \sum\limits_{n = 1}^{\infty}\dfrac{1}{n}$. 显然 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{n}$ 发散. 故由比较判别法知 $\sum\limits_{n = 2}^{\infty}\dfrac{1}{\ln n}$ 发散.

(5) 由于 $\dfrac{1 + n^2}{1 + n^3} \le \dfrac{1}{n - 1}, \forall n \ge 2$, 所以 $\sum\limits_{n = 1}^{\infty}\left(\dfrac{1 + n^2}{1 + n^3}\right)^2 \ge 1 + \sum\limits_{n = 2}^{\infty}\dfrac{1}{(n - 1)^2}$. 显然 $\sum\limits_{n = 2}^{\infty}\dfrac{1}{(n - 1)^2}$ 收敛. 故由比较判别法知 $\sum\limits_{n = 1}^{\infty}\left(\dfrac{1 + n^2}{1 + n^3}\right)^2$ 收敛.

(7) 由于 $\lim\limits_{n \to \infty}n^{\frac{3}{2}} \cdot u_n = \lim\limits_{n \to \infty}n^{\frac{3}{2}} \cdot \dfrac{1}{\sqrt{n}}\ln\left(\dfrac{n + 1}{n - 1}\right) = \lim\limits_{n \to \infty}n\ln\left(\dfrac{n + 1}{n - 1}\right) = 2$, 故由推论 5.2.1 知 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt{n}}\ln\left(\dfrac{n + 1}{n - 1}\right)$ 收敛.

## 第 2 题

判断下列级数的敛散性.

(1) $\sum\limits_{n = 1}^{\infty}\dfrac{2^n}{(2n - 1)!}$;

(3) $\sum\limits_{n = 1}^{\infty}\dfrac{3^nn}{n^n}$;

(5) $\sum\limits_{n = 1}^{\infty}n^3\sin\dfrac{\pi}{3^n}$;

**解**

(1) 由于 $\lim\limits_{n \to \infty}\dfrac{u_{n + 1}}{u_n} = \lim\limits_{n \to \infty}\dfrac{2}{2n + 1} = 0 < 1$, 故由比值判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{2^n}{(2n - 1)!}$ 收敛.

(3) 由于 $\lim\limits_{n \to \infty}\sqrt[n]{u_n} = \dfrac{3}{n}\sqrt[n]{n} = 0 < 1$, 故由根值判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{3^nn}{n^n}$ 收敛.

(5) 由于 $\sum\limits_{n = 1}^{\infty}n^3\sin\dfrac{\pi}{3^n} < \sum\limits_{n = 1}^{\infty}\dfrac{\pi n^3}{3^n}$, 且显然 $\sum\limits_{n = 1}^{\infty}\dfrac{\pi n^3}{3^n}$ 收敛, 故由比较判别法知 $\sum\limits_{n = 1}^{\infty}n^3\sin\dfrac{\pi}{3^n}$ 收敛.

## 第 3 题

判断下列级数的敛散性.

(2) $\sum\limits_{n = 1}^{\infty}\dfrac{1}{3^n}\left(1 + \dfrac{1}{n}\right)^{n^2}$;

(4) $\sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt[3]{n+1}}\ln\dfrac{n + 2}{n}$;

(6) $\sum\limits_{n = 1}^{\infty}\dfrac{\ln n!}{n!}$;

**解**

(2) 由于 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{3^n}\left(1 + \dfrac{1}{n}\right)^{n^2} \le \sum\limits_{n = 1}^{\infty}\left(\dfrac{e}{3}\right)^n$ 且显然 $\sum\limits_{n = 1}^{\infty}\left(\dfrac{e}{3}\right)^n$ 收敛, 故由比较判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{3^n}\left(1 + \dfrac{1}{n}\right)^{n^2}$ 收敛.

(4) 由于 $\lim\limits_{n \to \infty}n^{\frac{4}{3}}\cdot u_n = \lim\limits_{n \to \infty}\sqrt[3]{\dfrac{n}{n + 1}}\cdot n\ln\dfrac{n + 2}{n} = \lim\limits_{n \to \infty}\sqrt[3]{\dfrac{n}{n + 1}}\cdot \lim\limits_{n \to \infty}n\ln\dfrac{n + 2}{n} = 2$. 故由推论 5.2.1 知 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt[3]{n+1}}\ln\dfrac{n + 2}{n}$ 收敛.

(6) 由于 $\sum\limits_{n = 1}^{\infty}\dfrac{\ln n!}{n!} < \sum\limits_{n = 1}^{\infty}\dfrac{n}{n!} < 2 + \sum\limits_{n = 3}^{\infty}\dfrac{1}{(n - 1)(n - 2)}$, 且显然 $\sum\limits_{n = 3}^{\infty}\dfrac{1}{(n - 1)(n - 2)}$ 收敛, 故由比较判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{\ln n!}{n!}$ 收敛.

## 第 4 题

设 $u_n, v_n > 0$, $\dfrac{u_{n + 1}}{u_n} \le \dfrac{v_{n + 1}}{v_n}$, 证明: $\sum\limits_{n = 1}^{\infty}v_n$ 收敛, 则 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛.

**证明**

由于 $\dfrac{u_{n + 1}}{u_n} \le \dfrac{v_{n + 1}}{v_n}$, 故将左式从 $n = 1$ 连续乘到 $n = k$ 得到 $\dfrac{u_{k + 1}}{u_1} \le \dfrac{v_{k + 1}}{v_1}$. 由于 $\sum\limits_{n = 1}^{\infty}v_n$ 收敛, 故 $\sum\limits_{n = 1}^{\infty}\dfrac{u_1}{v_1}v_n$ 收敛. 而 $\sum\limits_{n = 1}^{\infty}u_{n} \le \sum\limits_{n = 1}^{\infty}\dfrac{u_1}{v_1}v_n$. 由比较判别法知 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛.

## 第 5 题

设 $u_n > 0$, 数列 $\{nu_n\}$ 有界, 证明: $\sum\limits_{n = 1}^{\infty}\dfrac{u_n}{n}$ 收敛.

**证明**

设 $nu_n \le M, \forall n \in \mathbb{N}^{*}$, 因此 $u_n \le \dfrac{M}{n}$. 则 $\sum\limits_{n = 1}^{\infty}\dfrac{u_n}{n} \le \sum\limits_{n = 1}^{\infty}\dfrac{M}{n^2}$. 显然 $\sum\limits_{n = 1}^{\infty}\dfrac{M}{n^2}$ 收敛. 由比较判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{u_n}{n}$ 收敛.

## 第 6 题

设 $u_n, v_n > 0$, 且 $\sum\limits_{n = 1}^{\infty}v_n, \sum\limits_{n = 1}^{\infty}u_n$ 均发散, 考察 $\sum\limits_{n = 1}^{\infty}\max\{v_n, u_n\}$ 和 $\sum\limits_{n = 1}^{\infty}\min\{v_n, u_n\}$ 的敛散性.

**解**

由于 $\sum\limits_{n = 1}^{\infty}\max\{v_n, u_n\} \ge \sum\limits_{n = 1}^{\infty}u_n$ 且 $\sum\limits_{n = 1}^{\infty}\max\{v_n, u_n\} \ge \sum\limits_{n = 1}^{\infty}v_n$, 故由比较判别法知 $\sum\limits_{n = 1}^{\infty}\max\{v_n, u_n\}$ 发散.

取 $u_n = v_n = n$, 则此时 $\sum\limits_{n = 1}^{\infty}\min\{v_n, u_n\} = \sum\limits_{n = 1}^{\infty}n$ 发散. 取 $u_n = \begin{cases}n, & n = 2k - 1, \\ \dfrac{1}{n^2}, & n = 2k\end{cases}, v_n = \begin{cases}\dfrac{1}{n^2}, & n = 2k - 1, \\ n, & n = 2k\end{cases}k \in \mathbb{N}^{*}$, 则此时 $\sum\limits_{n = 1}^{\infty}\min\{v_n, u_n\} = \sum\limits_{n = 1}^{\infty}\dfrac{1}{n^2}$ 收敛. 因此 $\sum\limits_{n = 1}^{\infty}\min\{v_n, u_n\}$ 既可能发散, 也可能收敛.

## 第 7 题

若 $\sum\limits_{n = 1}^{\infty}u_n(u_n>0)$ 收敛, 则 $\lim\limits_{n \to \infty}\dfrac{u_{n + 1}}{u_n} = l < 1$ 正确吗? 请举例说明.

**解**

不正确. 考虑 $u_n = \dfrac{1}{n^2}$, 则 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛, 但  $\lim\limits_{n \to \infty}\dfrac{u_{n + 1}}{u_n} = \lim\limits_{n \to \infty}\dfrac{\frac{1}{(n + 1)^2}}{\frac{1}{n^2}} = \lim\limits_{n \to \infty}\dfrac{n^2}{(n+1)^2} = 1$, 不小于 $1$. 矛盾.

## 第 8 题

利用 Raabe 判别法, 讨论下列级数的敛散性.

(1) $\sum\limits_{n = 1}^{\infty}\dfrac{\sqrt{n!}}{(1 + \sqrt{1})(1 + \sqrt{2})\cdots(1 + \sqrt{n})}$;

(2) $\sum\limits_{n = 1}^{\infty}\dfrac{n!n^{-p}}{q(q + 1)(q + 2)\cdots(q + n)}, p, q > 0$.

**解**

(1) $n\left(\dfrac{u_n}{u_{n + 1}} - 1\right) = n\left(\dfrac{1 + \sqrt{n + 1}}{\sqrt{n + 1}} - 1\right) = \dfrac{n}{\sqrt{n + 1}}$. 取 $\rho = 2$, 则当 $n \ge 100$ 时有 $\dfrac{n}{\sqrt{n + 1}} \ge \rho = 2$. 由 Raabe 判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{\sqrt{n!}}{(1 + \sqrt{1})(1 + \sqrt{2})\cdots(1 + \sqrt{n})}$ 收敛.

(2)

$$
\begin{aligned}
    n\left(\dfrac{u_n}{u_{n + 1}} - 1\right) & = n\left(\dfrac{q + n + 1}{n + 1}\cdot \left(1 - \dfrac{1}{n + 1}\right)^{-p} - 1\right) \\
    & = n\left(\dfrac{q + n + 1}{n + 1}\cdot\left(1 + \dfrac{p}{n + 1} + O\left(\dfrac{1}{(n + 1)^2}\right)\right) - 1\right) \\
    & = \dfrac{n(p + q)}{n + 1} + O\left(\dfrac{1}{n}\right)
\end{aligned}
$$

因此, 由 Raabe 判别法知, 当 $p + q > 1$ 时该级数收敛, 当 $p + q \le 1$ 时该级数发散.

## 第 10 题

设 $\sum\limits_{n = 1}^{\infty}u_n$ 为正项级数, 证明: $\sum\limits_{n = 1}^{\infty}u_n$ 与 $\sum\limits_{n = 1}^{\infty}\dfrac{u_n}{u_n + 1}$ 的敛散性相同.

**证明**

若 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛, 则 $\lim\limits_{n \to \infty}u_n = 0$. 此时 $\lim\limits_{n \to \infty} \dfrac{u_n}{\frac{u_n}{u_n + 1}} = \lim\limits_{n \to \infty}(u_n + 1) = 1$, 由比值判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{u_n}{u_n + 1}$ 收敛.

若 $\sum\limits_{n = 1}^{\infty}\dfrac{u_n}{u_n + 1}$ 收敛, 则 $\lim\limits_{n \to \infty}\dfrac{u_n}{u_n + 1} = 0$, 这说明 $\lim\limits_{n \to \infty}u_n = 0$. 此时 $\lim\limits_{n \to \infty} \dfrac{u_n}{\frac{u_n}{u_n + 1}} = \lim\limits_{n \to \infty}(u_n + 1) = 1$, 由比值判别法知 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛.
