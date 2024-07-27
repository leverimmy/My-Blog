
## 第 2 题

下列方程中, 在哪些点附近可以确定一个函数 $y = y(x)$ 或 $z = z(x, y)$, 并求出相应的 $\dfrac{\text{d}{y}}{\text{d}{x}}$ 或 $\dfrac{\partial z}{\partial x}, \dfrac{\partial z}{\partial y}$.

(1) $(x^2 + y^2)^2 = a^2(y^2 - x^2)$;

(2) $e^{-(x + y + z)} = x + y + z$;

**解**

(1) 设 $F(x, y) = (x^2 + y^2)^2 - a^2(y^2 - x^2)$. 在满足 $y_0 \neq 0, x_0^2 + y_0^2 \neq \dfrac{a^2}{2}$ 的点附近可以确定 $y = y(x)$, 且 $\dfrac{\text{d}{y}}{\text{d}{x}} = -\dfrac{\dfrac{\partial F}{\partial x}}{\dfrac{\partial F}{\partial y}} = -\dfrac{2x^3 + (2y^2 + a^2)x}{2y^3 + (2x^2 - a^2)y}$.

(2) 设 $F(x, y, z) = e^{-(x + y + z)} - (x + y + z)$. 在 $\mathbb{R}^2$ 上的所有点附近都可以确定 $z = z(x, y)$, 且 $\dfrac{\partial z}{\partial x} = -\dfrac{\dfrac{\partial F}{\partial x}}{\dfrac{\partial F}{\partial z}} = -\dfrac{-e^{-(x + y + z)} - 1}{-e^{-(x + y + z)} - 1} = -1, \dfrac{\partial z}{\partial y} = -\dfrac{\dfrac{\partial F}{\partial y}}{\dfrac{\partial F}{\partial z}} = -\dfrac{-e^{-(x + y + z)} - 1}{-e^{-(x + y + z)} - 1} = -1$.

## 第 3 题

下列方程均确定了函数 $z = z(x, y)$, 分别求解下列各表达式的值.

(1) $f(ax - cz, ay - bz) = 0$, $f$ 可微, 计算: $c\dfrac{\partial z}{\partial x} + b\dfrac{\partial z}{\partial y}$;

(3) $f(x, x + y, x + y + z) = 0$, $f$ 二阶可微, 计算: $\dfrac{\partial z}{\partial x}, \dfrac{\partial z}{\partial y}, \dfrac{\partial ^2z}{\partial x^2}$.

**解**

