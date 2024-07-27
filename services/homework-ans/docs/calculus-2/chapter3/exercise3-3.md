
## 第 1 题

用二重积分的几何意义求下列二重积分的值.

(1) $\iint\limits_{D}\sqrt{R^2 - x^2 - y^2}\text{d}{x}\text{d}{y}, D = \{(x, y) | x^2 + y^2 \le R^2\}$;

(2) $\iint\limits_{D}\sqrt{x^2 + y^2}\text{d}{x}\text{d}{y}, D = \{(x, y) | x^2 + y^2 \le R^2\}$;

(3) $\iint\limits_{D}\text{d}{x}\text{d}{y}, D = \{(x, y) | \left|x\right| + \left|y\right| \le 1\}$;

**解**

(1) 这个积分是半径为 $R$ 的上半球的体积, 因此 $\iint\limits_{D}\sqrt{R^2 - x^2 - y^2}\text{d}{x}\text{d}{y} = \dfrac{2}{3}\pi R^3$.

(2) 这个积分是底面半径为 $R$, 高度为 $R$ 的圆锥的体积, 因此 $\iint\limits_{D}\sqrt{x^2 + y^2}\text{d}{x}\text{d}{y} = \dfrac{2}{3}\pi R^3$.

(3) 这个积分是一个对角线长度为 $2$ 的正方形的面积, 因此 $\iint\limits_{D}\text{d}{x}\text{d}{y} = 2$.

## 第 2 题

计算下列二重积分.

(1) $\iint\limits_{I}\dfrac{x^2}{1 + y^2}\text{d}{x}\text{d}{y}, I = [0, 1]^2$;

(2) $\iint\limits_{I}x\cos(xy)\text{d}{x}\text{d}{y}, I = \left[0, \dfrac{\pi}{2}\right] \times [0, 1]$;

(3) $\iint\limits_{I}\sin(x + y)\text{d}{x}\text{d}{y}, I = [0, \pi]^2$.

**解**

(1)

$$
\begin{aligned}
    \iint\limits_{I}\dfrac{x^2}{1 + y^2}\text{d}{x}\text{d}{y} & = \int_{0}^{1}\text{d}{x}\int_{0}^{1}\dfrac{x^2}{1 + y^2}\text{d}{y} \\
    & = \int_{0}^{1}x^2\arctan y\bigg\vert_{y=0}^{y=1}\text{d}{x} \\
    & = \dfrac{\pi}{4}\int_{0}^{1}x^2\text{d}{x} \\
    & = \dfrac{\pi}{4}\cdot \dfrac{1}{3}x^3\bigg\vert_{0}^{1} \\
    & = \dfrac{\pi}{12}
\end{aligned}
$$

(2)

$$
\begin{aligned}
    \iint\limits_{I}x\cos(xy)\text{d}{x}\text{d}{y} & = \int_{0}^{\frac{\pi}{2}}\text{d}{x}\int_{0}^{1}x\cos(xy)\text{d}{y} \\
    & = \int_{0}^{\frac{\pi}{2}}\sin(xy)\bigg\vert_{y=0}^{y=1}\text{d}{x} \\
    & = \int_{0}^{\frac{\pi}{2}}\sin x\text{d}{x} \\
    & = -\cos x\bigg\vert_{0}^{\frac{\pi}{2}} \\
    & = 1
\end{aligned}
$$

(3)

$$
\begin{aligned}
    \iint\limits_{I}\sin(x + y)\text{d}{x}\text{d}{y} & = \int_{0}^{\pi}\text{d}{x}\int_{0}^{\pi}\sin(x + y)\text{d}{y} \\
    & = \int_{0}^{\pi}-\cos(x + y)\bigg\vert_{y=0}^{y=\pi}\text{d}{x} \\
    & = 0
\end{aligned}
$$

## 第 3 题

设函数 $f(x, y)$ 在 $I = [a, b] \times [c, d]$ 上有连续的二阶偏导数, 计算$\iint\limits_{I}\dfrac{\partial ^2 f}{\partial x\partial y}\text{d}{x}\text{d}{y}$.

**解**

$$
\begin{aligned}
    \iint\limits_{I}\dfrac{\partial ^2 f}{\partial x\partial y}\text{d}{x}\text{d}{y} & = \int_{a}^{b}\text{d}{x}\int_{c}^{d}\dfrac{\partial ^2 f}{\partial x\partial y}\text{d}{y} \\
    & = \int_{a}^{b}\dfrac{\partial f}{\partial x}(x, y)\bigg\vert_{y=c}^{y=d}\text{d}{x} \\
    & = \int_{a}^{b}\left(\dfrac{\partial f(x,d)}{\partial x} - \dfrac{\partial f(x, c)}{\partial x}\right)\text{d}{x} \\
    & = f(x, d)\bigg\vert_{a}^{b} - f(x, c)\bigg\vert_{a}^{b} \\
    & = f(b, d) - f(a, d) - f(b, c) + f(a, c)
