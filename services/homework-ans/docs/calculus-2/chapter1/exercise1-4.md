
## 第 1 题

求下列函数的偏导数:

(1) $z = ax^2y + bxy^2$;

(3) $z = \dfrac{x}{y} + \dfrac{y}{x}$;

(5) $z = \ln(x + \sqrt{x^2 - y^2})$;

(7) $z = \cos(1 + 2^{xy})$;

**解**

(1) $\dfrac{\partial z}{\partial x} = 2axy + by^2$, $\dfrac{\partial z}{\partial y} = ax^2 + 2bxy$.

(3) $\dfrac{\partial z}{\partial x} = \dfrac{1}{y} -\dfrac{y}{x^2}$, $\dfrac{\partial z}{\partial y} = \dfrac{1}{x} -\dfrac{x}{y^2}$.

(5) $\dfrac{\partial z}{\partial x} = \dfrac{1}{x + \sqrt{x^2 - y^2}}\cdot(1 + \dfrac{2x}{2\sqrt{x^2 - y^2}}) = \dfrac{1}{\sqrt{x^2 - y^2}}$, $\dfrac{\partial z}{\partial y} = \dfrac{1}{x + \sqrt{x^2 - y^2}}\cdot\dfrac{-2y}{2\sqrt{x^2 - y^2}} = \dfrac{y}{y^2 - x^2 - x\sqrt{x^2 - y^2}}$.

(7) $\dfrac{\partial z}{\partial x} = -\sin(1 + 2^{xy})\cdot 2^{xy}\cdot \ln(2^y) = -2^{xy}y\sin(1 + 2^{xy})\ln 2$, $\dfrac{\partial z}{\partial y} = -\sin(1 + 2^{xy})\cdot 2^{xy}\cdot \ln(2^x) = -2^{xy}x\sin(1 + 2^{xy})\ln 2$.

## 第 2 题

考察下列函数在坐标原点的可微性.

(1) $f(x, y) = \sqrt{\left|x\right|}\cos y$;

(2) $f(x, y) = \begin{cases}\dfrac{2xy}{\sqrt{x^2 + y^2}}, &x^2 + y^2 \neq 0, \\ 0, &x^2 + y^2 = 0;\end{cases}$

(3) $f(x, y) = \begin{cases}\dfrac{x^2y^2}{\left(x^2 + y^2\right)^{\frac{3}{2}}}, &x^2 + y^2 \neq 0, \\ 0, &x^2 + y^2 = 0;\end{cases}$

(4) $f(x, y) = \left|x - y\right|\phi(x, y)$, 其中 $\phi(x, y)$ 在原点的某个邻域内连续, 且 $\phi(0, 0) = 0$.

**解**

(1) 由于 $f'_x(0, 0) = \lim\limits_{\Delta x \to 0}\dfrac{f(\Delta x, 0) - f(0, 0)}{\Delta x} = \lim\limits_{\Delta x \to 0}\dfrac{\sqrt{\left|x\right|}}{\Delta x}$ 不存在, 所以该函数在原点不可微.

(2) 由于 $f'_x(0, 0) = \lim\limits_{\Delta x \to 0}\dfrac{f(\Delta x, 0) - f(0, 0)}{\Delta x} = 0, f'_y(0, 0) = \lim\limits_{\Delta y \to 0}\dfrac{f(0, \Delta y) - f(0, 0)}{\Delta y} = 0$, 所以 $\lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{f(\Delta x, \Delta y) - f'_x(0, 0)\Delta x - f'_y(0, 0)\Delta y - f(0, 0)}{\sqrt{\Delta x^2 + \Delta y^2}} = \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{f(\Delta x, \Delta y) - 0 - 0 - 0}{\sqrt{\Delta x^2 + \Delta y^2}} = \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{2\Delta x\Delta y}{\Delta x^2 + \Delta y^2}$. 由于沿着 $\Delta y = k\Delta x$ 趋于 $(0, 0)$ 时极限值为 $\dfrac{2k}{1 + k^2}$ 随着 $k$ 的变化为变化, 所以该函数在原点不可微.

