
## 第 1 题

举出相应的例子.

(1) $u_n > 0, \lim\limits_{n \to \infty}u_n = 0$, 但 $\sum\limits_{n = 1}^{\infty}(-1)^{n}u_n$ 发散;

(2) $u_n > 0$, $\{u_n\}$ 单调递减, 但 $\sum\limits_{n = 1}^{\infty}(-1)^{n}u_n$ 发散.

**解**

(1) 构造 $u_n = \begin{cases}\dfrac{2}{k}, & n = 2k-1, \\ \dfrac{1}{k}, & n = 2k,\end{cases}$ 则 $\lim\limits_{n \to \infty}u_n = 0$. 但 $\sum\limits_{n = 1}^{\infty}(-1)^{n}u_n = \sum\limits_{k = 1}^{\infty}\dfrac{1}{k}$ 发散.

(2) 构造 $u_n = 1 + \dfrac{1}{n}$, 则 $\sum\limits_{n = 1}^{\infty}(-1)^{n}u_n = \sum\limits_{n = 1}^{\infty}(-1)^n + \sum\limits_{n = 1}^{\infty}\dfrac{(-1)^n}{n}$. 由于前者发散, 后者收敛, 故两者之和发散.

## 第 3 题

若级数 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛, 且 $\lim\limits_{n \to \infty}\dfrac{u_n}{v_n} = 1$, 能否断定级数 $\sum\limits_{n = 1}^{\infty}v_n$ 收敛?

**解**

不可以. 构造 $u_n = \dfrac{(-1)^n}{\sqrt{n}}, v_n = \dfrac{(-1)^n}{\sqrt{n}} + \dfrac{1}{n}$, 则满足

$$
\begin{aligned}
    \lim\limits_{n \to \infty}\dfrac{u_n}{v_n} & = \lim\limits_{n \to \infty}\dfrac{\frac{(-1)^n}{\sqrt{n}}}{\frac{(-1)^n}{\sqrt{n}} + \frac{1}{n}} \\
    & = \lim\limits_{n \to \infty} \dfrac{\sqrt{n}}{\sqrt{n} + (-1)^n} \\
    & = 1
\end{aligned}
$$

但显然 $\sum\limits_{n = 1}^{\infty}v_n$ 不收敛.

## 第 4 题

判断下列级数绝对收敛、条件收敛还是发散.

(1) $\sum\limits_{n = 1}^{\infty}\dfrac{(-1)^n}{\sqrt{n + 1}}$;

(3) $\sum\limits_{n = 1}^{\infty}(-1)^{n}\dfrac{n}{n + 1}$;

(5) $\sum\limits_{n = 1}^{\infty}\dfrac{1}{2^n}\sin\dfrac{n\pi}{4}$;

(7) $\sum\limits_{n = 1}^{\infty}(-1)^{n}\dfrac{2^{n^2}}{n!}$;

(9) $\sum\limits_{n = 1}^{\infty}(-1)^n(\sqrt{n + 1} - \sqrt{n})$;

(11) $\sum\limits_{n = 2}^{\infty}\dfrac{(-1)^n}{\sqrt{n + (-1)^n}}$;

(13) $\dfrac{1}{\sqrt{2} - 1} + \dfrac{1}{\sqrt{2} + 1} + \dfrac{1}{\sqrt{3} - 1} + \dfrac{1}{\sqrt{3} + 1} + \cdots + \dfrac{1}{\sqrt{n} - 1} + \dfrac{1}{\sqrt{n} + 1} + \cdots$;

(14) $1 - \ln 2 + \dfrac{1}{2} - \dfrac{3}{2} + \dfrac{1}{n} - \ln\dfrac{n + 1}{n} + \cdots$.

**解**

(1) 由于 $\sum\limits_{n = 1}^{\infty}\dfrac{(-1)^n}{\sqrt{n + 1}}$ 为 Leibniz 级数, 故该级数收敛. 而

$$
\sum\limits_{n = 1}^{\infty}\left|(-1)^{n}\dfrac{1}{\sqrt{n + 1}}\right| = \sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt{n + 1}}
$$

发散. 故原级数条件收敛.