\end{aligned}
$$

## 第 4 题

将二重积分 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y}$ 化为累次积分.

(1) $D = \{(x, y) | x + y \le 1, y - x \le 1, y \ge 0\}$;

(2) $D = \{(x, y) | y \ge x - 2, x \ge y^2\}$;

(3) $D = \{(x, y) | \dfrac{2}{x} \le y \le 2x, 1 \le x \le 2\}$.

**解**

(1) 由题知 $y-1\le x \le 1-y$, 因此 $y \in [0, 1]$. 故 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y} = \int_{0}^{1}\text{d}{y}\int_{y-1}^{1-y}f(x, y)\text{d}{x}$.

(2) 由题知 $y^2 \le x \le y + 2$, 因此 $y \in [-1, 2]$. 故 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y} = \int_{-1}^{2}\text{d}{y}\int_{y^2}^{y+2}f(x, y)\text{d}{x}$.

(3) 按题目所给约束, 有 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y} = \int_{1}^{2}\text{d}{x}\int_{\frac{2}{x}}^{2x}f(x, y)\text{d}{y}$.

## 第 5 题

在直角坐标系中画出下列积分的积分区域, 并交换积分次序.

(1) $\int_{-1}^{0}\text{d}{x}\int_{0}^{1 + x}f(x, y)\text{d}{y} + \int_{0}^{1}\text{d}{x}\int_{0}^{1 - x}f(x, y)\text{d}{y}$;

(2) $\int_{0}^{1}\text{d}{x}\int_{2\sqrt{1-x}}^{\sqrt{4-x^2}}f(x, y)\text{d}{y} + \int_{1}^{2}\text{d}{x}\int_{0}^{\sqrt{4-x^2}}f(x, y)\text{d}{y}$;

(3) $\int_{0}^{1}\text{d}{x}\int_{0}^{\sqrt{2x-x^2}}f(x, y)\text{d}{y} + \int_{1}^{2}\text{d}{x}\int_{0}^{2-x}f(x, y)\text{d}{y}$;

**解**

(1)

\begin{figure}[!htbp]
	\centering
    \begin{tikzpicture}
        \begin{axis}[
            axis lines=middle,
            samples=100,
            %grid,
            thick,
            domain=-1:1,
            %legend pos=outer north east,
            smooth,
            xmin=-1.1, xmax=1.1, ymin=0, ymax=1.1,
            xlabel={$x$},
            ylabel={$y$},
            mark=halfcircle*,
        mark size=2.9pt,
        ]
        \addplot+[no marks,domain=0:1]{1-x};
        \addplot+[no marks,domain=-1:0]{1+x};
        %\addplot+[sharp plot] coordinates {(3, 5.6569)};
        %\addplot+[sharp plot] coordinates {(3, -5.6569)};
        \end{axis}
    \end{tikzpicture}
    %\put(0, 0){O}
    \caption{习题3.3第5题(1)}
    %\label{}
\end{figure}

由图知 $\int_{-1}^{0}\text{d}{x}\int_{0}^{1 + x}f(x, y)\text{d}{y} + \int_{0}^{1}\text{d}{x}\int_{0}^{1 - x}f(x, y)\text{d}{y} = \int_{0}^{1}\text{d}{y}\int_{y-1}^{1-y}f(x, y)\text{d}{x}$.

(2)

\begin{figure}[!htbp]
	\centering
    \begin{tikzpicture}
        \begin{axis}[
            axis lines=middle,
            samples=100,
            %grid,
            thick,
            domain=-0.1:2.1,
            %legend pos=outer north east,
            smooth,
            xmin=0, xmax=2.1, ymin=0, ymax=2.1,
            xlabel={$x$},
            ylabel={$y$},
            mark=halfcircle*,
        mark size=2.9pt,
        ]
        \addplot+[no marks,domain=0:2]{sqrt(4-x^2)};
        \addplot+[no marks,domain=0:1]{2*sqrt(1-x)};
        %\addplot+[sharp plot] coordinates {(3, 5.6569)};
        %\addplot+[sharp plot] coordinates {(3, -5.6569)};
        \end{axis}
    \end{tikzpicture}
    %\put(0, 0){O}
    \caption{习题3.3第5题(2)}
    %\label{}
\end{figure}