(3) 由于 $f'_x(0, 0) = \lim\limits_{\Delta x \to 0}\dfrac{f(\Delta x, 0) - f(0, 0)}{\Delta x} = 0, f'_y(0, 0) = \lim\limits_{\Delta y \to 0}\dfrac{f(0, \Delta y) - f(0, 0)}{\Delta y} = 0$, 所以 $\lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{f(\Delta x, \Delta y) - f'_x(0, 0)\Delta x - f'_y(0, 0)\Delta y - f(0, 0)}{\sqrt{\Delta x^2 + \Delta y^2}} = \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{f(\Delta x, \Delta y) - 0 - 0 - 0}{\sqrt{\Delta x^2 + \Delta y^2}} = \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{\Delta x^2\Delta y^2}{(\Delta x^2 + \Delta y^2)^2}$. 由于沿着 $\Delta y = k\Delta x$ 趋于 $(0, 0)$ 时极限值为 $\dfrac{k^2}{(1 + k^2)^2}$ 随着 $k$ 的变化而变化, 所以该函数在原点不可微.

(4) 由于 $f'_x(0, 0) = \lim\limits_{\Delta x \to 0}\dfrac{f(\Delta x, 0) - f(0, 0)}{\Delta x} = \lim\limits_{\Delta x \to 0}\dfrac{\left|\Delta x\right|\phi(\Delta x, 0)}{\Delta x} = 0$, $f'_y(0, 0) = \lim\limits_{\Delta y \to 0}\dfrac{f(0, \Delta y) - f(0, 0)}{\Delta y} = \lim\limits_{\Delta y \to 0}\dfrac{\left|\Delta y\right|\phi(0, \Delta y)}{\Delta y} = 0$,

故

$$
\begin{aligned}
    \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{f(\Delta x, \Delta y) - f'_x(0, 0)\Delta x - f'_y(0, 0)\Delta y - f(0, 0)}{\sqrt{\Delta x^2 + \Delta y^2}} & = \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{\left|x - y\right|\phi(\Delta x, \Delta y)}{\sqrt{\Delta x^2 + \Delta y^2}} \\
    & \le \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{(\left|x\right| + \left|y\right|)\phi(\Delta x, \Delta y)}{\sqrt{\Delta x^2 + \Delta y^2}} \\
    & \le \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\dfrac{\sqrt{2(x^2 + y^2)}\phi(\Delta x, \Delta y)}{\sqrt{\Delta x^2 + \Delta y^2}} \\
    & = \lim\limits_{(\Delta x, \Delta y)\to (0, 0)}\sqrt{2}\phi(\Delta x, \Delta y)\to 0
\end{aligned}
$$

所以该函数在原点可微.

## 第 4 题

求下列函数的全微分:

(1) $u = \sin\dfrac{1}{x^2 + y^2 + z^2}$, 在点 $\left(\dfrac{\sqrt{2}}{2}, \dfrac{1}{2}, -\dfrac{1}{2}\right)$;

(3) $z = (x + y)^2$;

(5) $z = \dfrac{x - y}{x + y}$;

(7) $u = \ln(1 + x^2 + y^2 + z^2)$;

**解**

(1) 记 $\mathbf{r} = \left(\dfrac{\sqrt{2}}{2}, \dfrac{1}{2}, -\dfrac{1}{2}\right)$. $\text{d}{u} = 2(x\text{d}{x} + y\text{d}{y} + z\text{d}{z})\cos\dfrac{1}{x^2 + y^2 + z^2}$. 代入得 $\text{d}{u}\big\vert_{\mathbf{r}} = (\sqrt{2}\text{d}{x} + \text{d}{y} - \text{d}{z})\cos 1$.

(3) 由于 $z = (x + y)^2 = x^2 + 2xy + y^2$, 故 $\dfrac{\partial z}{\partial x} = \dfrac{\partial z}{\partial y} = 2x + 2y$. 所以 $\text{d}{z} = 2(x + y){\text{d}{x} + \text{d}{y}}$.

