
## 第 1 题

求下列幂级数的收敛半径与收敛域.

(1) $\sum\limits_{n = 1}^{\infty}\dfrac{x^n}{n^n}$;

(3) $\sum\limits_{n = 1}^{\infty}\dfrac{x^{3n + 1}}{(2n - 1)2^n}$;

(5) $\sum\limits_{n = 1}^{\infty}\dfrac{\ln n}{n}x^n$;

(7) $\sum\limits_{n = 1}^{\infty}\dfrac{1}{n^p}(x - 1)^n(p>0)$;

(9) $\sum\limits_{n = 1}^{\infty}2^n(x+a)^{2n}$;

**解**

(1) 由于 $q = \lim\limits_{n \to \infty}\sqrt[n]{\dfrac{1}{n^n}} = \lim\limits_{n \to \infty} \dfrac{1}{n} = 0$, 故 $R = \dfrac{1}{q} = +\infty$. 收敛域为 $\mathbb{R}$.

(3) 由于 $q = \lim\limits_{n \to \infty}\dfrac{u_{n + 1}}{u_n} = \lim\limits_{n \to \infty}\dfrac{x^3(2n - 1)}{2(2n + 1)} = \dfrac{x^3}{2}$, 当 $x \in (-\sqrt[3]{2}, \sqrt[3]{2})$ 时级数收敛. 故 $R = \sqrt[3]{2}$. 当 $x = -\sqrt[3]{2}$ 时为 Leibniz 级数, 收敛; 当 $x = \sqrt[3]{2}$ 时可化为 $\sum\limits_{n = 1}^{\infty}\dfrac{\sqrt[3]{2}}{2n - 1}$, 发散. 故收敛域为 $[-\sqrt[3]{2}, \sqrt[3]{2})$.

(5) 由于 $q = \lim\limits_{n \to \infty}\dfrac{u_{n + 1}}{u_n} = \lim\limits_{n \to \infty}\dfrac{n\ln(n+1)}{(n+1)\ln n} = 1$, 故 $R = \dfrac{1}{q} = 1$. 当 $x = -1$ 时为 Leibniz 级数, 收敛; 当 $x = 1$ 时可化为 $\sum\limits_{n = 1}^{\infty}\dfrac{\ln n}{n} \ge -1 + \sum\limits_{n = 1}^{\infty}\dfrac{1}{n}$, 发散. 故收敛域为 $[-1, 1)$.

(7) 由于 $q = \lim\limits_{n \to \infty}\sqrt[n]{\dfrac{1}{n^p}} = 1$, 故 $R = \dfrac{1}{q} = 1$. 当 $x = 0$ 时为该级数为 Leibniz 级数, 收敛. 当 $x = 2$ 时, $\sum\limits_{n = 1}^{\infty}\dfrac{1}{n^p}(x - 1)^{n} = \sum\limits_{n = 1}^{\infty}\dfrac{1}{n^p}$. 若 $p > 1$, 则级数收敛; 若 $0 < p \le 1$, 则级数发散.

综上所述, 当 $p > 1$ 时, 收敛域为 $[0, 2]$; 当 $0 < p \le 1$ 时, 收敛域为 $[0, 2)$.

(9) 由于 $q = \lim\limits_{n \to \infty}\dfrac{u_{n + 1}}{u_n} = \lim\limits_{n \to \infty}2(x+a)^2 = 2(x+a)^2$, 当 $x \in \left(-a - \dfrac{\sqrt{2}}{2}, -a + \dfrac{\sqrt{2}}{2}\right)$ 时级数收敛. 故 $R = \dfrac{\sqrt{2}}{2}$. 当 $x = -a \pm \dfrac{\sqrt{2}}{2}$ 时级数均发散. 故收敛域为 $\left(-a - \dfrac{\sqrt{2}}{2}, -a + \dfrac{\sqrt{2}}{2}\right)$.

## 第 2 题

求下列幂级数的收敛域与和函数.

(1) $\sum\limits_{n = 2}^{\infty}\dfrac{x^n}{n(n-1)}$;

(3) $\sum\limits_{n = 1}^{\infty}(2n+1)x^{2n+1}$;

