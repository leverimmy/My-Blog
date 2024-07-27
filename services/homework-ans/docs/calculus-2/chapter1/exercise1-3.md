
## 第 1 题

下列函数当 $(x, y) \to (0, 0)$ 时, 其极限是否存在? 若存在, 求出极限.

(1) $\dfrac{\arcsin(x^2 + y^2)}{x^2 + y^2}$;

(3) $(x^2 + y^2)e^{-x-y}$;

(5) $\dfrac{x^2 - y^2}{x^2 + y^2}$;

(7) $\dfrac{x^3 - y^3}{x + y}$;

(9) $\dfrac{x^2}{x^2 + y^2}$;

(11) $\dfrac{x^4y^4}{(x^2 + y^4)^3}$;

**解**

(1) 当 $(x, y)\to(0, 0)$ 时 $x^2 + y^2 \to 0$. 因此 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{\arcsin(x^2 + y^2)}{x^2 + y^2} = \lim\limits_{u\to 0}\dfrac{\arcsin u}{u} = 1$.

(3) $\lim\limits_{(x, y)\to(0, 0)}(x^2 + y^2)e^{-x-y} = \lim\limits_{(x, y)\to(0, 0)}(x^2 + y^2)\lim\limits_{(x, y)\to(0, 0)}e^{-x-y} = 0$.

(5) 当 $(x, y)$ 沿直线 $x = 0$ 趋于 $(0, 0)$ 时, $f(x, y) = \frac{-y^2}{y^2} = -1$. 当 $(x, y)$ 沿直线 $y = 0$ 趋于 $(0, 0)$ 时, $f(x, y) = \frac{x^2}{x^2} = 1$. 两者不相等, 故极限不存在.

(7) 当 $(x, y)$ 沿直线 $y = kx^3 - x$ 趋于 $(0, 0)$ 时, $f(x, y) = \dfrac{x^3 - (kx^3 - x)^3}{x + (kx^3 - x)} = \dfrac{-k^3x^9 + 3k^2x^7 - 3kx^5 + 2x^3}{kx^3} = \dfrac{-k^3x^6 + 3k^2x^4 - 3kx^2 + 2}{k} \to \dfrac{2}{k} \quad (x \to 0)$. 因此极限随着 $k$ 的变化而变化, 故极限不存在.

(9) 当 $(x, y)$ 沿直线 $x = 0$ 趋于 $(0, 0)$ 时, $f(x, y) = \dfrac{1}{y^2} \to +\infty, \quad y \to 0$. 故极限不存在.

(11) 当 $(x, y)$ 沿直线 $y = x$ 趋于 $(0, 0)$ 时, $f(x, y) = \dfrac{x^8}{(x^2 + x^4)^3} > \dfrac{1}{x^4} \to +\infty, \quad x \to 0$. 故极限不存在.

## 第 2 题

求下列函数极限.

(1) $\lim\limits_{x\to 3 \atop y\to 0}\dfrac{\ln(x + \sin y)}{\sqrt{x^2 + y^2}}$;

(3) $\lim\limits_{x\to +\infty \atop y\to -\infty}(x^2 + y^2)e^{y - x}$;

(5) $\lim\limits_{x \to \infty \atop y \to \infty}\left(\dfrac{\left|xy\right|}{x^2 + y^2}\right)^{x^2}$

**解**

(1) $\lim\limits_{x\to 3 \atop y\to 0}\dfrac{\ln(x + \sin y)}{\sqrt{x^2 + y^2}} = \dfrac{\ln(x + \sin y)}{\sqrt{x^2 + y^2}}\Bigg\vert_{x = 3\atop y = 0} = \dfrac{\ln 3}{3}$.

(3) $\lim\limits_{x\to +\infty \atop y\to -\infty}(x^2 + y^2)e^{y - x} = \lim\limits_{x\to +\infty \atop y\to -\infty}e^y\cdot\dfrac{x^2}{e^x} + \lim\limits_{x\to +\infty \atop y\to -\infty} \dfrac{1}{e^x}\cdot y^2e^y = 0 \cdot 0 + 0 \cdot 0 = 0$

(5) 由于 $0 \le \left(\dfrac{\left|xy\right|}{x^2 + y^2}\right)^{x^2} \le \left(\dfrac{1}{2}\right)^{x^2}$ 且 $\lim\limits_{x \to \infty}\left(\dfrac{1}{2}\right)^{x^2} = 0$, 故由夹逼准则知 $\lim\limits_{x \to \infty \atop y \to \infty}\left(\dfrac{\left|xy\right|}{x^2 + y^2}\right)^{x^2} = 0$.

## 第 3 题

讨论下列累次极限与二重极限是否存在, 若存在求值.

