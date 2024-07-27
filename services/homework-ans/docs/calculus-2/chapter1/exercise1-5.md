
## 第 1 题

求下列变换所确定的向量值函数 $\begin{pmatrix}u \\ v\end{pmatrix} = \begin{pmatrix}f_1(x, y) \\ f_2(x, y)\end{pmatrix}$ 的 Jacobi 矩阵 $\dfrac{\partial(u, v)}{\partial(x, y)}$, 并指出在哪些区域 Jacobi 矩阵可逆.

(1) $\begin{cases}u = \sqrt{x^2 + y^2}, \\ v = \arctan\dfrac{y}{x};\end{cases}$

(3) $\begin{cases}u = \dfrac{x}{x^2 + y^2}, \\ v = \dfrac{y}{x^2 + y^2};\end{cases}$

**解**

(1)

$$
J=
\begin{pmatrix}
    \dfrac{\partial u}{\partial x} & \dfrac{\partial u}{\partial y} \\
    \dfrac{\partial v}{\partial x} & \dfrac{\partial v}{\partial y}
\end{pmatrix}
=
\begin{pmatrix}
    \dfrac{2x}{2\sqrt{x^2 + y^2}} & \dfrac{2y}{2\sqrt{x^2 + y^2}} \\
    \dfrac{1}{1 + \left(\dfrac{y}{x}\right)^2}\cdot\left(-\dfrac{y}{x^2}\right) & \dfrac{1}{1 + \left(\dfrac{y}{x}\right)^2}\cdot\dfrac{1}{x}
\end{pmatrix}
=
\begin{pmatrix}
    \dfrac{x}{\sqrt{x^2 + y^2}} & \dfrac{y}{\sqrt{x^2 + y^2}} \\
    \dfrac{-y}{x^2 + y^2} & \dfrac{x}{x^2 + y^2}
\end{pmatrix}
$$

且 $\det{J} \neq 0 \iff x^2 + y^2 \neq 0$, 故在 $\mathbb{R}^2 \backslash \{(0, 0)\}$ 处 Jacobi 矩阵可逆.

(3)

$$
J=
\begin{pmatrix}
    \dfrac{\partial u}{\partial x} & \dfrac{\partial u}{\partial y} \\
    \dfrac{\partial v}{\partial x} & \dfrac{\partial v}{\partial y}
\end{pmatrix}
=
\begin{pmatrix}
    \dfrac{x^2 + y^2 - x\cdot 2x}{(x^2 + y^2)^2} & \dfrac{-x\cdot 2y}{(x^2 + y^2)^2} \\
    \dfrac{-y\cdot 2x}{(x^2 + y^2)^2} & \dfrac{x^2 + y^2 - y\cdot 2y}{(x^2 + y^2)^2}
\end{pmatrix}
=
\begin{pmatrix}
    \dfrac{y^2 - x^2}{(x^2 + y^2)^2} & \dfrac{-2xy}{(x^2 + y^2)^2} \\
    \dfrac{-2xy}{(x^2 + y^2)^2} & \dfrac{x^2 - y^2}{(x^2 + y^2)^2}
\end{pmatrix}
$$

且 $\det{J} \neq 0 \iff x^2 + y^2 \neq 0$, 故在 $\mathbb{R}^2 \backslash \{(0, 0)\}$ 处 Jacobi 矩阵可逆.

## 第 2 题

求变换 $\begin{cases}x = r\sin\theta\cos\phi, \\ y = r\cos\theta\cos\phi, \\ z=r\sin\phi,\end{cases}r>0, 0\le\theta \le 2\pi, 0 \le \phi \le pi$ 确定的向量值函数  $\begin{pmatrix}x \\ y \\ z\end{pmatrix} = \begin{pmatrix}f_1(r, \theta, \phi) \\ f_2(r, \theta, \phi) \\ f_3(r, \theta, \phi)\end{pmatrix}$ 的 Jacobi 矩阵.

**解**

$$
J = 
\begin{pmatrix}
    \dfrac{\partial x}{\partial r} & \dfrac{\partial x}{\partial \theta} & \dfrac{\partial x}{\partial \phi} \\
    \dfrac{\partial y}{\partial r} & \dfrac{\partial y}{\partial \theta} & \dfrac{\partial y}{\partial \phi} \\
    \dfrac{\partial z}{\partial r} & \dfrac{\partial z}{\partial \theta} & \dfrac{\partial z}{\partial \phi}