(5) $\sum\limits_{n = 1}^{\infty}\dfrac{n(n+1)}{2}x^{n-1}$;

**解**

(1) 由于 $q = \lim\limits_{n \to \infty}\sqrt[n]{\dfrac{1}{n(n - 1)}} = 1$, 故 $R = \dfrac{1}{q} = 1$. 当 $x = \pm1$ 时级数均收敛, 故收敛域为 $[-1, 1]$. 设和函数为 $S(x)$, 则当 $x \neq 1$ 时 $S''(x) = \sum\limits_{n = 0}^{\infty}x^n = \dfrac{1}{1 - x}$. 积分可得 $S(x) = x + (1 - x)\ln(1 - x)$. 当 $x = 1$ 时 $S(x) = 1$. 因此

$$
S(x) = \begin{cases}
    1, & x = 1, \\
    x + (1 - x)\ln(1 - x), & x \in [-1, 1).
\end{cases}
$$

(3) 由于 $q = \varlimsup\limits_{n \to \infty}a_n = \lim\limits_{n \to \infty}\sqrt[n]{2n+1} = 1$, 故 $R = \dfrac{1}{q} = 1$. 当 $x = \pm1$ 时级数均发散, 故收敛域为 $(-1, 1)$. 设和函数为 $S(x)$. 因此

$$
\begin{aligned}
    S(x) & = \dfrac{\text{d}{}}{\text{d}{x}}\left(\sum\limits_{n = 1}^{\infty}x^{2n + 2}\right)-\left(\sum\limits_{n = 1}^{\infty}x^{2n + 1}\right) \\
    & = \dfrac{\text{d}{}}{\text{d}{x}}\dfrac{x^4}{1 - x^2} - \dfrac{x^3}{1 - x^2} \\
    & = \dfrac{4x^3 - 2x^5}{(1 - x^2)^2} - \dfrac{x^3}{1 - x^2} \\
    & = \dfrac{3x^3 - x^5}{(1 - x^2)^2} \quad x \in (-1, 1)
\end{aligned}
$$

(5) 由于 $q = \lim\limits_{n \to \infty}\sqrt[n]{\dfrac{n(n + 1)}{2}} = 1$, 故 $R = \dfrac{1}{q} = 1$. 当 $x = \pm1$ 时级数均发散, 故收敛域为 $(-1, 1)$. 设和函数为 $S(x)$. 因此

$$
\begin{aligned}
    S(x) & = \dfrac{1}{2}\dfrac{\text{d}{}}{\text{d}{x^2}}\left(\sum\limits_{n = 1}^{\infty}x^{n+1}\right) \\
    & = \dfrac{1}{2}\dfrac{\text{d}{}}{\text{d}{x^2}}\left(\dfrac{1}{1 - x} - 1 - x\right) \\
    & = \dfrac{1}{2}\dfrac{\text{d}{}}{\text{d}{x}}\left(\dfrac{1}{(1 - x)^2} - 1\right) \\
    & = \dfrac{1}{(1 - x)^3} \quad x \in (-1, 1)
\end{aligned}
$$

## 第 3 题

将下列函数在 $x_0$ 点展成幂级数, 并求收敛域.

(1) $\cos x, x_0 = \dfrac{\pi}{4}$;

(3) $\ln(1 + x), x_0 = 2$;

(5) $\sin x^2, x_0 = 0$;

(7) $\dfrac{1}{x - 1}, x_0 = -1$;

(9) $\dfrac{x}{(x - 1)(x + 3)}, x_0 = 0$;

(11) $\ln(x + \sqrt{x^2 + 1}), x_0 = 0$;

**解**

(1) $f(x) = \cos x, f^{(n)}(x) = \cos\left(x + \dfrac{n\pi}{2}\right)$. 因此

$$
f(x) = \sum\limits_{n = 0}^{\infty}\dfrac{\cos\left(\frac{\pi}{4} + \frac{n\pi}{2}\right)}{n!}\left(x - \dfrac{\pi}{4}\right)^n
$$

收敛域为 $\mathbb{R}$.