由图知 $\int_{0}^{1}\text{d}{x}\int_{2\sqrt{1-x}}^{\sqrt{4-x^2}}f(x, y)\text{d}{y} + \int_{1}^{2}\text{d}{x}\int_{0}^{\sqrt{4-x^2}}f(x, y)\text{d}{y} = \int_{0}^{2}\text{d}{y}\int_{1-\frac{1}{4}y^2}^{\sqrt{4-y^2}}f(x,y)\text{d}{x}$.

(3)

\begin{figure}[!htbp]
	\centering
    \begin{tikzpicture}
        \begin{axis}[
            axis lines=middle,
            samples=100,
            %grid,
            thick,
            domain=0:2,
            %legend pos=outer north east,
            smooth,
            xmin=0, xmax=2.1, ymin=0, ymax=1.1,
            xlabel={$x$},
            ylabel={$y$},
            mark=halfcircle*,
        mark size=2.9pt,
        ]
        \addplot+[no marks,domain=1:2]{2-x};
        \addplot+[no marks,domain=0:1]{sqrt(2*x-x^2)};
        %\addplot+[sharp plot] coordinates {(3, 5.6569)};
        %\addplot+[sharp plot] coordinates {(3, -5.6569)};
        \end{axis}
    \end{tikzpicture}
    %\put(0, 0){O}
    \caption{习题3.3第5题(3)}
    %\label{}
\end{figure}

由图知 $\int_{0}^{1}\text{d}{x}\int_{0}^{\sqrt{2x-x^2}}f(x, y)\text{d}{y} + \int_{1}^{2}\text{d}{x}\int_{0}^{2-x}f(x, y)\text{d}{y} = \int_{0}^{1}\text{d}{y}\int_{1-\sqrt{1-y^2}}^{2-y}f(x,y)\text{d}{x}$.

## 第 6 题

计算下列二重积分.

(1) $\iint\limits_{D}xy^2\text{d}{x}\text{d}{y}, D = \{(x, y) | 4x \ge y^2, x \le 1\}$;

(3) $\iint\limits_{D}\left|xy\right|\text{d}{x}\text{d}{y}, D = \{(x, y) | x^2+y^2\le R^2\}$;

(5) $\iint\limits_{D}(x^2 + y^2)\text{d}{x}\text{d}{y}$, $D$ 是以 $y=x, y=x+1, y=1, y=4$ 为边的平行四边形区域;

(7) $\iint\limits_{D}\cos(x+y)\text{d}{x}\text{d}{y}, D = \{(x, y) | 0 \le x, y \le \pi\}$;

(9) $\iint\limits_{D}y^2\text{d}{x}\text{d}{y}$, $D$ 由 $\begin{cases}x=a(t-\sin t), \\ y = a(1-\cos t),\end{cases}0\le t \le 2\pi$ 以及 $x$ 轴围成;

**解**

(1)

$$
\begin{aligned}
    \iint\limits_{D}xy^2\text{d}{x}\text{d}{y} & = \int_{-2}^{2}\text{d}{y}\int_{\frac{1}{4}y^2}^{1}xy^2\text{d}{x} \\
    & = \int_{-2}^{2}\dfrac{1}{2}x^2y^2\bigg\vert_{x=\frac{1}{4}y^2}^{x=1}\text{d}{y} \\
    & = \int_{-2}^{2}\left(\dfrac{1}{2}y^2-\dfrac{1}{32}y^6\right)\text{d}{y} \\
    & = \left(\dfrac{1}{6}y^3 - \dfrac{1}{224}y^7\right)\bigg\vert_{-2}^2 \\
    & = \dfrac{32}{21}
\end{aligned}
$$

(2) 考虑 $D_{\rho, \varphi} = \{(\rho, \varphi) | 0 \le \rho \le R, 0 \le \phi \le \dfrac{\pi}{2}\}$, 则由对称性可知 $\iint\limits_{D}\left|xy\right|\text{d}{x}\text{d}{y} = 4\iint\limits_{D_{\rho,\varphi}}\rho^2\sin\varphi\cos\varphi\rho\text{d}{\rho}\text{d}{\varphi}$.

$$
\begin{aligned}
    \iint\limits_{D_{\rho,\varphi}}\rho^2\sin\varphi\cos\varphi\rho\text{d}{\rho}\text{d}{\varphi} & = \int_{0}^{\frac{\pi}{2}}\dfrac{1}{8}\sin2\varphi\rho^4\bigg\vert_{\rho = 0}^{\rho = R}\text{d}{\varphi} \\
    & = \dfrac{R^4}{8}\int_{0}^{\frac{\pi}{2}}\sin2\varphi\text{d}{\varphi} \\
    & = \dfrac{R^4}{16}(-\cos2\varphi)\bigg\vert_{0}^{\frac{\pi}{2}} \\
    & = \dfrac{R^4}{8}
\end{aligned}
$$