(1) $\dfrac{\partial z}{\partial x} = -\dfrac{\dfrac{\partial f}{\partial x}}{\dfrac{\partial f}{\partial z}} = -\dfrac{f_1'\cdot a}{f_1'\cdot (-c) + f_2'\cdot (-b)} = \dfrac{f_1'\cdot a}{f_1'\cdot c + f_2'\cdot b}$. 同理 $\dfrac{\partial z}{\partial y} = \dfrac{f_2'\cdot a}{f_1'\cdot c + f_2'\cdot b}$. 故 $c\dfrac{\partial z}{\partial x} + b\dfrac{\partial z}{\partial y} = \dfrac{f_1'\cdot ac}{f_1'\cdot c + f_2'\cdot b} + \dfrac{f_2'\cdot ab}{f_1'\cdot c + f_2'\cdot b} = a$.

(3) $\dfrac{\partial z}{\partial x} = -\dfrac{\dfrac{\partial f}{\partial x}}{\dfrac{\partial f}{\partial z}} = -\dfrac{f_1' + f_2' + f_3'}{f_3'}$, $\dfrac{\partial z}{\partial y} = -\dfrac{\dfrac{\partial f}{\partial y}}{\dfrac{\partial f}{\partial z}} = -\dfrac{f_2' + f_3'}{f_3'}$. 故

$$
\begin{aligned}
    \dfrac{\partial ^2z}{\partial x^2} &= \dfrac{\partial }{\partial x}\left(\dfrac{\partial z}{\partial x}\right) \\
    & = -\dfrac{[(f_{11}'' + f_{12}'' + f_{13}''\cdot\dfrac{\partial z}{\partial x}) + (f_{21}'' + f_{22}'' + f_{23}''\cdot\dfrac{\partial z}{\partial x}) + (f_{31}'' + f_{32}'' + f_{33}''\cdot\dfrac{\partial z}{\partial x})]\cdot f_3'}{(f_3')^2} \\
    & - \dfrac{(f_1' + f_2' + f_3')(f_{31}'' + f_{32}'' + f_{33}''\dfrac{\partial z}{\partial x})}{(f_3')^2} \\
    & = - \dfrac{(f_{11}'' + 2f_{12}'' + f_{22}'')}{f_3'} + \dfrac{2(f_1' + f_2')(f_{13}'' + f_{23}'')}{(f_3')^2} - \dfrac{(f_1' + f_2')^2f_{33}''}{(f_3')^3}
\end{aligned}
$$

## 第 4 题

设方程 $f(u^2 - x^2, u^2 - y^2, u^2 - z^2) = 0$ 确定了函数 $u = u(x, y, z)$, 其中 $f$ 可微, 证明:

$$
\dfrac{1}{x}\dfrac{\partial u}{\partial x} + \dfrac{1}{y}\dfrac{\partial u}{\partial y} + \dfrac{1}{z}\dfrac{\partial u}{\partial z} = \dfrac{1}{u}.
$$

**证明**

$$
\dfrac{\partial u}{\partial x} = -\dfrac{\dfrac{\partial f}{\partial x}}{\dfrac{\partial f}{\partial u}} = -\dfrac{f_x'\cdot(-2x)}{f_x'\cdot (2u) + f_y'\cdot (2u) + f_z'\cdot (2u)} = \dfrac{x}{u}\cdot\dfrac{f_x'}{f_x' + f_y' + f_z'}
$$

同理有 $\dfrac{\partial u}{\partial y} = \dfrac{y}{u}\cdot\dfrac{f_y'}{f_x' + f_y' + f_z'}, \dfrac{\partial u}{\partial z} = \dfrac{z}{u}\cdot\dfrac{f_z'}{f_x' + f_y' + f_z'}$. 故 $\dfrac{1}{x}\dfrac{\partial u}{\partial x} + \dfrac{1}{y}\dfrac{\partial u}{\partial y} + \dfrac{1}{z}\dfrac{\partial u}{\partial z} = \dfrac{1}{u}\cdot\dfrac{f_x' + f_y' + f_z'}{f_x' + f_y' + f_z'} = \dfrac{1}{u}$. 命题得证.

## 第 5 题

方程组 $\begin{cases}x = u + v, \\ y = u - v, \\ z = u^2v^2\end{cases}$ 能否确定 $z$ 是 $x, y$ 的函数? 如果能, 求 $\dfrac{\partial z}{\partial x}, \dfrac{\partial z}{\partial y}$; 如果不能, 说明理由.

**解**

由方程组可解得

$$
\begin{cases}
    u = \dfrac{x + y}{2}, \\
    v = \dfrac{x - y}{2}.
\end{cases}
$$

因此 $z = u^2v^2 = \dfrac{1}{16}(x^4 - 2x^2y^2 + y^4)$ 是 $x, y$ 的函数. $\dfrac{\partial z}{\partial x} = \dfrac{1}{4}(x^3 - xy^2)$, $\dfrac{\partial z}{\partial y} = \dfrac{1}{4}(y^3 - x^2y)$.

## 第 6 题

方程组 $\begin{cases}x + y + z + z^2 = 0, \\ x + y^2 + z + z^3 = 0\end{cases}$ 在点 $P(-1, 1, 0)$ 附近能否确定向量值函数 $\begin{pmatrix}y\\z\end{pmatrix}=\mathbf{f}(x)$, 如果能确定, 求出 $y'(-1), z'(-1)$.

**解**

记 $F(x, y, z) = x + y + z + z^2, G(x, y, z) = x + y^2 + z + z^3$. 计算得 $\dfrac{\partial(F, G)}{\partial(y, z)} = \begin{pmatrix}1 & 1 + 2z \\ 2y & z + 3z^2\end{pmatrix}$. 由于 $\dfrac{\partial(F, G)}{\partial(y, z)}\bigg\vert_{(1, 0)} = \begin{pmatrix}1 & 1 \\ 2 & 0\end{pmatrix}$ 可逆, 故能确定向量值函数 $\mathbf{f}(x)$. 且有 $y(-1) = 1, z(-1) = 0$. 对 $\begin{cases}F(x, y, z) = 0, \\ G(x, y, z) = 0\end{cases}$ 求导得 $\begin{cases}1 + y'(x) + z'(x) + 2z(x)z'(x) = 0, \\ 1 + 2y(x)y'(x) + z'(x) + 3z^2(x)z'(x) = 0.\end{cases}$ 将 $x = 1$ 代入有 $\begin{cases}1 + y'(-1) + z'(-1) = 0, \\1 + 2y'(-1) + z'(-1) = 0.\end{cases}$ 解得 $y'(-1) = 0, z'(-1) = -1$.

## 第 9 题

求下列向量值函数的逆映射的 Jacobi 矩阵以及 Jacobi 行列式.

(1) $\begin{cases}u = x^2 - y^2, \\ v = 2xy;\end{cases}$

(3) $\begin{cases}u = x^3 - y^3, \\ v = xy^2;\end{cases}$

**解**

(1) $J = \begin{pmatrix}\dfrac{\partial u}{\partial x} & \dfrac{\partial u}{\partial y} \\ \dfrac{\partial v}{\partial x} & \dfrac{\partial v}{\partial y}\end{pmatrix}^{-1} = \begin{pmatrix}2x & -2y \\ 2y & 2x\end{pmatrix}^{-1} = \dfrac{1}{2(x^2 + y^2)}\begin{pmatrix}x & y \\ -y & x\end{pmatrix}$. $\left|J\right| = \dfrac{1}{4(x^2 + y^2)}$.

(3) $J = \begin{pmatrix}\dfrac{\partial u}{\partial x} & \dfrac{\partial u}{\partial y} \\ \dfrac{\partial v}{\partial x} & \dfrac{\partial v}{\partial y}\end{pmatrix}^{-1} = \begin{pmatrix}3x^2 & -3y^2 \\ y^2 & 2xy\end{pmatrix}^{-1} = \dfrac{1}{6x^3y + 3y^4}\begin{pmatrix}2xy & 3y^2 \\ -y^2 & 3x^2\end{pmatrix}$. $\left|J\right| = \dfrac{1}{6x^3y + 3y^4}$.

## 第 10 题

下列由可微向量值函数 $\mathbf{g}:(\xi, \eta)\mapsto(u, v)$ 和 $\mathbf{f}:(x, y)\mapsto(\xi, \eta)$ 复合而成的复合向量值函数 $\mathbf{g}\circ\mathbf{f}$ 在 $(x_0, y_0)$ 的邻域内能否确定可微的逆向量值函数 $(\mathbf{g}\circ\mathbf{f})^{-1}$?

(1) $\begin{cases}u = \xi^2 - \eta^2, \\ v = 2\xi\eta,\end{cases}\begin{cases}\xi = e^x\cos y,\\ \eta = e^x\sin y,\end{cases}(x_0, y_0) = (1, 0)$;

(3) $\begin{cases}u = \xi^5 + \eta, \\ v = \eta^5 - \xi,\end{cases}\begin{cases}\xi = x^3-y^3,\\ \eta = x^2+2y^2,\end{cases}(x_0, y_0) = (1, 0)$.

**解**

(1) $\mathbf{g}$ 的逆映射的 Jacobi 矩阵为 $J_g = \begin{pmatrix}\dfrac{\partial u}{\partial \xi} & \dfrac{\partial u}{\partial \eta} \\ \dfrac{\partial v}{\partial \xi} & \dfrac{\partial v}{\partial \eta}\end{pmatrix}^{-1} = \begin{pmatrix}2\xi & -2\eta \\ 2\eta & 2\xi\end{pmatrix}^{-1} = \dfrac{1}{2(\xi^2 + \eta^2)}\begin{pmatrix}\xi & \eta \\ -\eta & \xi\end{pmatrix}$. $\mathbf{f}$ 的逆映射的 Jacobi 矩阵为 $J_f = \begin{pmatrix}\dfrac{\partial \xi}{\partial x} & \dfrac{\partial \xi}{\partial y} \\ \dfrac{\partial \eta}{\partial x} & \dfrac{\partial \eta}{\partial y}\end{pmatrix}^{-1} = \begin{pmatrix}e^x\cos y & -e^x\sin y \\ e^x\sin y & e^x\cos y\end{pmatrix}^{-1} = \dfrac{1}{e^{2x}}\begin{pmatrix}e^x\cos y & e^x\sin y \\ -e^x\sin y & e^x\cos y\end{pmatrix}$. 当 $x = x_0 = 1, y = y_0 = 0$ 时, $\left|J_f\right| \neq 0, \left|J_g\right| \neq 0$, 故能确定. 且 $(\mathbf{g}\circ\mathbf{f})^{-1}$ 的 Jacobi 矩阵为 $J_fJ_g$.

(3) $\mathbf{g}$ 的逆映射的 Jacobi 矩阵为 $J_g = \begin{pmatrix}\dfrac{\partial u}{\partial \xi} & \dfrac{\partial u}{\partial \eta} \\ \dfrac{\partial v}{\partial \xi} & \dfrac{\partial v}{\partial \eta}\end{pmatrix}^{-1} = \begin{pmatrix}5\xi^4 & 1 \\ -1 & 5\eta^4\end{pmatrix}^{-1} = \dfrac{1}{25\xi^4\eta^4 + 1}\begin{pmatrix}5\eta^4 & -1 \\ 1 & 5\xi^4\end{pmatrix}$. $\mathbf{f}$ 的逆映射的 Jacobi 矩阵为 $J_f = \begin{pmatrix}\dfrac{\partial \xi}{\partial x} & \dfrac{\partial \xi}{\partial y} \\ \dfrac{\partial \eta}{\partial x} & \dfrac{\partial \eta}{\partial y}\end{pmatrix}^{-1} = \begin{pmatrix}3x^2 & -3y^2 \\ 2x & 4y\end{pmatrix}^{-1} = \dfrac{1}{12x^2y + 6xy^2}\begin{pmatrix}4y & 3y^2 \\ -2x & 3x^2\end{pmatrix}$. 当 $x = x_0 = 1, y = y_0 = 0$ 时, $J_f$ 前的系数分母为 $0$, 故 $J_f$ 不存在, 不能确定.