(5) 由于 $\dfrac{\partial z}{\partial x} = \dfrac{(x + y) - (x - y)}{(x + y)^2} = \dfrac{2y}{(x + y)^2}$, $\dfrac{\partial z}{\partial y} = \dfrac{-(x + y) - (x - y)}{(x + y)^2} = -\dfrac{2x}{(x + y)^2}$, 故 $\text{d}{z} = \dfrac{2(y\text{d}{x} - x\text{d}{y})}{(x + y)^2}$.

(7) $\text{d}{u} = \dfrac{2x\text{d}{x} + 2y\text{d}{y} + 2z\text{d}{z}}{1 + x^2 + y^2 + z^2} = \dfrac{2(x\text{d}{x} + y\text{d}{y} + z\text{d}{z})}{1 + x^2 + y^2 + z^2}$.

## 第 7 题

设 $\dfrac{\partial f}{\partial x}(x_0, y_0)$ 存在, $\dfrac{\partial f}{\partial y}(x, y)$ 连续, 证明 $f(x, y)$ 在点 $(x_0, y_0)$ 处可微.

**证明**

考虑函数 $f$ 在点 $(x_0, y_0)$ 处的该变量 $\Delta f = f(x_0 + h, y_0 + k) - f(x_0, y_0)$. 利用一元函数的中值定理得

$$
\begin{aligned}
    \Delta f & = f(x_0 + h, y_0 + k) - f(x_0 + h, y_0) + f(x_0 + h, y_0) - f(x_0, y_0) \\
    & = f_y(x_0 + h, y_0 + \mu k)k + f(x_0 + h, y_0) - f(x_0, y_0), \quad \mu \in (0, 1) \\
    & = f(x_0 + h, y_0) - f(x_0, y_0) + f_y(x_0, y_0)k + \beta k,
\end{aligned}
$$

其中 $\beta = f_y(x_0 + h, y_0 + \mu k) - f_y(x_0, y_0)$.

由题知 $f_y(x, y)$ 连续, 因此 $\lim\limits_{(h, k)\to(0, 0)}\beta(h, k) = 0$. 由题知 $\lim\limits_{(x, y)\to(x_0, y_0)}\dfrac{f(x_0 + h, y_0) - f(x_0, y_0)}{h} = \dfrac{\partial f}{\partial x}(x_0, y_0)$ 存在, 这说明 $f(x_0 + h, y_0) - f(x_0, y_0)$ 是关于 $h$ 的一阶无穷小. 不妨记 $f(x_0 + h, y_0) - f(x_0, y_0) = \lambda h$. 故 $\Delta f = \lambda h + f_y(x_0, y_0)k + \beta k = \lambda h + f_y(x_0, y_0)k + o(\rho)$. 此即 $f$ 在点 $(x_0, y_0)$ 处可微. 命题得证.

## 第 8 题

设函数 $f(x, y) = \sqrt[3]{xy}$, 证明: 函数 $f$ 在原点处连续、偏导数存在, 但沿方向 $l = (a, b)(ab \neq 0)$ 的方向导数不存在.

**证明**

由于 $f$ 是初等函数的复合, 所以函数 $f$ 在原点处连续. 因为 $f'_x(0, 0) = \lim\limits_{\Delta x \to 0}\dfrac{f(\Delta x, 0) - f(0, 0)}{\Delta x} = 0, f'_y(0, 0) = \lim\limits_{\Delta y \to 0}\dfrac{f(0, \Delta y) - f(0, 0)}{\Delta y} = 0$, 所以 $f$ 在原点处的偏导数均存在. 设 $l$ 单位化得 $l_0 = (\cos\theta, \sin\theta), \theta \neq \dfrac{k\pi}{2}, k \in \mathbb{N}$. 则沿着 $l_0$ 的方向导数 $\dfrac{\partial f}{\partial l_0} = \lim\limits_{d \to 0}\dfrac{f(d\cos \theta, d\sin\theta) - f(0, 0)}{d} = \sqrt[3]{\dfrac{\cos\theta\sin\theta}{d}}$. 由于 $\theta \neq \dfrac{k\pi}{2}, k \in \mathbb{N}$, 故该极限不存在. 因此题中所表述的方向导数不存在. 命题得证.

