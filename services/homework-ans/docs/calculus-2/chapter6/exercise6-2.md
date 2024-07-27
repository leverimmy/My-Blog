
## 第 2 题

设 $S(x) = \sum\limits_{n = 1}^{\infty}\dfrac{1}{2^n}\tan\dfrac{x}{2^n}$, 计算 $\int_{\frac{\pi}{6}}^{\frac{\pi}{3}}S(x)\text{d}{x}$.

**解**

记 $u_n(x) = \dfrac{1}{2^n}, v_n(x) = \tan\dfrac{x}{2^n}, I = \left(\dfrac{\pi}{6}, \dfrac{\pi}{3}\right)$. 由于 $v_n(x)$ 对任意固定的 $x\in I$ 均单调递减, 且 $\left|v_n(x)\right| \le \dfrac{\sqrt{3}}{3}$ 在 $I$ 上一致有界, 且 $\sum\limits_{n = 1}^{\infty}u_n(x)$ 与 $x$ 无关, 在 $I$ 上一致收敛, 故由 Abel 判别法知 $S(x)$ 在 $I$ 上一致收敛. 故可以将积分与求和符号交换次序:

$$
\begin{aligned}
    \int_{\frac{\pi}{6}}^{\frac{\pi}{3}}S(x)\text{d}{x} & = \int_{\frac{\pi}{6}}^{\frac{\pi}{3}}\sum\limits_{n = 1}^{\infty}\dfrac{1}{2^n}\tan\dfrac{x}{2^n}\text{d}{x} \\
    & = \sum\limits_{n = 1}^{\infty}\int_{\frac{\pi}{6}}^{\frac{\pi}{3}}\dfrac{1}{2^n}\tan\dfrac{x}{2^n}\text{d}{x} \\
    & = \sum\limits_{n = 1}^{\infty}\left(-\ln\cos\dfrac{x}{2^n}\right)\bigg\vert_{x=\frac{\pi}{6}}^{x=\frac{\pi}{3}} \\
    & = \sum\limits_{n = 1}^{\infty}\ln\dfrac{\cos\frac{\pi}{3\cdot2^{n+1}}}{\cos\frac{\pi}{3\cdot2^n}} \\
    & = \lim\limits_{n \to \infty}\ln\dfrac{\cos\frac{\pi}{3\cdot2^{n+1}}}{\cos\frac{\pi}{6}} \\
    & = \ln 2 - \dfrac{\ln 3}{2}
\end{aligned}
$$

## 第 3 题

证明:

$$
\int_{0}^{1}x^x\text{d}{x} = 1 - \dfrac{1}{2^2} + \dfrac{1}{3^3} - \dfrac{1}{4^4} + \cdots + (-1)^n\dfrac{1}{(n + 1)^{n + 1}} + \cdots.
$$

**证明**

由于 $x^x = e^{x\ln x} = 1 + (x\ln x) + \dfrac{1}{2}(x\ln x)^2 + \cdots = \sum\limits_{n = 0}^{\infty}\dfrac{(x \ln x)^n}{n!}$, 且 $\left|x \ln x\right| \in (0, 1), \forall x \in (0, 1)$, 故 $\sum\limits_{n = 0}^{\infty}\dfrac{(x \ln x)^n}{n!} < \sum\limits_{n = 0}^{\infty}\dfrac{1}{n!}$. 而 $\sum\limits_{n = 0}^{\infty}\dfrac{1}{n!}$ 收敛, 故由 Weierstrass 判别法知 $\sum\limits_{n = 0}^{\infty}\dfrac{(x \ln x)^n}{n!}$ 在 $(0, 1)$ 上一致收敛. 因此可以交换积分与求和的次序:

$$
\begin{aligned}
    \int_0^1x^x\text{d}{x} & = \int_{0}^{1}\sum\limits_{n = 0}^{\infty}\dfrac{(x \ln x)^n}{n!}\text{d}{x} \\
    & = \sum\limits_{n = 0}^{\infty}\int_{0}^{1}\dfrac{(x \ln x)^n}{n!}\text{d}{x} \\
    & = \sum\limits_{n = 0}^{\infty}\dfrac{1}{n!}\int_{0}^{1}(x\ln x)^n\text{d}{x} \\
    & = \sum\limits_{n = 0}^{\infty}\dfrac{1}{n!}\int_{0}^{1}\dfrac{\ln^n x}{n + 1}\text{d}{(x^{n + 1})} \\
    & = \sum\limits_{n = 0}^{\infty}\left(\dfrac{x^{n + 1}\ln^n x}{n + 1}\bigg\vert_{0}^{1} - \int_{0}^{1}\dfrac{n x^n \ln^{n-1} x}{n + 1}\text{d}{x}\right) \\
    & = -\sum\limits_{n = 0}^{\infty}\int_{0}^{1}\dfrac{n x^n \ln^{n-1} x}{n + 1}\text{d}{x} \\
    & = \sum\limits_{n = 0}^{\infty}\int_{0}^{1}\dfrac{n(n-1) x^n \ln^{n-2} x}{(n + 1)^2}\text{d}{x} \\
    & = \cdots \\
    & = \sum\limits_{n = 0}^{\infty}(-1)^{n}\int_{0}^{1}\dfrac{n! x^n}{(n + 1)^n}\text{d}{x} \\
    & = \sum\limits_{n = 0}^{\infty}\dfrac{(-1)^n n!}{(n + 1)^{n + 1}} \\
    & = 1 - \dfrac{1}{2^2} + \dfrac{1}{3^3} - \dfrac{1}{4^4} + \cdots + (-1)^n\dfrac{1}{(n + 1)^{n + 1}} + \cdots
