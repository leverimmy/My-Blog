
## 第 1 题

分别写出下列函数在点 $O$ 处带有二阶 Peano 余项和 Lagrange 余项的 Taylor 公式.

(1) $z = \cos(x^2 + y^2)$;

(2) $z = e^{x^2 - y^2}$;

(3) $u = \ln(1 + x + y + z)$.

**解**

(1) 由于 $\dfrac{\partial z}{\partial x} = -2x\sin(x^2 + y^2), \dfrac{\partial z}{\partial y} = -2y(x^2 + y^2)$, 所以 $\dfrac{\partial^2 z}{\partial x^2} = -4x^2\cos(x^2 + y^2) - 2\sin(x^2 + y^2), \dfrac{\partial^2 z}{\partial y^2} = -4y^2\cos(x^2 + y^2) - 2\sin(x^2 + y^2), \dfrac{\partial^2 z}{\partial x\partial y} = -4xy\cos(x^2 + y^2)$. 因此带有二阶 Peano 余项的 Taylor 公式为 $z = 1 + o(x^2 + y^2)$, 因此带有二阶 Lagrange 余项的 Taylor 公式为 $z = 1 - (x^2 + y^2)\sin(\theta^2(x^2 + y^2)) - 2\theta^2(x^2 + y^2)^2\cos(\theta^2(x^2 + y^2)), \theta \in (0, 1)$.

(2) 由于 $\dfrac{\partial z}{\partial x} = 2xe^{x^2 - y^2}, \dfrac{\partial z}{\partial y} = -2ye^{x^2-y^2}$, 所以 $\dfrac{\partial^2 z}{\partial x^2} = (4x^2+2)e^{x^2-y^2}, \dfrac{\partial^2 z}{\partial y^2} = (4y^2-2)e^{x^2-y^2}, \dfrac{\partial^2 z}{\partial x\partial y} = -4xye^{x^2-y^2}$. 因此带有二阶 Peano 余项的 Taylor 公式为 $z = 1 + x^2 - y^2 + o(x^2 + y^2)$, 带有二阶 Lagrange 余项的 Taylor 公式为 $z = 1 + (x^2-y^2)e^{\theta^2(x^2-y^2)}(1+2\theta^2(x^2-y^2)), \theta \in (0, 1)$.

(3) 由于 $\dfrac{\partial u}{\partial x} = \dfrac{\partial u}{\partial y} = \dfrac{\partial u}{\partial z} = \dfrac{1}{1 + x + y + z}$, 所以 $\dfrac{\partial^2 u}{\partial x^2} = \dfrac{\partial ^2u}{\partial x\partial y} = \dfrac{\partial^2 u}{\partial x\partial z} = \dfrac{\partial^2u}{\partial y^2} = \dfrac{\partial^2u}{\partial y\partial z} = \dfrac{\partial^2u}{\partial z^2} = -\dfrac{1}{(1 + x + y + z)^2}$. 因此带有二阶 Peano 余项的 Taylor 公式为 $z = x + y + z - \dfrac{1}{2}(x + y + z)^2 + o(x^2 + y^2 + z^2)$, 带有二阶 Lagrange 余项的 Taylor 公式为 $z = x + y + z - \dfrac{1}{2(1 + \theta x + \theta y + \theta z)^2}(x + y + z)^2, \theta \in (0, 1)$.

## 第 2 题

写出下列函数在指定点处的 Taylor 公式

(2) $z = \dfrac{\cos x}{\cos y}$ 在点 $(0, 0)$ 处的二阶 Taylor 多项式;

**解**

(2) $\dfrac{\partial z}{\partial x} = -\dfrac{\sin x}{\cos y}, \dfrac{\partial z}{\partial y} = \dfrac{\cos x\sin y}{\cos^2y}$. 因此 $\dfrac{\partial^2z}{\partial x^2} = -\dfrac{\cos x}{\cos y}, \dfrac{\partial^2z}{\partial x\partial y} = -\dfrac{\sin x\sin y}{\cos^2y}, \dfrac{\partial^2z}{\partial y^2} = \dfrac{(\sin^2 y + \cos y)\cos x}{\cos^3 y}$. 故 $R_{2}(x, y) = \dfrac{1}{2}(\dfrac{\partial^2z}{\partial x^2}\bigg\vert_{(0, 0)}x^2 + 2\dfrac{\partial^2z}{\partial x\partial y}\bigg\vert_{(0, 0)}xy + \dfrac{\partial^2z}{\partial y^2}\bigg\vert_{(0, 0)}y^2) = -\dfrac{1}{2}x^2 + \dfrac{1}{2}y^2$. 因此在 $(0, 0)$ 处的二阶 Taylor 多项式为 $z = 1 - \dfrac{1}{2}x^2 + \dfrac{1}{2}y^2$.
