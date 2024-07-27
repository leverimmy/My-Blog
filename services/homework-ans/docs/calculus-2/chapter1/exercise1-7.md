
## 第 1 题

求下列曲面在给定点的切平面方程和法线方程.

(1) $z = x^2 + y^2$, 点 $P(1, 2, 5)$;

(3) $(2a^2 - z^2)x^2 = a^2y^2$, 点 $P(a, a, a)(a \neq 0)$;

(5) $\begin{cases}x = u\cos v, \\ y = u\sin v, \\ z = av,\end{cases}$ 点 $(u, v) = (u_0, v_0)$;

**解**

(1) 因为 $\dfrac{\partial z}{\partial x} = 2x, \dfrac{\partial z}{\partial y} = 2y$, 所以切平面的表达式为 $z = z_0 + 2x_0(x - x_0) + 2y_0(y - y_0)$. 将 $P(1, 2, 5)$ 代入得 $z = 2x + 4y - 5$. 法线的表达式为 $\dfrac{x - 1}{2} = \dfrac{y - 2}{4} = \dfrac{z - 5}{-1}$.

(3) 记 $F(x, y, z) = (2a^2 - z^2)x^2 - a^2y^2$. 则 $\dfrac{\partial F}{\partial x} = 2x(2a^2 - z^2), \dfrac{\partial F}{\partial y} = -2a^2y, \dfrac{\partial F}{\partial z} = -2x^2z$. 代入 $P(a, a, a)$ 得切平面表达式为 $x - y - z + a = 0$, 法线表达式为 $x - a = a - y = a - z$.

(5)

$$
\begin{aligned}
    A &= \begin{vmatrix}
            \dfrac{\partial y}{\partial u} & \dfrac{\partial y}{\partial v} \\
            \dfrac{\partial z}{\partial u} & \dfrac{\partial z}{\partial v}
        \end{vmatrix}
      = \begin{vmatrix}
            \sin v & u\cos v \\
            0 & a
        \end{vmatrix} = a\sin v\\
    B &= \begin{vmatrix}
            \dfrac{\partial z}{\partial u} & \dfrac{\partial z}{\partial v} \\
            \dfrac{\partial x}{\partial u} & \dfrac{\partial x}{\partial v}
        \end{vmatrix}
      = \begin{vmatrix}
            0 & a \\
            \cos v & -u\sin v
        \end{vmatrix} = -a\cos v\\
    C &= \begin{vmatrix}
            \dfrac{\partial x}{\partial u} & \dfrac{\partial x}{\partial v} \\
            \dfrac{\partial y}{\partial u} & \dfrac{\partial y}{\partial v}
        \end{vmatrix}
      = \begin{vmatrix}
            \cos v & -u\sin v \\
            \sin v & u\cos v
        \end{vmatrix} = u
\end{aligned}
$$

代入 $(u_0, v_0)$ 可得切平面为 $a\sin v_0(x - u_0\cos v_0) - a\cos v_0(y - u_0\sin v_0) + u_0(z - av_0) = 0$, 法线为 $\dfrac{x - u_0\cos v_0}{a\sin v_0} = \dfrac{y - u_0\sin v_0}{-a\cos v_0} = \dfrac{z - av_0}{u_0}$.

## 第 2 题

在椭球面 $\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} = 1$ 上求一点 $P$, 使得过 $P$ 点的法线与坐标轴正方向成等角.

**解**

记 $F(x, y, z) = \dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} + \dfrac{z^2}{c^2} - 1$. 则 $\dfrac{\partial F}{\partial x} = \dfrac{2x}{a^2}, \dfrac{\partial F}{\partial y} = \dfrac{2y}{b^2}, \dfrac{\partial F}{\partial z} = \dfrac{2z}{c^2}$. 因此在 $(x_0, y_0, z_0)$ 处的法向量为 $\left(\dfrac{2x_0}{a^2}, \dfrac{2y_0}{b^2}, \dfrac{2z_0}{c^2}\right)$. 由于与三个坐标轴的正方向成等角, 因此有 $\dfrac{2x_0}{a^2} = \dfrac{2y_0}{b^2} = \dfrac{2z_0}{c^2}$. 结合 $F(x_0, y_0, z_0) = 0$ 解得满足条件的点 $P$ 有两个, $P_1 = \left(\dfrac{a^2}{\sqrt{a^2 + b^2 + c^2}}, \dfrac{b^2}{\sqrt{a^2 + b^2 + c^2}}, \dfrac{c^2}{\sqrt{a^2 + b^2 + c^2}}\right), P_2 = \left(-\dfrac{a^2}{\sqrt{a^2 + b^2 + c^2}}, -\dfrac{b^2}{\sqrt{a^2 + b^2 + c^2}}, -\dfrac{c^2}{\sqrt{a^2 + b^2 + c^2}}\right)$.

## 第 3 题

求曲面 $x^2 + 2y^2 + 3z^2 = 21$ 上平行于 $x + 4y + 6z = 0$ 的切平面.

**解**

设切点为 $P(x_0, y_0, z_0)$. 记 $F(x, y, z) = x^2 + 2y^2 + 3z^2 = 21$. 因为 $\dfrac{\partial F}{\partial x} = 2x, \dfrac{\partial F}{\partial y} = 4y, \dfrac{\partial F}{\partial z} = 6z$, 所以切平面的法向量为 $(2x_0, 4y_0, 6z_0)$. 因为改平面平行于 $x + 4y + 6z = 0$, 所以 $\dfrac{2x_0}{1} = \dfrac{4y_0}{4} = \dfrac{6z_0}{6}$. 解得法平面为 $x + 4y + 6z = 21$ 或 $x + 4y + 6z = -21$.