\end{aligned}
$$

命题得证.

## 第 4 题

证明: 函数 $f(x) = \sum\limits_{n = 1}^{\infty}\dfrac{n}{x^n}$ 是 $(1, +\infty)$ 上的连续函数.

**证明**

要证明函数 $f(x) = \sum\limits_{n = 1}^{\infty}\dfrac{n}{x^n}$ 是 $(1, +\infty)$ 上的连续函数, 只需证 $f(x)$ 在任意 $x = x_0 > 1$ 处连续即可. $\forall x_0 > 1$, 取 $r \in (1, r_0)$, 则 $f(x) = \sum\limits_{n = 1}^{\infty}\dfrac{n}{x^n} \le \sum\limits_{n = 1}^{\infty}\dfrac{n}{r^n}$, 而 $\sum\limits_{n = 1}^{\infty}\dfrac{n}{r^n}$ 收敛. 故由 Weierstrass 判别法知级数在 $[r, +\infty)$ 上一致收敛. 因此 $f(x)$ 在任意 $x = x_0 > 1$ 处连续. 命题得证.

## 第 5 题

证明: 级数 $\sum\limits_{n = 1}^{\infty}\dfrac{x^2}{(1 + x^2)^n}$ 对任意的 $x$ 绝对收敛, 但在 $(-\infty, +\infty)$ 上非一致收敛.

**证明**

由于 $\sum\limits_{n = 1}^{\infty}\dfrac{x^2}{(1 + x^2)^n} < \sum\limits_{n = 1}^{\infty}\dfrac{1 + x^2}{(1 + x^2)^n} = \sum\limits_{n = 1}^{\infty}\dfrac{1}{(1 + x^2)^{n - 1}}$, 且 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{(1 + x^2)^{n - 1}}$ 绝对收敛, 因此 级数 $\sum\limits_{n = 1}^{\infty}\dfrac{x^2}{(1 + x^2)^n}$ 对任意的 $x$ 绝对收敛. 接下来考虑 $\sum\limits_{k = n + 1}^{n + p}u_k(x)$.

$$
\begin{aligned}
    \sum\limits_{k = n + 1}^{n + p}u_k(x) & = \sum\limits_{k = n + 1}^{n + p}\dfrac{x^2}{(1 + x^2)^{k}} \\
    & = \dfrac{x^2}{(1 + x^2)^{n + 1}}\times\dfrac{1 - \left(\frac{1}{1 + x^2}\right)^p}{1 - \frac{1}{1 + x^2}} \\
    & = \dfrac{1 - \left(\frac{1}{1 + x^2}\right)^p}{(1 + x^2)^n}
\end{aligned}
$$

取 $n = p = N + 1, x = \sqrt{\sqrt[N + 1]{2} - 1}, \epsilon = \dfrac{1}{4}$, 则

$$
\begin{aligned}
    \sum\limits_{k = n + 1}^{n + p}u_k(x) & = \dfrac{1 - \left(\frac{1}{1 + x^2}\right)^p}{(1 + x^2)^n} \\
    & = \dfrac{1 - \left(\frac{1}{1 + \sqrt[N+1]{2} - 1}\right)^{N+1}}{(1 + \sqrt[N+1]{2} - 1)^{N+1}} \\
    & = \dfrac{1 - \frac{1}{2}}{2} \\
    & = \dfrac{1}{4} = \epsilon
\end{aligned}
$$

因此, 级数 $\sum\limits_{n = 1}^{\infty}\dfrac{x^2}{(1 + x^2)^n}$ 在 $(-\infty, +\infty)$ 上非一致收敛.

## 第 6 题

证明: 函数 $f(x) = \sum\limits_{n = 1}^{\infty}ne^{-nx}$ 在 $(0, +\infty)$ 上连续, 进一步证明在 $(0, +\infty)$ 上可微.

**证明**

首先, $u_n(x) = ne^{-nx}$ 在 $x \in (0, +\infty)$ 上连续可导, $u'_n(x) = -n^2e^{-nx}$. 其次, $\forall \delta > 0$, $-\sum\limits_{n = 1}^{\infty}u'_n = \sum\limits_{n = 1}^{\infty}n^2e^{-nx} < \sum\limits_{n = 1}^{\infty}n^2e^{-n\delta}$, 而 $\sum\limits_{n = 1}^{\infty}n^2e^{-n\delta}$ 收敛. 所以由 Weierstrass 判别法知 $\sum\limits_{n=1}^{\infty}u'_n(x)$ 在 $(\delta, +\infty)$ 上一致收敛. 由于 $\delta$ 可以任意小, 故 $\sum\limits_{n=1}^{\infty}u'_n(x)$ 在 $x \in (0, +\infty)$ 上一致收敛. 最后, $\exists x = x_0 = 1$ 时 $f(1) = \sum\limits_{n = 1}^{\infty}\dfrac{n}{e^n}$ 收敛. 因此, 函数 $f(x)$ 在 $(0, +\infty)$ 上连续, $f(x) = \sum\limits_{n = 1}^{\infty}ne^{-nx}$ 在 $(0, +\infty)$ 在 $(0, +\infty)$ 上可微.