(1) $\lim\limits_{x\to \infty}\lim\limits_{y\to \infty}\sin \dfrac{\pi x}{2x + y}, \lim\limits_{y\to \infty}\lim\limits_{x\to \infty}\sin \dfrac{\pi x}{2x + y}, \lim\limits_{x\to \infty \atop y \to \infty}\sin \dfrac{\pi x}{2x + y};$

(2) $\lim\limits_{x\to +\infty}\lim\limits_{y\to 0^{+}}\dfrac{x^y}{1+x^y}, \lim\limits_{y\to 0^{+}}\lim\limits_{x\to +\infty}\dfrac{x^y}{1+x^y}, \lim\limits_{x\to +\infty \atop y \to 0^{+}}\dfrac{x^y}{1+x^y}$;

(3) $\lim\limits_{x\to 0}\lim\limits_{y\to 0}(x+y)\sin \dfrac{1}{x}\sin \dfrac{1}{y}, \lim\limits_{y\to 0}\lim\limits_{x\to 0}(x+y)\sin \dfrac{1}{x}\sin \dfrac{1}{y}, \lim\limits_{x\to 0 \atop y \to 0}(x+y)\sin \dfrac{1}{x}\sin \dfrac{1}{y}$.

**解**

(2) $\lim\limits_{x\to +\infty}\lim\limits_{y\to 0^{+}}\dfrac{x^y}{1+x^y} = \lim\limits_{x\to +\infty}\dfrac{1}{1+1} = \dfrac{1}{2}$. $\lim\limits_{y\to 0^{+}}\lim\limits_{x\to +\infty}\dfrac{x^y}{1+x^y} = \lim\limits_{y\to 0^{+}}1 = 1$. 由 1.3.1 节结论知 $\lim\limits_{x\to +\infty \atop y \to 0^{+}}\dfrac{x^y}{1+x^y}$ 不存在.

(3) 显然累次极限均不存在. 因为 $0 \le \left|(x+y)\sin\dfrac{1}{x}\sin\dfrac{1}{y}\right| \le \left|x + y\right|$, 且 $\lim\limits_{x \to 0 \atop y \to 0}\left|x+y\right| \to 0$, 故由夹逼准则知 $\lim\limits_{x\to 0 \atop y \to 0}(x+y)\sin \dfrac{1}{x}\sin \dfrac{1}{y} = 0$.

## 第 4 题

(1) 举例说明累次极限存在性与二重极限的存在性互不包含;

(2) 证明: 若二元函数 $f$ 在某一点的两个累次极限和二重极限都存在, 则这三个值相等.

**解**

(2) 由于 $f(x, y)$ 的二重极限存在, 不妨设 $\lim\limits_{(x, y)\to(x_0, y_0)}f(x, y) = A$. 再设 $g(x) = \lim\limits_{y\to y_0}f(x, y)$, 即证 $\lim\limits_{x \to x_0}g(x) = A$. 由定义知 $\forall \epsilon > 0, \exists \delta > 0$ 使得在 $0 < \sqrt{(x - x_0)^2 + (y - y_0)^2} < \delta$ 时有 $\left|f(x, y) - A\right| < \dfrac{\epsilon}{2}$. 左右两侧取极限可知 $\lim\limits_{y\to y_0}\left|f(x, y)- A\right| \le \dfrac{\epsilon}{2}$. 由于绝对值函数是连续函数, 因此可以转化为 $\left|\lim\limits_{y \to y_0}f(x, y) - A\right| \le \dfrac{\epsilon}{2} < \epsilon$, 即 $\left|g(x) - A\right| <\epsilon$. 观察此时 $\delta$ 的取值范围, 发现有 $0 < \left|x - x_0\right| \le \sqrt{(x - x_0)^2 + (y - y_0)^2} < \delta$. 故由定义可知 $\lim\limits_{x \to x_0}g(x) = A$. 此即 $\lim\limits_{x\to x_0}\lim\limits_{y\to y_0}f(x, y) = \lim\limits_{(x, y)\to(x_0, y_0)}f(x, y)$. 由对称性可知 $\lim\limits_{y\to y_0}\lim\limits_{x\to x_0}f(x, y) = \lim\limits_{(x, y)\to(x_0, y_0)}f(x, y)$. 命题得证.

## 第 5 题

用定义证明函数 $f(x, y) = \sqrt{x^2 + y^2}$ 在 $\mathbb{R}^2$ 上连续.

**解**

## 第 6 题

判断下列函数的在 $(0, 0)$ 点的连续性.

(1) $f(x, y) = \begin{cases}\dfrac{\sin(x^3 + y^3)}{x^2+y^2}, &x^2 + y^2 \neq 0, \\ 0, &x^2 + y^2 = 0;\end{cases}$