## 第 11 题

求下列函数在点 $P_0$ 处沿方向 $l$ 的方向导数.

(1) $z = \cos (x + y), P_0 = \left(0, \dfrac{\pi}{2}\right), l = (3, -4)$;

(3) $z = \sum\limits_{i = 1}^n\sum\limits_{j = 1}^nx_ix_j, P(1, 1, \cdots, 1), l = (-1, -1, \cdots, -1)$;

**解**

(1) 由于 $\dfrac{\partial z}{\partial x} = \dfrac{\partial z}{\partial y} = -\sin(x + y)$, 且将 $l$ 单位化后得到 $r = \left(\dfrac{3}{5}, -\dfrac{4}{5}\right)$, 所以 $\dfrac{\partial z}{\partial l} = -\dfrac{3}{5}\sin(0 + \dfrac{\pi}{2}) + \dfrac{4}{5}\sin(0 + \dfrac{\pi}{2}) = \dfrac{1}{5}$.

(3) 由于 $\dfrac{\partial z}{\partial x_i} = 2\sum\limits_{j = 1}^nx_j$, 且将 $l$ 单位化后得到 $r = \left(-\dfrac{1}{\sqrt{n}}, -\dfrac{1}{\sqrt{n}}, \cdots, -\dfrac{1}{\sqrt{n}}\right)$, 所以将 $P(1, 1, \cdots, 1)$ 代入得 $\dfrac{\partial z}{\partial l} = 2\sum\limits_{j = 1}^nn\left(-\dfrac{1}{\sqrt{n}}\right) = -2n\sqrt{n}$.

## 第 12 题

求下列数量场的梯度.

(1) $u(x, y) = \sqrt{x^2 + y^2}$;

(3) $u(x_1, x_2, \cdots, x_n) = \sum\limits_{i = 1}^nx_i$;

**解**

(1) 由于 $\dfrac{\partial u}{\partial x} = \dfrac{\partial u}{\partial y} = \dfrac{1}{\sqrt{x^2 + y^2}}$, 故 $\nabla u = \left(\dfrac{1}{\sqrt{x^2 + y^2}}, \dfrac{1}{\sqrt{x^2 + y^2}}\right)$.

(3) 由于 $\forall i \in [1, n], \dfrac{\partial u}{\partial x_i} = 1$, 故 $\nabla u = (1, 1, \cdots, 1)$.

## 第 13 题

已知函数 $u(x, y, z) = x^2 + y^2 + z^2 - xy - xz + yz$ 及点 $P(1, 1, 1)$, 求 $u$ 在 $P$ 点的方向导数 $\dfrac{\partial u}{\partial l}$ 的最值, 并指出取得最值时的方向, 以及哪个方向的方向导数为零.

**解**

$\dfrac{\partial u}{\partial x} = 2x - y - z, \dfrac{\partial u}{\partial y} = 2y - x + z, \dfrac{\partial u}{\partial z} = 2z - x + y$. 因此在 $P$ 点处梯度的方向为 $(0, 2, 2)$, 单位化可得 $l_0 = \left(0, \dfrac{\sqrt{2}}{2}, \dfrac{\sqrt{2}}{2}\right)$. 将 $P(1, 1, 1)$ 以及 $\pm l_0$ 代入可得 $\dfrac{\partial u}{\partial l}$ 的最大值为 $2\sqrt{2}$, 方向为 $\left(0, \dfrac{\sqrt{2}}{2}, \dfrac{\sqrt{2}}{2}\right)$; 最小值为 $-2\sqrt{2}$, 方向为 $\left(0, -\dfrac{\sqrt{2}}{2}, -\dfrac{\sqrt{2}}{2}\right)$. 对任意一个垂直于梯度的方向 $(k, 1, -1)(k \in \mathbb{R})$ 或 $(k, -1, 1)(k \in \mathbb{R})$,都有方向导数为 $0$.

