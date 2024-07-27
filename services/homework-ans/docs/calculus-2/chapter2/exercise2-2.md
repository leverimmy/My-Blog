
## 第 1 题

求下列极限:

(1) $\lim\limits_{a \to 0}\int_{-1}^{1}\sqrt{x^2 + a^2}\text{d}{x}$;

(2) $\lim\limits_{a \to 0}\int_{0}^{3}x^2\cos ax \text{d}{x}$.

**解**

(1) $\lim\limits_{a \to 0}\int_{-1}^{1}\sqrt{x^2 + a^2}\text{d}{x} = \int_{-1}^{1}\lim\limits_{a \to 0}\sqrt{x^2 + a^2}\text{d}{x} = \int_{-1}^{1}\left|x\right|\text{d}{x} = 1$.

(2) $\lim\limits_{a \to 0}\int_{0}^{3}x^2\cos ax \text{d}{x} = \int_{0}^{3}\lim\limits_{a \to 0}x^2\cos ax \text{d}{x} = \int_{0}^{3}x^2\text{d}{x} = \dfrac{1}{3}x^3\bigg\vert_0^3 = 9$.

## 第 2 题

求下列函数的导函数.

(1) $F(x) = \int_{x}^{x^2}e^{-xy^2}\text{d}{y}$;

(3) $F(x) = \int_{0}^{t}\dfrac{\ln(1 + tx)}{x}\text{d}{x}$;

**解**

(1) $F'(x) = \int_{x}^{x^2}-y^2e^{-xy^2}\text{d}{y} + e^{-x^5}\cdot 2x - e^{-x^3} = 2xe^{-x^5} - e^{-x^3} - \int_{x}^{x^2}y^2e^{-xy^2}\text{d}{y}$.

(3) $F'(t) = \int_{0}^t\dfrac{1}{1 + tx}\text{d}{x} + \dfrac{\ln (1 + t^2)}{t}$.

## 第 3 题

设 $f(x)$ 可微, 且 $F(x) = \int_{0}^{x}(x + y)f(y)\text{d}{y}$, 求 $F''(x)$.

**解**

由于 $F'(x) = \int_{0}^xf(y)\text{d}{y} + 2xf(x)$, 所以 $F''(x) = f(x) + 2f(x) + 2xf'(x) = 3f(x) + 2xf'(x)$.

## 第 4 题

证明: $u(x, t) = \dfrac{1}{2}(\varphi(x + at) + \varphi(x - at)) + \dfrac{1}{2a}\int_{x - at}^{x + at}\psi(s)\text{d}{s}$ 是弦振动方程 $\dfrac{\partial^2u}{\partial t^2} = a^2 \dfrac{\partial^2u}{\partial x^2}$ 的解, 其中 $\varphi \in C^2, \psi \in C^1$.

**证明**

由题知

$$
\begin{aligned}
    \dfrac{\partial u}{\partial t} &= \dfrac{a}{2}[\varphi'(x + at) - \varphi'(x - at)] + \dfrac{1}{2}[\psi'(x + at) + \psi'(x - at)], \\
    \dfrac{\partial^2 u}{\partial t^2} &= \dfrac{a^2}{2}[\varphi''(x + at) + \varphi''(x - at)] + \dfrac{a}{2}[\psi''(x + at) - \psi''(x - at)].
\end{aligned}
$$

且有

$$
\begin{aligned}
    \dfrac{\partial u}{\partial x} &= \dfrac{1}{2}[\varphi'(x + at) + \varphi'(x - at)] + \dfrac{1}{2a}[\psi'(x + at) - \psi'(x - at)], \\
    \dfrac{\partial^2 u}{\partial x^2} &= \dfrac{1}{2}[\varphi''(x + at) + \varphi''(x - at)] + \dfrac{1}{2a}[\psi''(x + at) - \psi''(x - at)].
\end{aligned}
$$

代入则可验证 $\dfrac{\partial^2u}{\partial t^2} = a^2 \dfrac{\partial^2u}{\partial x^2}$.

## 第 5 题

计算下列积分.

(1) $\int_{0}^{1}\dfrac{\arctan x}{x}\dfrac{1}{\sqrt{1 - x^2}}\text{d}{x}$ (提示: $\dfrac{\arctan x}{x} = \int_{0}^{1}\dfrac{1}{1 + x^2y^2}\text{d}{y}$);

**解**

$$
\begin{aligned}
    \int_{0}^{1}\dfrac{\arctan x}{x}\dfrac{1}{\sqrt{1 - x^2}}\text{d}{x} &= \int_{0}^{1}\int_{0}^1\dfrac{1}{1 + x^2y^2}\text{d}{y}\dfrac{1}{\sqrt{1 - x^2}}\text{d}{x} \\
    & = \int_{0}^{\frac{\pi}{2}}\text{d}{\sin\theta}\int_{0}^1\dfrac{1}{1 + \sin^2\theta y^2}\text{d}{y}\dfrac{1}{\sqrt{1 - \sin^2\theta}} \\
    & = \int_{0}^{\frac{\pi}{2}}\text{d}{\tan \theta}\int_{0}^1\dfrac{1}{1 + (y^2 + 1)\tan^2\theta}\text{d}{y} \\
    & = \int_0^1\text{d}{y}\int_{0}^{+\infty}\dfrac{\text{d}{\theta}}{1 + (y^2 + 1)\theta^2} \\
    & = \int_0^{1}\text{d}{y}\dfrac{1}{y^2 + 1}\arctan(\theta\sqrt{y^2 + 1})\bigg\vert_{\theta = 0}^{\theta = +\infty} \\
    & = \int_0^1\dfrac{\pi}{2}\dfrac{1}{\sqrt{y^2 + 1}}\text{d}{y} \\
    & = \dfrac{\pi}{2}\ln(y + \sqrt{y^2 + 1})\big\vert_{0}^1 \\
    & = \dfrac{\pi}{2}\ln(\sqrt{2} + 1).
\end{aligned}
$$