(2) $f(x, y) = \begin{cases}1, &x^2 + y^2 \neq 0, \\ 0, &x^2 + y^2 = 0;\end{cases}$

(3) $f(x, y) = \begin{cases}\dfrac{x^2y^2}{(x^2+y^2)^{\frac{3}{2}}}, &x^2 + y^2 \neq 0, \\ 0, &x^2 + y^2 = 0;\end{cases}$

(4) $f(x, y) = \begin{cases}\dfrac{xy^2}{x^2+y^4}, &x^2 + y^2 \neq 0, \\ 0, &x^2 + y^2 = 0.\end{cases}$

**解**

(1) 因为 $0 \le \left|\dfrac{\sin(x^3 + y^3)}{x^2 + y^2}\right| \le \left|\dfrac{x^3 + y^3}{x^2 + y^2}\right| = \left|(x + y)\left(1 + \dfrac{xy}{x^2 + y^2}\right)\right| \le \dfrac{3}{2}(x + y)$, 且 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{3}{2}(x + y) = 0$, 故由夹逼准则知 $\lim\limits_{(x, y)\to(0, 0)}f(x, y) = 0 = f(0, 0)$. 因此该函数在 $(0, 0)$ 处连续.

(2) 因为 $\lim\limits_{(x, y)\to(0, 0)}f(x, y) = 1 \neq 0 = f(0, 0)$, 所以该函数在 $(0, 0)$ 处不连续.

(3) 因为 $0 \le \left|\dfrac{x^2y^2}{(x^2+y^2)^{\frac{3}{2}}}\right| \le \left|\dfrac{x^2 + y^2}{(2xy)^{\frac{3}{2}}}\right| = \left|\dfrac{\sqrt{xy}}{2\sqrt{2}}\right|$, 且 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{\sqrt{xy}}{2\sqrt{2}} = 0$, 故由夹逼准则知 $\lim\limits_{(x, y)\to(0, 0)}f(x, y) = 0 = f(0, 0)$. 因此该函数在 $(0, 0)$ 处连续.

(4) 考虑极限 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{xy^2}{x^2+y^4}$. 当 $(x, y)$ 沿着 $y = k\sqrt{x}$ 趋于 $(0, 0)$ 时, 有 $f(x, y) = f(x, k\sqrt{x}) = \dfrac{k^2}{1 + k^4}$ 随着 $k$ 的变化而变化. 因此该极限不存在. 故该函数在 $(0, 0)$ 处不连续.

## 第 7 题

考察下列函数在平面上的连续性, 并指出在哪些点上函数是连续的.

(1) $f(x, y) = \begin{cases}\dfrac{x - y^2}{x^3+y^3}, &x + y \neq 0, \\ 0, &x + y = 0;\end{cases}$

(2) $f(x, y) = \begin{cases}\dfrac{x}{y^2}e^{-\frac{x^2}{y^2}}, &y \neq 0, \\ 0, &y = 0;\end{cases}$

**解**

(1) 当 $x + y \neq 0$ 的时候显然函数是连续的. 现只需考察 $x + y = 0$ 时的情况即可. 当 $x + y = 0$ 且 $(x, y)$ 不趋向于 $(0, 0)$ 时, 显然分子不为 $0$, 但分母趋向于 $0$, 极限不存在, 因此在 $x + y = 0(x \neq 0)$ 的区域内不连续. 最后再考察 $(x, y)\to (0, 0)$ 的情况. 假设 $(x, y)$ 沿着 $y = kx$ 趋于 $(0, 0)$, 则 $\lim\limits_{(x, y)\to(0, 0)}f(x, y) = \lim\limits_{x \to 0}\dfrac{x - (kx)^2}{x^3 + (kx)^3} = \lim\limits_{x \to 0}\dfrac{1 - k^2x}{(1 + k^3)x^2} = \lim\limits_{x \to 0}\dfrac{-k^2}{2x(1 + k^3)}$ 极限不存在. 因此函数在 $(0, 0)$ 处也不连续. 综上所述, 函数在除了 $x + y = 0$ 这条直线外的区域都连续.

(2) 先固定 $x = x_0$, $f(x, y) = f(x_0, y) = \dfrac{x_0}{y^2e^{\frac{x_0^2}{y^2}}} \to 0, \quad y \to 0$. 再考虑当 $(x, y)\to(0, 0)$ 时的极限值. 不妨设 $(x, y)$ 沿着 $y = kx$ 趋于 $(0, 0)$, 则 $\lim\limits_{(x, y)\to (0, 0)}f(x, y) = \lim\limits_{x\to 0}\dfrac{x}{(kx)^2}e^\frac{1}{k^2}$ 不存在. 因此该函数在 $(0, 0)$ 处不连续, 在平面上其他区域内都连续.