(3) 由于 $\sum\limits_{n = 1}^{\infty}(-1)^{n}\dfrac{n}{n + 1} = \sum\limits_{n = 1}^{\infty}(-1)^n + \sum\limits_{n = 1}^{\infty}\dfrac{(-1)^{n - 1}}{n + 1}$, 且前者发散, 后者收敛, 故原级数发散.

(5) 由于 $\left|\dfrac{1}{2^n}\sin\dfrac{n\pi}{4}\right|\le \dfrac{1}{2^n}$ 且 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{2^n}$ 收敛, 故原级数绝对收敛.

(7) 由于

$$
\begin{aligned}
    \sum\limits_{n = 1}^{\infty}(-1)^{n}\dfrac{2^{n^2}}{n!} & = \sum\limits_{k = 1}^{\infty}\left(-\dfrac{2^{(2k-1)^2}}{(2k - 1)!} + \dfrac{2^{(2k)^2}}{(2k)!}\right) \\
    & = \sum\limits_{k = 1}^{\infty}\dfrac{2^{(2k - 1)^2}}{(2k)!}\cdot(2^{4k - 1} - 2k)
\end{aligned}
$$

显然 $\lim\limits_{k \to \infty}\dfrac{2^{(2k - 1)^2}}{(2k)!}\cdot(2^{4k - 1} - 2k) \neq 0$. 故该级数发散.

(9) 由于 $\sum\limits_{n = 1}^{\infty}(-1)^n(\sqrt{n + 1} - \sqrt{n})$ 为 Leibniz 级数, 故该级数收敛. 而

$$
\begin{aligned}
    \sum\limits_{n = 1}^{\infty}\left|(-1)^n(\sqrt{n + 1} - \sqrt{n})\right| & = \sum\limits_{n = 1}^{\infty}\left(\sqrt{n + 1} - \sqrt{n}\right) \\
    & = \lim\limits_{n \to \infty}\sqrt{n + 1} - 1
\end{aligned}
$$

故该级数的通项加上绝对值后发散. 综上所述, 该级数条件收敛.

(11) 由于

$$
\begin{aligned}
    \sum\limits_{n = 2}^{\infty}\dfrac{(-1)^n}{\sqrt{n + (-1)^n}} & = \sum\limits_{k = 1}^{\infty}\left(\dfrac{(-1)^{2k}}{\sqrt{2k + (-1)^{2k}}} + \dfrac{(-1)^{2k + 1}}{\sqrt{2k + 1 + (-1)^{2k + 1}}}\right) \\
    & = \sum\limits_{k = 1}^{\infty}\left(\dfrac{1}{\sqrt{2k + 1}} - \dfrac{1}{\sqrt{2k}}\right) \\
    & = \sum\limits_{n = 2}^{\infty}\dfrac{(-1)^{n - 1}}{\sqrt{n}}
\end{aligned}
$$

为 Leibniz 级数, 因此该级数收敛. 而

$$
\begin{aligned}
    \sum\limits_{n = 2}^{\infty}\left|\dfrac{(-1)^n}{\sqrt{n + (-1)^n}}\right| & = \sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt{n + (-1)^{n}}} \\
    & \ge \sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt{n + 1}} \\
\end{aligned}
$$

故该级数的通项加上绝对值后发散. 综上所述, 该级数条件收敛.

(13)

$$
\begin{aligned}
    & \quad \dfrac{1}{\sqrt{2} - 1} + \dfrac{1}{\sqrt{2} + 1} + \dfrac{1}{\sqrt{3} - 1} + \dfrac{1}{\sqrt{3} + 1} + \cdots + \dfrac{1}{\sqrt{n} - 1} + \dfrac{1}{\sqrt{n} + 1} + \cdots \\
    & = \sum\limits_{n = 2}^{\infty}\left(\dfrac{1}{\sqrt{n} - 1} + \dfrac{1}{\sqrt{n} + 1}\right) \\
    & = \sum\limits_{n = 2}^{\infty}\dfrac{2\sqrt{n}}{n - 1} \\
    & \ge \sum\limits_{n = 2}^{\infty}\dfrac{2}{n - 1}
\end{aligned}
$$

故原级数发散.