## 第 4 题

(1) 曲面 $xyz = a^3$ 上的任一点的切平面与坐标平面围成的四面体的体积为定值;

(3) 曲面 $z = x^2 + y^2$ 与直线 $l:\begin{cases}x + 2z = 1, \\ y + 2z = 2\end{cases}$ 垂直的切平面;

(5) 设 $f$ 可微, 曲面 $z = yf\left(\dfrac{x}{y}\right)$ 的所有切平面相交于一个定点.

**证明**

(1) 设 $F(x, y, z) = xyz - a^3$. 则 $\dfrac{\partial F}{\partial x} = yz, \dfrac{\partial F}{\partial y} = xz, \dfrac{\partial F}{\partial z} = xy$. 假设切点为 $(x_0, y_0, z_0)$, 则切平面的表达式为 $y_0z_0(x - x_0) + x_0z_0(y - y_0) + x_0y_0(z - z_0) = 0$ 与坐标轴交点分别为 $(x_0, 0, 0), (0, y_0, 0), (0, 0, z_0)$. 体积即为 $\dfrac{1}{6}x_0y_0z_0 = \dfrac{1}{12}a^3$ 为定值.

(3) 由于 $\dfrac{\partial z}{\partial x} = 2x, \dfrac{\partial z}{\partial y} = 2y$, 所以设切点为 $(x_0, y_0, z_0)$, 则法向量为 $(2x_0, 2y_0, -1)$. 而该直线能被表示为 $\dfrac{x - 1}{2} = \dfrac{y - 2}{2} = \dfrac{z}{-1}$, 因此有 $2x_0 = 2y_0 = 2$. 解得切点为 $(1, 1, 2)$. 所以切平面为 $2(x - 1) + 2(y - 1) - (z - 2) = 0$.

(5) $\dfrac{\partial z}{\partial x} = yf'\left(\dfrac{x}{y}\right)\cdot \dfrac{1}{y} = f'\left(\dfrac{x}{y}\right), \dfrac{\partial z}{\partial y} = f\left(\dfrac{x}{y}\right) + y\cdot f'\left(\dfrac{x}{y}\right)\cdot\left(-\dfrac{x}{y^2}\right) = f\left(\dfrac{x}{y}\right) - \dfrac{xf'\left(\dfrac{x}{y}\right)}{y}$. 因此在 $(x_0, y_0)$ 处的切平面的表达式为 $f'\left(\dfrac{x_0}{y_0}\right)(x - x_0) + [f\left(\dfrac{x_0}{y_0}\right) - \dfrac{x_0f'\left(\dfrac{x_0}{y_0}\right)}{y_0}](y - y_0) + y_0f'\left(\dfrac{x_0}{y_0}\right) - z = 0$, 过定点 $(0, 0, 0)$.

## 第 5 题

求曲线 $l:\begin{cases}x^2 + y^2 + z^2 = 6, \\ x + y + z = 0\end{cases}$ 在点 $P(1, -2, 1)$ 处的切线方程与法平面方程.

**解**

记 $F(x, y, z) = x^2 + y^2 + z^2 - 6, G(x, y, z) = x + y + z$. 则 $\dfrac{\partial F}{\partial x} = 2x, \dfrac{\partial F}{\partial y} = 2y, \dfrac{\partial F}{\partial z} = 2z$, $\dfrac{\partial G}{\partial x} = \dfrac{\partial G}{\partial y} = \dfrac{\partial G}{\partial z} = 1$. 因此代入 $P(1, -2, 1)$, 有切线方程满足

$$
\begin{cases}
    2(x - 1) - 4(y + 2) + 2(z - 1) = 0, \\
    (x - 1) + (y + 2) + (z - 1) = 0.
\end{cases}
$$

法平面的方程则为 $-(x - 1) + (z - 1) = 0$, 即为 $x - z = 0$.

## 第 6 题

证明: 螺旋线 $\begin{cases}x = a\cos t, \\ y = a\sin t, \\ z = bt\end{cases}$ 的切线与 $z$ 轴形成定角.

**证明**

设切点在 $t = t_0$ 处. 则切向量为 $\mathbf{n} = (-a\sin t_0, a\cos t_0, b)$, 记沿着 $z$ 轴正方向的单位向量为 $\mathbf{k} = (0, 0, 1)$. 该切线与 $z$ 轴正方向所夹角度 $\theta$ 满足 $\cos\theta = \dfrac{\mathbf{n}\cdot \mathbf{k}}{\left|\mathbf{n}\right|} = \dfrac{b}{\sqrt{a^2 + b^2}}$ 为定值.

## 第 7 题

已知函数 $f$ 可微, 若 $T$ 为曲面 $S:f(x, y, z) = 0$ 在点 $P(x_0, y_0, z_0)$ 处的切平面, $l$ 为 $T$ 上任意一条过 $P$ 的曲线, 求证: 在 $S$ 上存在一条曲线, 该曲线在 $P$ 处的切线恰好为 $l$.

**证明**

不妨设要求的曲线为 $L$. 现在构造 $L$ 如下: 过 $P(x_0, y_0, z_0)$ 有法向量 $\mathbf{n}$, 由于 $\mathbf{n}$ 和 $l$ 相互垂直, 因此张成了一个平面 $Q$. 取 $L$ 为 $Q$ 和 $S$ 的交线, 则 $L$ 与平面 $Q$ 相切, 且它在 $P$ 处的切线恰好为 $l$. 因此命题得证.