\end{pmatrix}
=
\begin{pmatrix}
    \sin\theta & r\cos\theta\cos\phi & -r\sin\theta\sin\phi \\
    \cos\theta\cos\phi & -r\sin\theta\cos\phi & -r\cos\theta\sin\phi \\
    \sin\phi & 0 & r\cos\phi
\end{pmatrix}
$$

## 第 3 题

求下列复合函数的偏导数 $\dfrac{\partial z}{\partial x}, \dfrac{\partial z}{\partial y}$ (已知 $f$ 为可微函数).

(1) $z = \arctan \dfrac{u}{v}, u = x^2 + y^2, v = xy$;

(3) $z = f(x^2 - y^2, e^{xy})$;

(5) $z = xy + \dfrac{y}{x}f(xy)$;

**解**

(1) $\dfrac{\partial z}{\partial x} = \dfrac{\partial z}{\partial u}\dfrac{\partial u}{\partial x} + \dfrac{\partial z}{\partial v}\dfrac{\partial v}{\partial x} = \dfrac{\dfrac{1}{v}}{1 + \left(\dfrac{u}{v}\right)^2}\cdot 2x + \dfrac{-\dfrac{u}{v^2}}{1 + \left(\dfrac{u}{v}\right)^2}\cdot y = \dfrac{y(x^2 - y^2)}{x^4 + 3x^2y^2 + y^4}$.

$\dfrac{\partial z}{\partial y} = \dfrac{\partial z}{\partial u}\dfrac{\partial u}{\partial y} + \dfrac{\partial z}{\partial v}\dfrac{\partial v}{\partial y} = \dfrac{\dfrac{1}{v}}{1 + \left(\dfrac{u}{v}\right)^2}\cdot 2y + \dfrac{-\dfrac{u}{v^2}}{1 + \left(\dfrac{u}{v}\right)^2}\cdot x = \dfrac{x(y^2 - x^2)}{x^4 + 3x^2y^2 + y^4}$.

(3) $\dfrac{\partial z}{\partial x} = \dfrac{\partial z}{\partial u}\dfrac{\partial u}{\partial x} + \dfrac{\partial z}{\partial v}\dfrac{\partial v}{\partial x} = f_1'(x^2 - y^2, e^{xy})\cdot 2x + f_2'(x^2 - y^2, e^{xy})\cdot ye^{xy} = 2xf_1' + ye^{xy}f_2'$.

$\dfrac{\partial z}{\partial y} = \dfrac{\partial z}{\partial u}\dfrac{\partial u}{\partial y} + \dfrac{\partial z}{\partial v}\dfrac{\partial v}{\partial y} = f_1'(x^2 - y^2, e^{xy})\cdot (-2y) + f_2'(x^2 - y^2, e^{xy})\cdot xe^{xy} = -2yf_1' + xe^{xy}f_2'$.

(5) $\dfrac{\partial z}{\partial x} = \dfrac{\partial z}{\partial u}\dfrac{\partial u}{\partial x} + \dfrac{\partial z}{\partial v}\dfrac{\partial v}{\partial x} = y + \dfrac{y^2f'(xy)x-yf(xy)}{x^2} = y + \dfrac{y^2f'(xy)}{x} - \dfrac{yf(xy)}{x^2}$.