故 $\iint\limits_{D}\left|xy\right|\text{d}{x}\text{d}{y} = 4\iint\limits_{D_{\rho,\varphi}}\rho^2\sin\varphi\cos\varphi\rho\text{d}{\rho}\text{d}{\varphi} = \dfrac{R^4}{2}$.

(5)

$$
\begin{aligned}
    \iint\limits_{D}(x^2 + y^2)\text{d}{x}\text{d}{y} & = \int_{1}^{4}text{d}{y}\int_{y-1}^{y}(x^2+y^2)\text{d}{x} \\
    & = \int_{1}^{4}\left(\dfrac{1}{3}x^3+xy^2\right)\bigg\vert_{x=y-1}^{x=y}\text{d}{y} \\
    & = \int_{1}^{4}\left(2y^2-y + \dfrac{1}{3}\right)\text{d}{y} \\
    & = \left(\dfrac{2}{3}y^3 - \dfrac{1}{2}y^2 + \dfrac{1}{3}y\right)\bigg\vert_{1}^{4} \\
    & = \dfrac{71}{2}
\end{aligned}
$$

(7)

$$
\begin{aligned}
    \iint\limits_{D}\cos(x+y)\text{d}{x}\text{d}{y} & = \int_{0}^{\pi}\text{d}{x}\int_{0}^{\pi}\cos(x + y)\text{d}{y} \\
    & = \int_{0}^{\pi}\sin(x + y)\bigg\vert_{y=0}^{y=\pi}\text{d}{x} \\
    & = \int_{0}^{\pi}2\sin x\text{d}{x} \\
    & = 2\cos x\bigg\vert_{0}^{\pi} \\
    & = -4
\end{aligned}
$$

(9)

$$
\begin{aligned}
    \iint\limits_{D}y^2\text{d}{x}\text{d}{y} & = \int_{0}^{2\pi a}\text{d}{x}\int_{0}^{y(x)}y^2\text{d}{y} \\
    & = \int_{0}^{2\pi a}\dfrac{1}{3}{y^3}\bigg\vert_{y=0}^{y=y(x)}\text{d}{x} \\
    & = \dfrac{1}{3}\int_{0}^{2\pi a}y^3(x)\text{d}{x} \\
    & = \dfrac{1}{3}\int_{0}^{2\pi}a^3(1-\cos t)^3a(1-\cos t)\text{d}{t} \\
    & = \dfrac{16a^4}{3}\int_{0}^{2\pi}\sin^8\dfrac{t}{2}\text{d}{t} \\
    & = \dfrac{32a^4}{3}\int_{0}^{2\pi}\sin^8 u\text{d}{u} \\
    & = \dfrac{64a^4}{3}\int_{0}^{\frac{\pi}{2}}\sin^8 u\text{d}{u} \\
    & = \dfrac{64a^4}{3}\cdot\dfrac{\pi}{2}\cdot\dfrac{7!!}{8!!} \\
    & = \dfrac{35}{12}\pi a^4
\end{aligned}
$$

## 第 8 题

利用第7题结论, 计算积分

$\iint\limits_{D}x^2y^3\text{d}{x}\text{d}{y}$, $\iint\limits_{D}\sqrt{R^2-x^2}\sin y\text{d}{x}\text{d}{y}$, $D = \{(x, y) | x^2+y^2\le R^2\}$.

**解**

由于 $D$ 关于 $x$ 轴对称且关于 $y$ 轴对称, 且第一个被积函数关于 $y$ 为奇函数, 所以第一个积分式为 $0$. 同理, 第二个被积函数关于 $y$ 也为奇函数, 所以第二个积分式也为 $0$. 此即 $\iint\limits_{D}x^2y^3\text{d}{x}\text{d}{y} = \iint\limits_{D}\sqrt{R^2-x^2}\sin y\text{d}{x}\text{d}{y} = 0$.

## 第 9 题

分别求出由平面 $z=x-y,z=0$ 与圆柱面 $x^2+y^2=2x$ 所围成的两个空间几何体的体积.

**解**

记 $D_1 = \{x^2+y^2\le 2x, y \ge x\}, D_2 = \{0 \le x \le 1, 0 \le y \le x\}, D_3 = \{x^2+y^2\le 2x, x\ge1\lor y \le 0\}$. 容易验证总积分区域 $D = D_1 + D_2 + D_3$.

$$
\begin{aligned}
    \iint\limits_{D_2}z\text{d}{x}\text{d}{y} & = \int_{0}^{1}\text{d}{x}\int_{0}^{x}(x-y)\text{d}{y} \\
    & = \dfrac{1}{2}\int_{0}^{1}x^2\text{d}{x} \\
    & = \dfrac{1}{6}
\end{aligned}
$$