(3) $f(x) = \ln(1 + x), f^{(n)}(x) = \begin{cases}\ln(1 + x), & n = 0, \\ \dfrac{(-1)^{n-1}(n-1)!}{(1 + x)^n}, & n \ge 1.\end{cases}$ 因此

$$
f(x) = \ln 3 + \sum\limits_{n = 1}^{\infty}\dfrac{(-1)^{n-1}}{n\cdot 3^n}(x - 2)^n
$$

由 $\left|x - 2\right| < 3$ 解得 $x \in (-1, 5)$. 因为当 $x = -1$ 时级数发散, 当 $x = 5$ 时级数收敛, 故收敛域为 $(-1, 5]$.

(5) $f(x) = \sin x^2$. 由于 $\sin x = \sum\limits_{k = 0}^{\infty}\dfrac{(-1)^kx^{2k+1}}{(2k+1)!}$, 因此

$$
f(x) = \sum\limits_{k = 0}^{\infty}\dfrac{(-1)^kx^{4k+2}}{(2k+1)!}
$$

收敛域为 $\mathbb{R}$.

(7) $f(x) = \dfrac{1}{x - 1}, f^{(n)}(x) = \dfrac{(-1)^nn!}{(x - 1)^{n + 1}}$. 因此

$$
f(x) = -\sum\limits_{n = 0}^{\infty}\dfrac{1}{2^{n+1}}(x + 1)^n
$$

由 $\left|x + 1\right| < 2$ 解得 $x \in (-3, 1)$. 因为当 $x = -3$ 时级数收敛, 当 $x = 1$ 时级数发散, 故收敛域为 $[-3, 1)$.

(9) $f(x) = \dfrac{x}{(x - 1)(x - 3)} = \dfrac{3}{2(x - 3)} + \dfrac{1}{2(x - 1)}, f^{(n)}(x) = \dfrac{3}{2}\cdot\dfrac{(-1)^nn!}{(x - 3)^{n + 1}} - \dfrac{1}{2}\cdot\dfrac{(-1)^nn!}{(x - 1)^{n + 1}}$. 因此

$$
f(x) = \sum\limits_{n = 0}^{\infty}\left(\dfrac{1}{2} - \dfrac{1}{2\cdot3^n}\right)x^n
$$

由 $\left|x\right| < 1$ 解得 $x \in (-1, 1)$. 因为当 $x = \pm1$ 时级数均发散, 故收敛域为 $(-1, 1)$.

(11) $f(x) = \ln(x + \sqrt{x^2 + 1}), f'(x) = (1 + x^2)^{-\frac{1}{2}}$. 由于

$$
(1 + x^2)^{\frac{1}{2}} = 1 + \sum\limits_{n = 1}^{\infty}(-1)^n\dfrac{(2n-1)!!}{(2n)!!}x^{2n} \quad x \in [-1, 1]
$$

因此

$$
\begin{aligned}
    \ln(x + \sqrt{x^2 + 1}) & = \int_{0}^{x}(1 + t^2)^{-\frac{1}{2}}\text{d}{t} \\
    & = \int_{0}^{x}\left[1 + \sum\limits_{n = 1}^{\infty}(-1)^n\dfrac{(2n-1)!!}{(2n)!!}t^{2n}\right]\text{d}{t} \\
    & = x + \sum\limits_{n = 1}^{\infty}(-1)^n\dfrac{(2n-1)!!}{(2n)!!(2n + 1)}x^{2n + 1} \quad x \in [-1, 1]
\end{aligned}
$$

收敛域为 $[-1, 1]$.

## 第 4 题

将下列函数在 $x_0 = 0$ 点展到指定的项.

(1) $e^{\sin x}$, 展到 $x^3$ 项;

(3) $\cos^3 x$, 展到 $x^4$ 项;

**解**

(1) 由 $e^x = 1 + x + \dfrac{1}{2}x^2 + \dfrac{1}{6}x^3 + o(x^3)$ 以及 $\sin x = x - \dfrac{1}{6}x^3 + o(x^3)$ 得