## 第 8 题

设 $f$ 是定义在 $\mathbb{R}^2$ 上的连续函数, 且 $\lim\limits_{x^2 + y^2 \to \infty}f(x, y) = +\infty$, 证明: $f$ 有最小值.

**证明**

记 $f(0, 0) = A$. 因为 $\lim\limits_{x^2 + y^2 \to \infty}f(x, y) = +\infty$, 所以 $\exists r_0 > 0$ 使得 $\forall (x, y)$ 满足 $x^2 + y^2 > r_0^2$, 都有 $f(x, y) > A$. 记 $D = \{(x, y) | x^2 + y^2 \le r_0^2\}$ 为一有界闭集, 故 $D$ 中可以取到最小值. 不妨设 $f(x_0, y_0)$ 为 $D$ 中最小值. 由于 $(0, 0) \in D$, 则 $f(x_0, y_0) \le f(0, 0) = A$. 所以 $\forall (x, y) \in \mathbb{R}^2, f(x_0, y_0) \le f(x, y)$. 所以 $f$ 在 $\mathbb{R}^2$ 上存在最小值.

## 第 9 题

当 $(x, y) \to (0, 0)$ 时, $f(x, y) = o(\rho^m), g(x, y) = o(\rho^n)$, 其中 $\rho = \sqrt{x^2 + y^2}$, 证明:

(1) $f(x, y) + g(x, y) = o(\rho^k), k = \min\{m, n\}$,

(2) $f(x, y)g(x, y) = o(\rho^{m+n})$.

**证明**

(1) 由题知 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{f(x, y)}{\rho^m} = 0, \lim\limits_{(x, y)\to(0, 0)}\dfrac{g(x, y)}{\rho^n} = 0$. 不妨设 $m \le n$. 因此 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{f(x, y) + g(x, y)}{\rho^m} = \lim\limits_{(x, y)\to (0, 0)}\left(\dfrac{f(x, y)}{\rho^m} + \rho^{n - m}\dfrac{g(x, y)}{\rho^n}\right) = 0 + 0 = 0$. 由定义知 $f(x, y) + g(x, y) = o(\rho^k)$, 其中 $k = \min\{m, n\}$.

(2) 由题知 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{f(x, y)}{\rho^m} = 0, \lim\limits_{(x, y)\to(0, 0)}\dfrac{g(x, y)}{\rho^n} = 0$. 因此 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{f(x, y)g(x, y)}{\rho^{m + n}} = \lim\limits_{(x, y)\to (0, 0)}\left(\dfrac{f(x, y)}{\rho^m} \cdot \dfrac{g(x, y)}{\rho^n}\right) = 0 \cdot 0 = 0$. 由定义知 $f(x, y)g(x, y) = o(\rho^{m+n})$.

## 第 10 题

当 $(x, y)\to(0, 0)$ 时, 讨论下列无穷小的阶(若有阶, 求阶; 若无阶, 说明理由).

(1) $\sin (x^2 + y^2)$;

(2) $\ln(1 + \sqrt{x^2 + y^2})$;

(3) $(x^2 + y^2)\sin\dfrac{1}{\sqrt{x^2 + y^2}}$;

(4) $x + y + 2xy$;

**解**

(1) 记 $\sqrt{x^2 + y^2} = \rho$. 则 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{\sin (x^2 + y^2)}{x^2 + y^2} = \lim\limits_{\rho \to 0}\dfrac{\sin\rho^2}{\rho^2} = 1$. 故为 $2$ 阶无穷小.

(2) 记 $\sqrt{x^2 + y^2} = \rho$. 则 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{\ln(1 + \sqrt{x^2 + y^2})}{\sqrt{x^2 + y^2}} = \lim\limits_{\rho \to 0}\dfrac{\ln(1 + \rho)}{\rho} = 1$. 故为 $1$ 阶无穷小.

(3) 记 $\sqrt{x^2 + y^2} = \rho$. 则 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{(x^2 + y^2)\sin\dfrac{1}{\sqrt{x^2 + y^2}}}{(\sqrt{x^2 + y^2})^k} = \lim\limits_{\rho \to 0}\dfrac{\rho^2\sin\dfrac{1}{\rho}}{\rho^k}$ 不可能为一固定常数, 所以无阶.

(4) 由于 $\lim\limits_{(x, y)\to(0, 0)}\dfrac{x + y + 2xy}{(\sqrt{x^2 + y^2})^k}$ 不可能为一固定常数, 所以无阶.