$$
\begin{aligned}
    \iint\limits_{D_1+D_2}z\text{d}{x}\text{d}{y} & = \int_{\frac{\pi}{2}}^{\pi}\text{d}{\theta}\int_{0}^{1}r(1+r\cos\theta-r\sin\theta)\text{d}{r} \\
    & = \int_{\frac{\pi}{2}}^{\pi}\left(\dfrac{1}{2} + \dfrac{1}{3}\cos\theta - \dfrac{1}{3}\sin\theta\right)\text{d}{\theta} \\
    & = \dfrac{\pi}{4} -\dfrac{2}{3}
\end{aligned}
$$

$$
\begin{aligned}
    \iint\limits_{D_3}z\text{d}{x}\text{d}{y} & = \int_{-\pi}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{1}r(1+r\cos\theta-r\sin\theta)\text{d}{r} \\
    & = \int_{-\pi}^{\frac{\pi}{2}}\left(\dfrac{1}{2} + \dfrac{1}{3}\cos\theta - \dfrac{1}{3}\sin\theta\right)\text{d}{\theta} \\
    & = \dfrac{2}{3} + \dfrac{3\pi}{4}
\end{aligned}
$$

因此 $V_1 = \int\limits_{D_1}z\text{d}{x}\text{d}{y} = \int\limits_{D_1+D_2}z\text{d}{x}\text{d}{y} - \iint\limits_{D_2}z\text{d}{x}\text{d}{y} = \dfrac{5}{6} - \dfrac{\pi}{4}, V_2 = \int\limits_{D_2+D_3}z\text{d}{x}\text{d}{y} = \int\limits_{D_2}z\text{d}{x}\text{d}{y} + \iint\limits_{D_3}z\text{d}{x}\text{d}{y} = \dfrac{5}{6} + \dfrac{3\pi}{4}$.

## 第 10 题

求由旋转抛物面 $z = x^2+y^2$, 柱面 $y=x^2$ 及平面 $y=1,z=0$ 围成的空间几何体的体积.

**解**

体积为

$$
\begin{aligned}
    V & = \int_{-1}^{1}\text{d}{x}\int_{x^2}^{1}(x^2+y^2)\text{d}{y} \\
    & = \int_{-1}^{1}\left(\dfrac{1}{3} + x^2 - x^4 - \dfrac{1}{3}x^6\right)\text{d}{x} \\
    & = \dfrac{88}{105}
\end{aligned}
$$

## 第 11 题

画出下列积分区域的图形, 并将二重积分 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y}$ 化为极坐标下的累次积分.

(1) $D = \{(x, y) | x^2 + y^2 \le 1, x^2 + (y-1)^2 \le 1\}$;

(2) $D = \{(x, y) | x^2 + (y-a)^2 \le a^2, (x - a)^2 + y^2 \le a^2\}$.

**解**

(1) 由图知 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y} = \int_{0}^{\frac{\pi}{6}}\text{d}{\theta}\int_{0}^{2\sin\theta}f(r\cos\theta, r\sin\theta)r\text{d}{r} + \int_{\frac{\pi}{6}}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{2}f(r\cos\theta, r\sin\theta)r\text{d}{r}$.

\begin{figure}[!htbp]
	\centering
    \begin{tikzpicture}
        \begin{axis}[
            axis lines=middle,
            samples=100,
            %grid,
            thick,
            domain=-0.1:1.1,
            %legend pos=outer north east,
            smooth,
            xmin=0, xmax=1.1, ymin=0, ymax=1.1,
            xlabel={$x$},
            ylabel={$y$},
            mark=halfcircle*,
        mark size=2.9pt,
        ]
        \addplot+[no marks,domain=0:sqrt(3)/2]{sqrt(1-x^2)};
        \addplot+[no marks,domain=0:sqrt(3)/2]{1-sqrt(1-x^2)};
        %\addplot+[sharp plot] coordinates {(3, 5.6569)};
        %\addplot+[sharp plot] coordinates {(3, -5.6569)};
        \end{axis}
    \end{tikzpicture}
    %\put(0, 0){O}
    \caption{习题3.3第11题(1)}
    %\label{}
\end{figure}

(2) 由图知 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y} = \int_{0}^{\frac{\pi}{4}}\text{d}{\theta}\int_{0}^{2a\sin\theta}f(r\cos\theta, r\sin\theta)r\text{d}{r} + \int_{\frac{\pi}{4}}^{\frac{\pi}{2}}\text{d}{\theta}\int_{0}^{2\cos\theta}f(r\cos\theta, r\sin\theta)r\text{d}{r}$.