$\dfrac{\partial z}{\partial y} = \dfrac{\partial z}{\partial u}\dfrac{\partial u}{\partial y} + \dfrac{\partial z}{\partial v}\dfrac{\partial v}{\partial y} = x + \dfrac{f(xy) + yxf'(xy)}{x} = x + yf'(xy) + \dfrac{f(xy)}{x}$.

## 第 4 题

已知函数 $z = u\ln(u - v)$, 其中 $u = e^{-x}, v = \ln x$, 求 $\dfrac{\text{d}{z}}{\text{d}{x}}$.

**解**

$$
\begin{aligned}
    \dfrac{\text{d}{z}}{\text{d}{x}} & = \dfrac{\partial z}{\partial u}\dfrac{\text{d}{u}}{\text{d}{x}} + \dfrac{\partial z}{\partial v}\dfrac{\text{d}{v}}{\text{d}{x}} \\
    & = \left(\ln(u - v) + \dfrac{u}{u - v}\right)\cdot (-e^{-x}) + \dfrac{u}{u - v}\cdot\left(-\dfrac{1}{x}\right) \\
    & = -e^{-x}\ln(e^{-x}-\ln x) - \dfrac{e^{-2x}}{e^{-x} - \ln x} - \dfrac{e^{-x}}{x(e^{-x} - \ln x)}
\end{aligned}
$$

## 第 5 题

已知函数 $u = f(x, y)$, 其中 $x = r\cos \theta, y = r\sin\theta$, $f$ 可微, 证明:

$$
\left(\dfrac{\partial u}{\partial r}\right)^2 + \left(\dfrac{1}{r}\dfrac{\partial u}{\partial \theta}\right)^2 = \left(\dfrac{\partial u}{\partial x}\right)^2 + \left(\dfrac{\partial u}{\partial y}\right)^2.
$$

**证明**

由于 $\dfrac{\partial u}{\partial r} = \dfrac{\partial u}{\partial x}\dfrac{\partial x}{\partial r} + \dfrac{\partial u}{\partial y}\dfrac{\partial y}{\partial r} = \cos\theta \dfrac{\partial u}{\partial x} + \sin\theta \dfrac{\partial u}{\partial y}, \dfrac{\partial u}{\partial \theta} = \dfrac{\partial u}{\partial x}\dfrac{\partial x}{\partial \theta} + \dfrac{\partial u}{\partial y}\dfrac{\partial y}{\partial \theta} = -r\sin\theta \dfrac{\partial u}{\partial \theta} + r\cos\theta \dfrac{\partial u}{\partial \theta}$, 所以代入得

$$
\begin{aligned}
    \left(\dfrac{\partial u}{\partial r}\right)^2 + \left(\dfrac{1}{r}\dfrac{\partial u}{\partial \theta}\right)^2 & = \left(\cos\theta \dfrac{\partial u}{\partial x} + \sin\theta \dfrac{\partial u}{\partial y}\right)^2 + \left(-\sin\theta \dfrac{\partial u}{\partial \theta} + \cos\theta \dfrac{\partial u}{\partial \theta}\right)^2 \\
    & = \left(\dfrac{\partial u}{\partial x}\right)^2 + \left(\dfrac{\partial u}{\partial y}\right)^2.
\end{aligned}
$$

命题得证.

## 第 6 题

设 $f$ 可微, $u = xy + xf\left(\dfrac{y}{x}\right)$, 证明: $x\dfrac{\partial u}{\partial x} + y\dfrac{\partial u}{\partial y} = u + xy$.

**证明**

由于 $\dfrac{\partial u}{\partial x} = y + f\left(\dfrac{y}{x}\right) - \dfrac{y}{x}f'\left(\dfrac{y}{x}\right), \dfrac{\partial u}{\partial y} = x + f'\left(\dfrac{y}{x}\right)$, 所以代入得

$$
\begin{aligned}
    x\dfrac{\partial u}{\partial x} + y\dfrac{\partial u}{\partial y} & = xy + xf\left(\dfrac{y}{x}\right) - yf'\left(\dfrac{y}{x}\right) + xy + yf'\left(\dfrac{y}{x}\right) \\ 
    & = 2xy + xf\left(\dfrac{y}{x}\right) \\
    & = u + xy
\end{aligned}
$$

命题得证.

## 第 7 题

设 $f \in C^2(\mathbb{R}^2)$ 满足 Laplace 方程 $\dfrac{\partial ^2f}{\partial x^2} + \dfrac{\partial ^2f}{\partial y^2} = 0$, 证明: $u(x, y) = f\left(\dfrac{x}{x^2 + y^2}, \dfrac{y}{x^2 + y^2}\right)$ 也满足 Laplace 方程.

**证明**

$\dfrac{\partial u}{\partial x} = u_1'\dfrac{y^2 - x^2}{(x^2 + y^2)^2} + u_2'\dfrac{-2xy}{(x^2 + y^2)^2}$.

$$
\begin{aligned}
    \dfrac{\partial^2 u}{\partial x^2} & = \dfrac{\partial}{\partial x}\left(u_1'\dfrac{y^2 - x^2}{(x^2 + y^2)^2}\right) + \dfrac{\partial}{\partial x}\left(u_2'\dfrac{-2xy}{(x^2 + y^2)^2}\right) \\
    & = u_{11}'\left(\dfrac{y^2 - x^2}{(x^2 + y^2)^2}\right)^2 - (u_{12}' + u_{21}')\dfrac{2xy(y^2 - x^2)}{(x^2 + y^2)^4} + u_{22}'\left(\dfrac{-2xy}{(x^2 + y^2)^2}\right)^2 \\
    & + u_1'\dfrac{-2x(3y^2 - x^2)}{(x^2 + y^2)^3} + u_2'\dfrac{2y(3x^2 - y^2)}{(x^2 + y^2)^3}
\end{aligned}
$$

同理可得

$$
\begin{aligned}
    \dfrac{\partial^2 u}{\partial y^2} & = u_{11}'\left(\dfrac{-2xy}{(x^2 + y^2)^2}\right)^2 + (u_{12}' + u_{21}')\dfrac{2xy(y^2 - x^2)}{(x^2 + y^2)^4} + u_{22}'\left(\dfrac{y^2 - x^2}{(x^2 + y^2)^2}\right)^2 \\
    & + u_2'\dfrac{-2y(3x^2 - y^2)}{(x^2 + y^2)^3} + u_1'\dfrac{2x(3y^2 - x^2)}{(x^2 + y^2)^3}
\end{aligned}
$$

由题知 $f$ 满足 Laplace 方程, 则 $u_{11}' + u_{22}' = 0$. 则

$$
\begin{aligned}
    \dfrac{\partial^2 u}{\partial x^2} + \dfrac{\partial^2 u}{\partial y^2} & = u_{11}'\left(\dfrac{y^2 - x^2}{(x^2 + y^2)^2}\right)^2 - (u_{12}' + u_{21}')\dfrac{2xy(y^2 - x^2)}{(x^2 + y^2)^4} + u_{22}'\left(\dfrac{-2xy}{(x^2 + y^2)^2}\right)^2 \\
    & + u_1'\dfrac{-2x(3y^2 - x^2)}{(x^2 + y^2)^3} + u_2'\dfrac{2y(3x^2 - y^2)}{(x^2 + y^2)^3} \\
    & + u_{11}'\left(\dfrac{-2xy}{(x^2 + y^2)^2}\right)^2 + (u_{12}' + u_{21}')\dfrac{2xy(y^2 - x^2)}{(x^2 + y^2)^4} + u_{22}'\left(\dfrac{y^2 - x^2}{(x^2 + y^2)^2}\right)^2 \\
    & + u_2'\dfrac{-2y(3x^2 - y^2)}{(x^2 + y^2)^3} + u_1'\dfrac{2x(3y^2 - x^2)}{(x^2 + y^2)^3} \\
    & = (u_{11}' + u_{22}')\left[\left(\dfrac{-2xy}{(x^2 + y^2)^2}\right)^2 +\left(\dfrac{y^2 - x^2}{(x^2 + y^2)^2}\right)^2\right] \\
    & = 0
\end{aligned}
$$

命题得证.

## 第 8 题

已知变换 $\begin{cases} w=x+y+z, \\u=x, \\ v=x+y,\end{cases}$ 化简方程 $\dfrac{\partial ^2z}{\partial x^2} - 2\dfrac{\partial ^2z}{\partial x \partial y} + \dfrac{\partial ^2z}{\partial y^2} + \dfrac{\partial z}{\partial x} - \dfrac{\partial z}{\partial y} = 0$, 以 $w$ 为因变量, $u, v$ 为自变量.

**解**

化简得 $z = -x - y + w$. 因此

$$
\begin{aligned}
    \dfrac{\partial z}{\partial x} & = \dfrac{\partial w}{\partial x} - 1 = \dfrac{\partial w}{\partial u}\dfrac{\partial u}{\partial x} + \dfrac{\partial w}{\partial v}\dfrac{\partial v}{\partial x} - 1 = \dfrac{\partial w}{\partial u} + \dfrac{\partial w}{\partial v} - 1, \\
    \dfrac{\partial z}{\partial y} & = \dfrac{\partial w}{\partial y} - 1 = \dfrac{\partial w}{\partial u}\dfrac{\partial u}{\partial y} + \dfrac{\partial w}{\partial v}\dfrac{\partial v}{\partial y} - 1 = \dfrac{\partial w}{\partial v} - 1.
\end{aligned}
$$

故 $\dfrac{\partial^2 z}{\partial x^2} = \dfrac{\partial^2 w}{\partial u^2} + 2\dfrac{\partial^2 w}{\partial u\partial v} + \dfrac{\partial^2 w}{\partial v^2}, \dfrac{\partial^2 z}{\partial x\partial y} = \dfrac{\partial^2 w}{\partial u\partial v} + \dfrac{\partial^2 w}{\partial v^2}, \dfrac{\partial^2 z}{\partial y^2} = \dfrac{\partial^2 w}{\partial v^2}$.

则

$$
\begin{aligned}
    &\; \; \; \; \; \; \; \; \dfrac{\partial ^2z}{\partial x^2} - 2\dfrac{\partial ^2z}{\partial x \partial y} + \dfrac{\partial ^2z}{\partial y^2} + \dfrac{\partial z}{\partial x} - \dfrac{\partial z}{\partial y} \\
    & = \left(\dfrac{\partial^2 w}{\partial u^2} + 2\dfrac{\partial^2 w}{\partial u\partial v} + \dfrac{\partial^2 w}{\partial v^2}\right) - 2\left(\dfrac{\partial^2 w}{\partial u\partial v} + \dfrac{\partial^2 w}{\partial v^2}\right) + \dfrac{\partial^2 w}{\partial v^2} + \left(\dfrac{\partial w}{\partial u} + \dfrac{\partial w}{\partial v} - 1\right) - \left(\dfrac{\partial w}{\partial v} - 1\right) \\
    & = \dfrac{\partial^2w}{\partial u^2} + \dfrac{\partial w}{\partial u}
\end{aligned}
$$

所以化简为 $\dfrac{\partial^2w}{\partial u^2} + \dfrac{\partial w}{\partial u} = 0$.

## 第 9 题

向量值函数 $\mathbf{Y} = \mathbf{f}(\mathbf{U}), \mathbf{U} = \mathbf{g}(\mathbf{X})$ 均可微, 求复合函数 $\mathbf{Y} = \mathbf{f} \circ \mathbf{g}(\mathbf{X})$ 的 Jacobi 矩阵和全微分.

(1) $\begin{cases} y_1 = u_1 + u_2 \\ y_2 = u_1u_2 \\ y_3 = \dfrac{u_2}{u_1},\end{cases}\begin{cases}u_1 = \dfrac{x}{x^2 + y^2}, \\ u_2 = \dfrac{y}{x^2 + y^2};\end{cases}$

**解**

(1) 因为

$$
J_{\mathbf{g}} = \begin{pmatrix}\dfrac{\partial u_1}{\partial x} & \dfrac{\partial u_1}{\partial y} \\ \dfrac{\partial u_2}{\partial x} & \dfrac{\partial u_2}{\partial y}\end{pmatrix} = \begin{pmatrix}\dfrac{y^2 - x^2}{x^2 + y^2} & \dfrac{-2xy}{x^2 + y^2} \\ \dfrac{-2xy}{x^2 + y^2} & \dfrac{x^2 - y^2}{x^2 + y^2}\end{pmatrix},
$$

$$
J_{\mathbf{f}} = \begin{pmatrix}\dfrac{\partial y_1}{\partial u_1} & \dfrac{\partial y_1}{\partial u_2} \\ \dfrac{\partial y_2}{\partial u_1} & \dfrac{\partial y_2}{\partial u_2} \\ \dfrac{\partial y_3}{\partial u_1} & \dfrac{\partial y_3}{\partial u_2}\end{pmatrix} = \begin{pmatrix}1 & 1 \\ \dfrac{y}{x^2 + y^2} & \dfrac{x}{x^2 + y^2} \\ -\dfrac{y}{x} & \dfrac{x^2 + y^2}{x}\end{pmatrix},
$$

所以 $J = J_{\mathbf{f}}J_{\mathbf{g}} = \begin{pmatrix}1 & 1 \\ \dfrac{y}{x^2 + y^2} & \dfrac{x}{x^2 + y^2} \\ -\dfrac{y}{x} & \dfrac{x^2 + y^2}{x}\end{pmatrix}\begin{pmatrix}\dfrac{y^2 - x^2}{x^2 + y^2} & \dfrac{-2xy}{x^2 + y^2} \\ \dfrac{-2xy}{x^2 + y^2} & \dfrac{x^2 - y^2}{x^2 + y^2}\end{pmatrix}$, 且全微分 $\text{d}{\mathbf{Y}} = J\begin{pmatrix}\text{d}{x} \\ \text{d}{y}\end{pmatrix}$.