## 第 14 题

求下列函数的二阶偏导数 $\dfrac{\partial^2 u}{\partial x^2}, \dfrac{\partial^2 u}{\partial y^2}, \dfrac{\partial^2 u}{\partial x\partial y}$.

(1) $u = \cos^2(ax - by)$;

(3) $u = xe^{-xy}$;

**解**

(1) 由于 $\dfrac{\partial u}{\partial x} = 2\cos(ax - by)\cdot(-\sin(ax - by))\cdot a = -a\sin(2ax - 2by)$, $\dfrac{\partial u}{\partial y} = 2\cos(ax - by)\cdot(-\sin(ax - by))\cdot (-b) = b\sin(2ax - 2by)$, 故 $\dfrac{\partial ^2u}{\partial x^2} = -2a^2\cos(2ax - 2by), \dfrac{\partial ^2u}{\partial y^2} = -2b^2\cos(2ax - 2by), \dfrac{\partial ^2u}{\partial x\partial y} = 2ab\cos(2ax - 2by)$.

(3) 由于 $\dfrac{\partial u}{\partial x} = e^{-xy} + -xye^{-xy} = (1 - xy)e^{-xy}$, $\dfrac{\partial u}{\partial y} = xe^{-xy}\cdot(-x) = -x^2e^{-xy}$, 故 $\dfrac{\partial ^2u}{\partial x^2} = ye^{-xy}(xy - 2), \dfrac{\partial ^2u}{\partial y^2} = x^3e^{-xy}, \dfrac{\partial ^2u}{\partial x\partial y} = xe^{-xy}(xy - 2)$.

## 第 15 题

证明下列函数满足相应的等式.

(1) $u = 2\cos^2\left(x - \dfrac{y}{2}\right)$ 满足 $2\dfrac{\partial^2u}{\partial y^2} + \dfrac{\partial^2u}{\partial x \partial y} = 0$;

(3) $\begin{cases}u = e^x\cos y, \\ v = e^x\sin y\end{cases}$ 满足 Cauchy-Riemann 条件 $\begin{cases}\dfrac{\partial u}{\partial x} = \dfrac{\partial v}{\partial y}, \\ \dfrac{\partial u}{\partial y} = -\dfrac{\partial v}{\partial x}\end{cases}$, 且分别满足 Laplace 方程 $\dfrac{\partial^2 f}{\partial x^2} + \dfrac{\partial^2 f}{\partial y^2} = 0$;

**证明**

(1) 由于 $\dfrac{\partial u}{\partial y} = \sin(2x - y)$, 所以 $\dfrac{\partial ^2u}{\partial y^2} = -\cos(2x - y), \dfrac{\partial ^2u}{\partial x\partial y} = 2\cos(2x - y)$. 代入有 $2\dfrac{\partial^2u}{\partial y^2} + \dfrac{\partial^2u}{\partial x \partial y} = -2\cos(2x - y) + \cos(2x - y) = 0$. 命题得证.

(3) $\dfrac{\partial u}{\partial x} = e^x\cos y, \dfrac{\partial u}{\partial y} = -e^x\sin y, \dfrac{\partial v}{\partial x} = e^x\sin y, \dfrac{\partial v}{\partial y} = e^x\cos y$. 代入可知其满足 Cauchy-Riemann 条件. $\dfrac{\partial ^2u}{\partial x^2} = e^x\cos y, \dfrac{\partial ^2u}{\partial y^2} = -e^x\cos y, \dfrac{\partial ^2v}{\partial x^2} = e^x\sin y, \dfrac{\partial ^2v}{\partial y^2} = -e^x\sin y$. 代入可知其分别满足 Laplace 方程. 命题得证.
