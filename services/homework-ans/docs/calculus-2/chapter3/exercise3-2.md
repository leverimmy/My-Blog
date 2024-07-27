
## 第 2 题

证明: $1.96<\iint\limits_{\left|x\right| + \left|y\right| \le 10}\dfrac{\text{d}{x}\text{d}{y}}{100 + \cos^2 x + \cos^2 y}<2$.

**证明**

由于 $\cos^2 x + \cos^2 y \in [0, 2]$, 因此

$$
1.96<\dfrac{200}{102} < \iint\limits_{\left|x\right| + \left|y\right| \le 10}\dfrac{\text{d}{x}\text{d}{y}}{100 + \cos^2 x + \cos^2 y}<\dfrac{200}{100} = 2.
$$

## 第 3 题

比较下列各组积分值的大小.

(1) $\iint\limits_{D}(x + y)^2\text{d}{x}\text{d}{y}$ 与 $\iint\limits_{D}(x + y)^3\text{d}{x}\text{d}{y}$, 其中 $D = \{(x, y) | (x - 2)^2 + (y - 2)^2 \le 2\}$;

(2) $\iint\limits_{D}\ln(x + y)\text{d}{x}\text{d}{y}$ 与 $\iint\limits_{D}xy\text{d}{x}\text{d}{y}$, 其中 $D$ 由直线 $x = 0, y = 0, x + y = \dfrac{1}{2}, x + y = 1$ 围成.

**解**

(1) 由于在 $D$ 上有 $x + y \ge 1$, 因此 $\iint\limits_{D}(x + y)^2\text{d}{x}\text{d}{y} \le \iint\limits_{D}(x + y)^3\text{d}{x}\text{d}{y}$.

(2) 由于在 $D$ 上有 $xy \ge \ln(x + y)$, 因此 $\iint\limits_{D}\ln(x + y)\text{d}{x}\text{d}{y} \le \iint\limits_{D}xy\text{d}{x}\text{d}{y}$.

## 第 4 题

设 $D \subset \mathbb{R}^2$ 为有界闭矩形, 非负函数 $f(x, y) \in C(D)$, 证明: 若 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y} = 0$, 则 $f(x, y) = 0, \forall (x, y) \in D$.

**证明**

反证法. 假设 $\exists P_0(x_0, y_0)$ 使得 $f(x_0, y_0) \neq 0$, 则 $\exists \delta > 0$, 使得 $\forall (x, y) \in B(P_0, \delta)$, 均有 $f(x, y) > 0$. 因此 $\iint\limits_{B(P_0, \delta)\subset D}f(x, y)\text{d}{x}\text{d}{y} > 0$. 而其他区域上 $f(x, y)$ 非负, 所以 $\iint\limits_{D}f(x, y)\text{d}{x}\text{d}{y} \ge \iint\limits_{B(P_0, \delta)\subset D}f(x, y)\text{d}{x}\text{d}{y} > 0$. 与题目条件矛盾. 故 $f(x, y) = 0, \forall (x, y) \in D$.

## 第 5 题

函数 $f(x, y)$ 在 $(0, 0)$ 的某个邻域内连续, 计算极限 $\lim\limits_{r \to 0^{+}}\dfrac{1}{r^2}\iint\limits_{x^2 + y^2 \le r^2}f(x, y)\text{d}{x}\text{d}{y}$.

**证明**

由于 $f(x, y)$ 在 $O(0, 0)$ 的某个邻域内连续, 不妨记为 $B(O, \delta)$, 因此由多元函数的中值定理可得 $\exists \xi, \eta \in (0, \min\{\delta, r\})$ 使得 $\iint\limits_{x^2 + y^2 \le r^2}f(x, y)\text{d}{x}\text{d}{y} = f(\xi, \eta)\iint\limits_{x^2 + y^2 \le r^2}\text{d}{x}\text{d}{y} = \pi r^2 f(\xi, \eta)$. 故

$$
\lim\limits_{r \to 0^{+}}\dfrac{1}{r^2}\iint\limits_{x^2 + y^2 \le r^2}f(x, y)\text{d}{x}\text{d}{y} = \lim\limits_{r \to 0^{+}}\dfrac{f(\xi, \eta)}{r^2}\pi r^2 = \pi f(0, 0)
$$
