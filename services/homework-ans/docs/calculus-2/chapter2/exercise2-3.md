
## 第 1 题

计算下列积分.

(1) $\int_{0}^{+\infty}\dfrac{e^{-ax^2}-e^{-bx^2}}{x}\text{d}{x}(a, b > 0)$;

(2) $\int_{0}^{+\infty}xe^{-ax^2}\sin yx \text{d}{x}(a > 0)$;

(3) $\int_{0}^{+\infty}\dfrac{\cos ax - \cos bx}{x^2}\text{d}{x}(a, b > 0)$(提示: 将 $\cos ax - \cos bx$ 写成积分的形式, 并且 $\int_{0}^{+\infty}\dfrac{\sin x}{x} = \dfrac{\pi}{2}$).

**解**

(1) 因为 $\dfrac{e^{-ax^2}-e^{-bx^2}}{x} = x\int_a^be^{-x^2y}\text{d}{y}$, 故

$$
\begin{aligned}
    \int_{0}^{+\infty}\dfrac{e^{-ax^2}-e^{-bx^2}}{x}\text{d}{x} & = \int_{0}^{+\infty}x\text{d}{x}\int_a^be^{-x^2y}\text{d}{y} \\
    & = \dfrac{1}{2}\int_{0}^{+\infty}\text{d}{x^2}\int_a^be^{-x^2y}\text{d}{y} \\
    & = \dfrac{1}{2}\text{d}{\theta}\int_a^be^{-\theta y}\text{d}{y} \\
    & = \dfrac{1}{2}\int_a^b\dfrac{1}{y}\text{d}{y} \\
    & = \dfrac{1}{2}\ln\dfrac{b}{a}.
\end{aligned}
$$

(2)

$$
    \begin{aligned}
        \int_{0}^{+\infty}xe^{-ax^2}\sin yx \text{d}{x} & = -\dfrac{1}{2a}\left(e^{-ax^2}\sin(yx)\bigg\vert^{+\infty}_{0} - y\int_{0}^{+\infty}e^{-ax^2}\cos(yx)\text{d}{x}\right) \\
        & = \dfrac{y}{2a}\int_{0}^{+\infty}e^{-ax^2}\cos(yx)\text{d}{x} \\
        & = \dfrac{y}{4a}\sqrt{\dfrac{\pi}{a}}e^{-\frac{y^2}{4a}}
    \end{aligned}
$$

(3) 由于 $\cos ax - \cos bx = x\int_a^b\sin yx\text{d}{y}$, 故

$$
\begin{aligned}
    \int_{0}^{+\infty}\dfrac{\cos ax - \cos bx}{x^2}\text{d}{x} & = \int_0^{+\infty}\dfrac{1}{x}\text{d}{x}\int_a^b\sin(yx)\text{d}{y} \\
    & = \int_{0}^{+\infty}\dfrac{\sin yx}{yx}\text{d}{(yx)}\int_a^b\text{d}{y} \\
    & = \dfrac{\pi}{2}(b - a).
\end{aligned}
$$

## 第 2 题

利用对参变量的求导, 求下列积分.

(1) $\int_{0}^{+\infty}e^{-tx^2}x^{2n}\text{d}{x}(t > 0)$(提示: 利用 $\int_{0}^{+\infty}e^{-x^2}\text{d}{x} = \dfrac{\sqrt{\pi}}{2}$);

(2) $\int_{0}^{+\infty}\dfrac{\text{d}{x}}{(y + x^2)^{n+1}} = \dfrac{\pi(2n - 1)!!}{2(2n)!!}y^{-\left(n + \frac{1}{2}\right)}(y > 0)$(提示: 利用 $\int_{0}^{+\infty}\dfrac{\text{d}{x}}{y + x^2}$ 的值).

**解**

(1) 考虑 $I(t) = \int_{0}^{+\infty}e^{-tx^2}\text{d}{x}$, 则其 $n$ 阶导数为 $I^{(n)}(t) = \int_{0}^{+\infty}e^{-tx^2}x^{2n}\text{d}{x}$ 即为所求. 注意到

$$
\begin{aligned}
    I(t) & = \int_{0}^{+\infty}e^{-tx^2}\text{d}{x} \\
    & = \dfrac{1}{\sqrt{t}}\int_{0}^{+\infty}e^{-(\sqrt{t}x)^2}\text{d}{(\sqrt{t}x)} \\
    & = \dfrac{\sqrt{\pi}}{2}\cdot t^{-\frac{1}{2}}
\end{aligned}
$$

因此有 $\int_{0}^{+\infty}e^{-tx^2}x^{2n}\text{d}{x} = I^{(n)}(t) = \dfrac{\sqrt{\pi}}{2}\cdot\dfrac{(2n-1)!!}{2^n}(-1)^nt^{-\left(n+\frac{1}{2}\right)}$.

(2) 考虑 $I(y) = \int_{0}^{+\infty}\dfrac{\text{d}{x}}{y + x^2}$, 则 $\dfrac{(-1)^n}{n!}I^{(n)}(y) = \int_{0}^{+\infty}\dfrac{\text{d}{x}}{(y + x^2)^{n+1}}$ 即为所求. 由于

$$
\begin{aligned}
    I(y) & = \int_{0}^{+\infty}\dfrac{\text{d}{x}}{y + x^2} \\
    & = \int_{0}^{+\infty}\dfrac{\sqrt{y}\text{d}{\left(\dfrac{x}{\sqrt{y}}\right)}}{y\left(1 + \left(\dfrac{x}{\sqrt{y}}\right)^2\right)} \\
    & = y^{-\frac{1}{2}}\arctan\left(\dfrac{x}{\sqrt{y}}\right)\bigg\vert_{x = 0}^{x = +\infty} \\
    & = \dfrac{\pi}{2}y^{-\frac{1}{2}}
\end{aligned}
$$

因此 $I^{(n)}(y) = \dfrac{\pi}{2}\cdot\dfrac{(2n-1)!!}{2^n}(-1)^ny^{-\left(n + \frac{1}{2}\right)}$. 故 $\int_{0}^{+\infty}\dfrac{\text{d}{x}}{(y + x^2)^{n+1}} = \dfrac{(-1)^n}{n!}I^{(n)}(y) = \dfrac{\pi(2n - 1)!!}{2(2n)!!}y^{-\left(n + \frac{1}{2}\right)}$.