\begin{figure}[!htbp]
	\centering
    \begin{tikzpicture}
        \begin{axis}[
            axis lines=middle,
            samples=100,
            %grid,
            thick,
            domain=-0.1:1.1,
            %legend pos=outer north east,
            smooth,
            xmin=0, xmax=1.1, ymin=0, ymax=1.1,
            xlabel={$x$},
            ylabel={$y$},
            mark=halfcircle*,
        mark size=2.9pt,
        ]
        \addplot+[no marks,domain=0:1]{1-sqrt(1-x^2)};
        \addplot+[no marks,domain=0:1]{sqrt(1-(x-1)^2)};
        %\addplot+[sharp plot] coordinates {(3, 5.6569)};
        %\addplot+[sharp plot] coordinates {(3, -5.6569)};
        \end{axis}
    \end{tikzpicture}
    %\put(0, 0){O}
    \caption{习题3.3第11题(2), 此时取 a=1}
    %\label{}
\end{figure}

## 第 12 题

计算下列二重积分.

(1) $\iint\limits_{D}(x^2 + y^2)\text{d}{x}\text{d}{y}, D = \{(x, y) | 2x \le x^2 + y^2 \le 4x\}$;

(3) $\iint\limits_{D}(x+y)\text{d}{x}\text{d}{y}$, $D$ 是由 $x^2+y^2=x+y$ 围成的平面区域;

(5) $\iint\limits_{D}\arctan\dfrac{y}{x}\text{d}{x}\text{d}{y}, D = \{(x, y) | x^2 + y^2 \le 1, x \le 0, y \le 0\}$;

**解**

(1) 代换 $x = r\cos\theta, y = r\sin\theta$, 则区域变为 $D_{r, \theta} = \{2\cos\theta \le r \le 4\cos\theta, \theta \in [0, \pi]\}$. 则

$$
\begin{aligned}
    \iint\limits_{D}(x^2 + y^2)\text{d}{x}\text{d}{y} & = \iint\limits_{D_{r,\theta}}r^2\cdot r\text{d}{r}\text{d}{\theta} \\
    & = \int_{0}^{\pi}\text{d}{\theta}\int_{2\cos\theta}^{4\cos\theta}r^3\text{d}{r} \\
    & = \int_{0}^{\pi}60\cos^4\theta\text{d}{\theta} \\
    & = 120 \int_{0}^{\frac{\pi}{2}}\cos^4\theta\text{d}{\theta} \\
    & = 120\cdot\dfrac{\pi}{2}\cdot\dfrac{3\cdot 1}{4\cdot 2} \\
    & = \dfrac{45}{2}\pi
\end{aligned}
$$

(3) 做坐标变换 $\begin{cases}x = r\cos\theta, \\ y = r\sin\theta,\end{cases}$ 则有

$$
\begin{aligned}
    \iint\limits_{D}(x+y)\text{d}{x}\text{d}{y} & = \int_{-\frac{\pi}{4}}^{\frac{3\pi}{4}}\int_{0}^{\sin\theta + \cos\theta}r^2(\sin\theta + \cos\theta)\text{d}{r} \\
    & = \dfrac{1}{3}\int_{-\frac{\pi}{4}}^{\frac{3\pi}{4}}(\sin\theta + \cos\theta)^4\text{d}{\theta} \\
    & = \dfrac{1}{3}\int_{-\frac{\pi}{4}}^{\frac{3\pi}{4}}\left(\dfrac{3-\cos4\theta}{2} + 2\sin2\theta\right)\text{d}{\theta} \\
    & = \dfrac{1}{3}\cdot\dfrac{3\pi}{2} \\
    & = \dfrac{\pi}{2}
\end{aligned}
$$

(5) 做坐标变换 $\begin{cases}x = r\cos\theta, \\ y = r\sin\theta,\end{cases}$ 则有

$$
\begin{aligned}
    \iint\limits_{D}\arctan\dfrac{y}{x}\text{d}{x}\text{d}{y} & = \int_{0}^{1}r\text{d}{r}\int_{0}^{\frac{\pi}{2}}\theta\text{d}{\theta} \\
    & = \dfrac{1}{2}\cdot\dfrac{\pi^2}{8} \\
    & = \dfrac{\pi^2}{16}
\end{aligned}
$$

## 第 13 题

求下列曲线所围图形的面积.

(1) 双纽线 $(x^2 + y^2)^2 = 2a^2(x^2-y^2)$ 与圆 $x^2 + y^2 = a^2$ 所围图形 (圆外部分) 的面积 $(a > 0)$;

(2) 心脏线 $r = a(1 + \cos\theta)$ 与圆 $x^2 + y^2 = \sqrt{3}ay$ 所围图形 (心脏线内部) 的面积 $(a > 0)$.

**解**

