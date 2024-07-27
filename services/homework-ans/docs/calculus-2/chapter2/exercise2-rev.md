
## 第 1 题

证明: $f(x, y) = \sin (xy)$ 在 $\mathbb{R}^2$ 上不一致连续.

**证明**

取点列 $\{X_n\} = \left(\sqrt{n\pi}, \sqrt{n\pi}\right), \{Y_n\} = \left(\sqrt{n\pi + \dfrac{\pi}{2}}, \sqrt{n\pi + \dfrac{\pi}{2}}\right)$. 对于足够大的 $n$, $\forall \delta > 0$, 都能有 $\|X_n - Y_n\| = \sqrt{2}\left(\sqrt{n\pi + \dfrac{\pi}{2}} - \sqrt{n\pi}\right)< \delta$, 但取 $\epsilon_0 = 1$, 有

$$
    \begin{aligned}
        \left|f(X_n) - f(Y_n)\right| & = \left|\sin(n\pi) - \sin\left(n\pi + \dfrac{\pi}{2}\right)\right| \\
        & = 1
        \ge \epsilon_0
    \end{aligned}
$$

因此 $f(x, y) = \sin(xy)$ 在 $\mathbb{R}^2$ 上不一致连续.

## 第 4 题

利用对参变量的微分, 求下列积分.

(1) $\int_{0}^{\frac{\pi}{2}}\ln(a^2\sin^2x + b^2\cos^2x)\text{d}{x}$;

(2) $\int_{0}^{\frac{\pi}{2}}\dfrac{\arctan(a\tan x)}{\tan x}\text{d}{x}$.

**解**

(1) 不妨设 $a, b > 0$. 记 $I(b) = \int_{0}^{\frac{\pi}{2}}\ln(a^2\sin^2x + b^2\cos^2x)\text{d}{x}$ 为关于 $b$ 的函数, $a$ 为常数. 则

$$
\begin{aligned}
    I'(b) & = \int_{0}^{\frac{\pi}{2}}\dfrac{2b\cos^2x}{a^2\sin^2 x + b^2\cos^2 x}\text{d}{x} \\
    & = \int_{0}^{\frac{\pi}{2}}\dfrac{2b}{a^2\tan^2x + b^2}\text{d}{x} \\
    & = \int_{0}^{+\infty}\dfrac{2b}{a^2u^2 + b^2}\text{d}{\arctan u} \\
    & = \int_{0}^{+\infty}\dfrac{2b}{(a^2u^2 + b^2)(1 + u^2)}\text{d}{u} \\
    & = 2b\cdot \dfrac{\arctan u - \dfrac{a}{b}\arctan\left(\dfrac{a}{b}u\right)}{b^2 - a^2} \bigg\vert_{u=0}^{u=+\infty} \\
    & = \dfrac{\pi}{a + b}
\end{aligned}
$$

因此 $I(b) = \pi\ln(a + b) + C$, 其中 $C$ 为某一待定常数. 由于 $I(a) = \dfrac{\pi}{2}\ln(a^2) = \pi\ln a$, 所以 $C = \pi\ln a - \pi\ln(a + a) = -\pi\ln 2$. 故 $\int_{0}^{\frac{\pi}{2}}\ln(a^2\sin^2x + b^2\cos^2x)\text{d}{x} = I(b) = \pi\ln\left(\dfrac{a + b}{2}\right)$.

(2) 设 $I(a) = \int_{0}^{\frac{\pi}{2}}\dfrac{\arctan(a\tan x)}{\tan x}\text{d}{x}$. 则

$$
\begin{aligned}
    I'(a) & = \int_{0}^{\frac{\pi}{2}}\dfrac{\tan x}{1 + (a\tan x)^2}\cdot\dfrac{1}{\tan x}\text{d}{x} \\
    & = \int_{0}^{\frac{\pi}{2}}\dfrac{1}{1 + (a\tan x)^2}\text{d}{x} \\
    & = \int_{0}^{+\infty}\dfrac{1}{1 + (ax)^2}\cdot\dfrac{1}{1 + x^2}\text{d}{x} \\
    & = \dfrac{1}{1 - a^2}\int_{0}^{+\infty}\left[\dfrac{1}{1 + x^2}-\dfrac{a^2}{1 + (ax)^2}\right]\text{d}{x} \\
    & = \dfrac{1}{1 - a^2}(\arctan x - a\arctan (ax))\bigg\vert_{x=0}^{x=+\infty} \\
    & = \dfrac{\pi}{2(a + 1)}
\end{aligned}
$$

因此 $I(a) = \dfrac{\pi}{2}\ln(a + 1) + C$. 由于 $I(0) = 0$, 所以 $C = 0$. 故 $\int_{0}^{\frac{\pi}{2}}\dfrac{\arctan(a\tan x)}{\tan x}\text{d}{x} = I(a) = \dfrac{\pi}{2}\ln(a + 1)$.

## 第 6 题

计算下列积分的值.

(1) $\int_{0}^{+\infty}\dfrac{\arctan xy}{x(1 + x^2)}\text{d}{x}(y \ge 0)$;

**解**

(1) 设 $I(y) = \int_{0}^{+\infty}\dfrac{\arctan xy}{x(1 + x^2)}\text{d}{x}$, 则

$$
\begin{aligned}
    I'(y) & = \int_{0}^{+\infty}\dfrac{\D}{\text{d}{y}}\dfrac{\arctan xy}{x(1 + x^2)}\text{d}{x} \\
    & = \int_{0}^{+\infty}\dfrac{1}{1 + x^2}\cdot\dfrac{x}{1 + (xy)^2}\text{d}{x} \\
    & = \int_{0}^{+\infty}\dfrac{1}{(1 + x^2)(1 + x^2y^2)}\text{d}{x} \\
    & = \dfrac{1}{1 - y^2}\int_{0}^{+\infty}\left(\dfrac{1}{1 + x^2}-\dfrac{y^2}{1 + x^2y^2}\right)\text{d}{x} \\
    & = \dfrac{1}{1 - y^2}\left(\arctan(x) - y\arctan (yx)\right)\bigg\vert_{x=0}^{x=+\infty} \\
    & = \dfrac{\pi}{2(1 + y)}
\end{aligned}
$$

因此 $I(y) = \dfrac{\pi}{2}\ln(1 + y) + C$. 由 $I(0) = 0$ 知 $C = 0$. 因此 $I(y) = \dfrac{\pi}{2}\ln(1 + y)$.