$$
\begin{aligned}
    e^{\sin x} & = 1 + \sin x + \dfrac{1}{2}\sin^2x + \dfrac{1}{6}\sin^3x + o(\sin^3 x) \\
    & = 1 + \left(x - \dfrac{1}{6}x^3 + o(x^3)\right) + \dfrac{1}{2}\left(x - \dfrac{1}{6}x^3 + o(x^3)\right)^2 + \dfrac{1}{6}\left(x - \dfrac{1}{6}x^3 + o(x^3)\right)^3 + o(x^3) \\
    & = 1 + x - \dfrac{1}{6}x^3 + \dfrac{1}{2}x^2 + \dfrac{1}{6}x^3 + o(x^3) \\
    & = 1 + x + \dfrac{1}{2}x^2 + o(x^3)
\end{aligned}
$$

(3) 由 $\cos x = 1 - \dfrac{1}{2}x^2 + o(x^2)$ 得

$$
\begin{aligned}
    \cos^3 x & = \left(1 - \dfrac{1}{2}x^2 + \dfrac{1}{24}x^4 + o(x^4)\right)^3 \\
    & = 1 - \dfrac{3}{2}x^2 + \dfrac{3}{4}x^4 + \dfrac{1}{8}x^4 + o(x^4) \\
    & = 1 - \dfrac{3}{2}x^2 + \dfrac{7}{8}x^4 + o(x^4)
\end{aligned}
$$

## 第 7 题

幂级数 $\sum\limits_{n = 1}^{\infty}a_nx^n$ 在 $x = 3$ 处条件收敛, 求 $\sum\limits_{n = 1}^{\infty}na_n(x - 1)^{n + 1}$ 的收敛区间.

**解**

由题知 $\sum\limits_{n = 1}^{\infty}a_nx^n$ 的收敛半径为 $R_1 = 3$. 因此 $q_1 = \varlimsup\limits_{n \to \infty}\sqrt[n]{a_n} = \dfrac{1}{R} = \dfrac{1}{3}$. 所以 $q_2 = \varlimsup\limits_{n \to \infty}\sqrt[n]{na_n} = \dfrac{1}{3}$. 故 $\sum\limits_{n = 1}^{\infty}na_n(x - 1)^{n + 1}$ 的收敛半径 $R_2 = \dfrac{1}{q_2} = 3$, 即收敛区间为 $(-2, 4)$.

## 第 9 题

幂级数 $\sum\limits_{n = 0}^{\infty}a_nx^n$ 与 $\sum\limits_{n = 0}^{\infty}b_nx^n$ 的收敛半径分别为 $R_1, R_2$, 证明:

(1) $\sum\limits_{n = 0}^{\infty}(a_n+b_n)x^n$ 的收敛半径 $R \ge \min\{R_1, R_2\}$.

(2) $\sum\limits_{n = 0}^{\infty}a_nb_nx^n$ 的收敛半径 $R \ge R_1 R_2$.

**证明**

(1) 由题知 $\sum\limits_{n = 0}^{\infty}a_nx^n$ 与 $\sum\limits_{n = 0}^{\infty}b_nx^n$ 在 $\left|x\right|\le \min\{R_1, R_2\}$ 时同时收敛. 因此, 当 $\left|x\right|\le \min\{R_1, R_2\}$ 时一定有 $\sum\limits_{n = 0}^{\infty}(a_n+b_n)x^n$ 收敛. 故其收敛半径 $R \ge \min\{R_1, R_2\}$.

(2) 由题知 $q_1 = \varlimsup\limits_{n \to \infty}\sqrt[n]{\left|a_n\right|}, q_2 = \varlimsup\limits_{n \to \infty}\sqrt[n]{\left|b_n\right|}, q = \varlimsup\limits_{n \to \infty}\sqrt[n]{\left|a_nb_n\right|}$. 而 $\varlimsup\limits_{n \to \infty}\sqrt[n]{\left|a_nb_n\right|} \le \varlimsup\limits_{n \to \infty}\sqrt[n]{\left|a_n\right|}\cdot\varlimsup\limits_{n \to \infty}\sqrt[n]{\left|b_n\right|}$. 故 $q \le q_1q_2$. 由于 $q_1 = \dfrac{1}{R_1}, q_2 = \dfrac{1}{R_2}, q = \dfrac{1}{R}$, 所以 $R \ge R_1R_2$.