(14)

$$
\begin{aligned}
    & \quad 1 - \ln 2 + \dfrac{1}{2} - \dfrac{3}{2} + \dfrac{1}{n} - \ln\dfrac{n + 1}{n} + \cdots \\
    & = \sum\limits_{n = 1}^{\infty}\left(\dfrac{1}{n} - \ln\dfrac{n + 1}{n}\right) \\
    & = \lim\limits_{n \to \infty}\left(\sum\limits_{k = 1}^{n}\dfrac{1}{k} - \ln(n + 1)\right) \\
    & = \lim\limits_{n \to \infty}\left(\ln n + \gamma + \epsilon_n - \ln(n + 1)\right) \\
    & = \gamma
\end{aligned}
$$

其中 $\lim\limits_{n \to \infty}\epsilon_n = 0, \gamma = 0.577216\cdots$. 故原级数绝对收敛.

## 第 6 题

级数 $\sum\limits_{n = 1}^{\infty}a_n^2, \sum\limits_{n = 1}^{\infty}b_n^2$ 收敛, 证明: $\sum\limits_{n = 1}^{\infty}(a_n + b_n)^2$ 收敛, $\sum\limits_{n = 1}^{\infty}\dfrac{a_n}{n}$ 绝对收敛.

**证明**

由于 $(a_n + b_n)^2 \le 2(a_n^2 + b_n^2)$, 且 $\sum\limits_{n = 1}^{\infty}2(a_n^2 + b_n^2)$ 收敛, 故由比较判别法知 $\sum\limits_{n = 1}^{\infty}(a_n + b_n)^2$ 收敛.

不妨设 $a_n > 0$. 由于 $\dfrac{a_n}{n} \le a_n^2 + \dfrac{1}{4n^2}$, 且 $\sum\limits_{n = 1}^{\infty}\left(a_n^2 + \dfrac{1}{4n^2}\right) = \sum\limits_{n = 1}^{\infty}a_n^2 + \sum\limits_{n = 1}^{\infty}\dfrac{1}{4n^2}$ 收敛, 故由比较判别法知 $\sum\limits_{n = 1}^{\infty}\dfrac{a_n}{n}$ 绝对收敛.

## 第 7 题

若级数 $\sum\limits_{n = 1}^{\infty}a_n, \sum\limits_{n = 1}^{\infty}b_n$ 均收敛, 且 $a_n \le c_n \le b_n$, 证明: $\sum\limits_{n = 1}^{\infty}c_n$ 收敛.

**证明**

由于 $0 \le c_n - a_n \le b_n - a_n$, 且 $\sum\limits_{n = 1}^{\infty}(b_n - a_n)$ 收敛, 故由比较判别法知 $\sum\limits_{n = 1}^{\infty}(c_n - a_n)$ 收敛. 又因为 $\sum\limits_{n = 1}^{\infty}a_n$ 收敛, 故 $\sum\limits_{n = 1}^{\infty}c_n$ 收敛.

## 第 9 题

设正项数列 $\{u_n\}$ 单调减少, 且级数 $\sum\limits_{n = 1}^{\infty}(-1)^nu_n$ 发散, 证明: 级数 $\sum\limits_{n = 1}^{\infty}\left(\dfrac{1}{1 + u_n}\right)^n$ 收敛.

**证明**

由于正项数列 $\{u_n\}$ 单调减少, 故 $\lim\limits_{n \to \infty}u_n \ge 0$. 假设 $\lim\limits_{n \to \infty}u_n = 0$, 则级数 $\sum\limits_{n = 1}^{\infty}(-1)^nu_n$ 收敛, 矛盾. 故 $\lim\limits_{n \to \infty}u_n > 0$, 不妨设为 $c$. 由于

$$
\lim\limits_{n \to \infty}\sqrt[n]{\left(\dfrac{1}{1 + u_n}\right)^n} = \lim\limits_{n \to \infty}\dfrac{1}{1 + u_n} = \dfrac{1}{1 + c} < 1
$$

由根值判别法知级数 $\sum\limits_{n = 1}^{\infty}\left(\dfrac{1}{1 + u_n}\right)^n$ 收敛.