(1) 考虑 $D = \{a \le \rho \le a\sqrt{2\cos 2\theta}, -\dfrac{\pi}{6} \le \theta \le \dfrac{\pi}{6} \lor \dfrac{5\pi}{6} \le \theta \le \dfrac{7\pi}{6}\}$. 则面积

$$
\begin{aligned}
    S & = \iint\limits_{D}\rho\text{d}{\rho}\text{d}{\theta} \\
    & = \int_{-\frac{\pi}{6}}^{\frac{\pi}{6}}\text{d}{\theta}\int_{a}^{a\sqrt{2\cos2\theta}}\rho \text{d}{\rho}\text{d}{\theta} + \int_{\frac{5\pi}{6}}^{\frac{7\pi}{6}}\text{d}{\theta}\int_{a}^{a\sqrt{2\cos2\theta}}\rho \text{d}{\rho}\text{d}{\theta} \\
    & = \left(\sqrt{3} - \dfrac{\pi}{3}\right)a^2
\end{aligned}
$$

(2) 考虑 $D = \{0 \le \rho \le \sqrt{3}a\sin\theta, 0 \le \theta \le \dfrac{\pi}{3}\} \bigcup \{0 \le \rho \le a(1 + \cos\theta), \dfrac{\pi}{3} \le \theta \le \pi\}$. 则面积

$$
\begin{aligned}
    S & = \iint\limits_{D}\rho\text{d}{\rho}\text{d}{\theta} \\
    & = \int_{0}^{\frac{\pi}{3}}\text{d}{\theta}\int_{0}^{\sqrt{3}a\sin\theta}\rho \text{d}{\rho}\text{d}{\theta} + \int_{\frac{\pi}{3}}^{\pi}\text{d}{\theta}\int_{0}^{a(1+\cos\theta)}\rho \text{d}{\rho}\text{d}{\theta} \\
    & = \dfrac{3\pi - 3\sqrt{3}}{4}a^2
\end{aligned}
$$

## 第 14 题

通过恰当的变量代换, 计算下列二重积分.

(1) $\iint\limits_{D}x^2y^2\text{d}{x}\text{d}{y}$, $D$ 是由 $xy = 2, xy = 4, y=x, y=3x$ 在第一象限所围成的平面区域;

(2) $\iint\limits_{D}(x^2 + y^2)\text{d}{x}\text{d}{y}$, $D$ 是由 $xy=1, xy=2, x^2-y^2=1, x^2-y^2=2$ 所围成的平面区域;

**解**

(1) 做坐标变换 $(u, v) = (xy, \dfrac{y}{x})$, 则 $\dfrac{D(x, y)}{D(u, v)} = \dfrac{1}{4v}$. 因此

$$
\begin{aligned}
    \iint\limits_{D}x^2y^2\text{d}{x}\text{d}{y} & = \int_{1}^{3}\text{d}{v}\int_{2}^{4}\dfrac{D(x, y)}{D(u, v)}u^2\text{d}{u} \\
    & = \int_{1}^{3}\dfrac{1}{4v}\text{d}{v}\int_{2}^{4}u^2\text{d}{u} \\
    & = \dfrac{\ln3}{4}\cdot\dfrac{56}{3} \\
    & = \dfrac{28\ln3}{3}
\end{aligned}
$$

(2) 做坐标变换 $(u, v) = (x^2-y^2, xy)$, 则 $\dfrac{D(x, y)}{D(u, v)} = \dfrac{1}{2\sqrt{u^2+4v^2}}$. 因此

$$
\begin{aligned}
    \iint\limits_{D}(x^2 + y^2)\text{d}{x}\text{d}{y} & = \int_{1}^{2}\text{d}{v}\int_{1}^{2}\dfrac{D(x, y)}{D(u, v)}\sqrt{u^2+4v^2}\text{d}{u} \\
    & = \dfrac{1}{2}\int_{1}^{2}\text{d}{v}\int_{1}^{2}\text{d}{u} \\
    & = \dfrac{1}{2}
\end{aligned}
$$

## 第 15 题

求下列图形围成区域的面积.

(1) $(a_1x + b_1y + c_1)^2 + (a_2x + b_2y + c_2)^2 = 1$, 其中 $a_1b_2 \neq a_2b_1$;

(2) $\sqrt{x} + \sqrt{y} = \sqrt{a}$ 与 $x = 0, y = 0$.

**解**

(1) 做坐标变换 $(u, v) = (a_1x + b_1y + c_1, a_2x, b_2y, c_2)$, 则 $\dfrac{D(x, y)}{D(u, v)} = \dfrac{1}{a_1b_2 - a_2b_1}$. 因此 $S = \iint\limits_{u^2 + v^2 \le 1}\left|\dfrac{D(x, y)}{D(u, v)}\right|\text{d}{u}\text{d}{v} = \dfrac{\pi}{\left|a_1b_2 - a_2b_1\right|}$.

(2) 做坐标变换 $(u, v) = (\sqrt{x}, \sqrt{y})$, 则 $\dfrac{D(x, y)}{D(u, v)} = 4uv$. 因此 $S = \iint\limits_{u+v\le \sqrt{a}, u,v\ge 0}\left|\dfrac{D(x, y)}{D(u, v)}\right|\text{d}{u}\text{d}{v} = \iint\limits_{u+v\le\sqrt{a}, u, v\ge 0}4uv\text{d}{u}\text{d}{v} = \dfrac{1}{6}a^2$.

## 第 16 题

设函数 $f(t)$ 连续, 证明:

(1) $\iint\limits_{\left|x\right| + \left|y\right| \le 1}f(x+y)\text{d}{x}\text{d}{y} = \int_{-1}^{1}f(t)\text{d}{t}$.

(2) $\iint\limits_{D}f(xy)\text{d}{x}\text{d}{y} = \ln 2\int_{1}^{2}f(t)\text{d}{t}$, $D$ 是由 $xy = 1, xy = 2, y = x, y = 4x$ 所围成的第一象限的区域.

**证明**

(1) 做坐标变换 $(u, v) = (x+y, x-y)$, 则 $\dfrac{D(x, y)}{D(u, v)} = -\dfrac{1}{2}$. 因此

$$
\begin{aligned}
    \iint\limits_{\left|x\right| + \left|y\right| \le 1}f(x+y)\text{d}{x}\text{d}{y} & = \int_{-1}^{1}\text{d}{v}\int_{-1}^{1}\left|\dfrac{D(x, y)}{D(u, v)}\right|f(u)\text{d}{u} \\
    & = \int_{-1}^{1}f(u)\text{d}{u} \\
    & = \int_{-1}^{1}f(t)\text{d}{t}
\end{aligned}
$$

(2) 做坐标变换 $(u, v) = (xy, \dfrac{y}{x})$, 则 $\dfrac{D(x, y)}{D(u, v)} = \dfrac{1}{4v}$. 因此

$$
\begin{aligned}
    \iint\limits_{D}f(xy)\text{d}{x}\text{d}{y} & = \int_{1}^{4}\dfrac{D(x, y)}{D(u, v)}\text{d}{v}\int_{1}^{2}f(u)\text{d}{u} \\
    & = \int_{1}^{4}\dfrac{1}{4v}\text{d}{v}\int_{1}^{2}f(u)\text{d}{u} \\
    & = \ln2\int_{1}^{2}f(t)\text{d}{t}
\end{aligned}
$$

## 第 17 题

设函数 $f(t)$ 连续, $f(t) > 0$, 求积分 $\iint\limits_{x^2 + y^2 \le R^2}\dfrac{af(x) + bf(y)}{f(x) + f(y)}\text{d}{x}\text{d}{y}$.

**解**

由对称性, 记 $S = \iint\limits_{x^2 + y^2 \le R^2}\dfrac{f(x)}{f(x) + f(y)}\text{d}{x}\text{d}{y} = \iint\limits_{x^2 + y^2 \le R^2}\dfrac{f(y)}{f(x) + f(y)}\text{d}{x}\text{d}{y}$, 则 $2S = \iint\limits_{x^2 + y^2 \le R^2}\dfrac{f(x) + f(y)}{f(x) + f(y)}\text{d}{x}\text{d}{y} = \pi R^2$. 故 $S = \dfrac{1}{2}\pi R^2$. 因此 $\iint\limits_{x^2 + y^2 \le R^2}\dfrac{af(x) + bf(y)}{f(x) + f(y)}\text{d}{x}\text{d}{y} = aS + bS = \dfrac{a+b}{2}\pi R^2$.

## 第 18 题

设函数 $f(t, s)$ 连续, 求 $F(x) = \int_{0}^{x}\int_{t^2}^{x^2}f(t, s)\text{d}{s}\text{d}{t}$ 的导函数.

**解**

记 $g(x, t) = \int_{t^2}^{x^2}f(t, s)\text{d}{s}$, 则 $F(x) = \int_{0}^{x}g(x, t)\text{d}{t}$. 

$$
\begin{aligned}
    F'(x) & = \int_{0}^{x}\dfrac{\partial g}{\partial x}(x, t)\text{d}{t} + g(x, x) \\
    & = \int_{0}^{x} f(t, x^2)\cdot 2x\text{d}{t} + \int_{x^2}^{x^2}f(x, s)\text{d}{s} \\
    & = 2x\int_{0}^{x}f(t, x^2)\text{d}{t}
\end{aligned}
$$
