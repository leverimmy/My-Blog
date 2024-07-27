
## 第 2 题

级数 $\sum\limits_{n = 1}^{\infty}u_n$ 的部分和序列 $S_n$ 满足 $\lim\limits_{n \to \infty}S_{2n + 1}$ 存在, $\lim\limits_{n\to \infty}u_n = 0$, 证明: $\sum\limits_{n = 1}^{\infty}u_n$ 收敛.

**证明**

设 $\lim\limits_{n\to\infty}S_{2n + 1} = L$. 由于 $\lim\limits_{n\to\infty}S_{2n} = \lim\limits_{n \to \infty}(S_{2n + 1} - u_{2n + 1}) = \lim\limits_{n \to \infty}S_{2n + 1} - \lim\limits_{n \to \infty}u_{2n + 1} = L$, 故 $\sum\limits_{n = 1}^{\infty}u_n = \lim\limits_{n\to\infty}S_{2n + 1} = \lim\limits_{n\to\infty}S_{2n} = L$, 级数收敛.

## 第 3 题

已知级数 $\sum\limits_{n = 1}^{\infty}u_n$ 的部分和序列 $S_n = \dfrac{2n}{n + 1}, n = 1, 2, \cdots$, 求:

(1) $u_n$ 的通项公式;

(2) 判断 $\sum\limits_{n = 1}^{\infty}u_n$ 的收敛性.

**解**

(1) 当 $n = 1$ 时, $u_1 = S_1 = 1$. 当 $n \ge 2$ 时, $u_n = S_{n} - S_{n - 1} = \dfrac{2n}{n + 1} - \dfrac{2(n - 1)}{n} = \dfrac{2}{n(n + 1)}$. 因此 $u_n = \dfrac{2}{n(n + 1)}(n \in \mathbb{N^*})$.

(2) 由题知 $\sum\limits_{n = 1}^{\infty}u_n = \lim\limits_{n \to \infty}S_n = \lim\limits_{n \to \infty}\dfrac{2n}{n + 1} = 2$. 该级数收敛.

## 第 4 题

已知级数 $\sum\limits_{n = 1}^{\infty}u_n$ 中 $u_n > 0$, 证明:

(1) $\sum\limits_{n = 1}^{\infty}u_n$ 收敛 $\iff$ 级数 $(u_1 + \cdots + u_{n_1}) + (u_{n_1 + 1} + \cdots + u_{n_2}) + \cdots + (u_{n_{k-1} + 1} + \cdots + u_{n_k}) + \cdots$ 收敛;

(2) $\sum\limits_{n = 1}^{\infty}u_n$ 收敛 $\implies$ $\sum\limits_{n = 1}^{\infty}u_{2n + 1}$ 收敛.

**证明**

(1) $\implies$: 设 $\sum\limits_{n = 1}^{\infty}u_n$ 的部分和数列为 $\{S_n\}$, 则新的级数的部分和数列为 $\{S_{n_k}\}$, $\{S_{n_k}\}$ 为 $\{S_n\}$ 的子列, 有相同的收敛性, 且收敛到同一数.

$\impliedby$: 取 $n_k = k$, 则得证.

(2) 由于 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛, 所以 $\forall \epsilon > 0, \exists N \in \mathbb{N^*}, \forall n > N, \forall p \in \mathbb{N^*}$, 有 $\left|\sum\limits_{k = n + 1}^{n + p}u_k\right| < \epsilon$. 对 $n'= 2n+2 > N, p' = 2p - 1 > 0$, 有 $\left|\sum\limits_{k = 2n + 3}^{2n + 2p + 1}u_k\right| < \epsilon$. 因此 $\left|\sum\limits_{k = n + 1}^{n + p}u_{2k + 1}\right| < \left|\sum\limits_{k = 2n + 3}^{2n + 2p + 1}u_k\right| < \epsilon$. 因此 $\sum\limits_{n = 1}^{\infty}u_{2n + 1}$ 收敛.

## 第 5 题

设数列 $\{u_n\}$ 满足 $\lim\limits_{n \to \infty}nu_n = 0$, 证明: 级数 $\sum\limits_{n = 1}^{\infty}(n+1)(u_{n+1}-u_n)$ 收敛等价于 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛.

**证明**

由于 $\lim\limits_{n \to \infty}nu_n = 0$, 故 $\exists N \in \mathbb{N}$, $\forall \epsilon > 0, \forall n \ge N$, 有 $\left|nu_n\right| < \dfrac{\epsilon}{3}$. $\forall p > 0$, 显然 $n + p \ge N$, 因此也有 $\left|(n + p + 1)u_{n + p + 1}\right| < \dfrac{\epsilon}{3}$. 对上述 $\epsilon > 0$, 考虑 $\left|\sum\limits_{k = n + 1}^{n + p}(k + 1)(u_{k + 1} - u_k)\right| = \left|(n + p + 1)u_{n + p + 1} - (n + 1)u_{n + 1} - \sum\limits_{k = n + 1}^{n + p}u_k\right|$.

若 $\sum\limits_{n = 1}^{\infty}(n+1)(u_{n+1}-u_n)$ 收敛, 则 $\left|\sum\limits_{k = n + 1}^{n + p}(k + 1)(u_{k + 1} - u_k)\right| = \left|(n + p + 1)u_{n + p + 1} - (n + 1)u_{n + 1} - \sum\limits_{k = n + 1}^{n + p}u_k\right| < \epsilon$, 则 $\left|\sum\limits_{k = n + 1}^{n + p}u_k\right| < 3\epsilon$. 这说明 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛.

反之, 若 $\sum\limits_{n = 1}^{\infty}u_n$ 收敛, 则 $\left|\sum\limits_{k = n + 1}^{n + p}(k + 1)(u_{k + 1} - u_k)\right| = \left|(n + p + 1)u_{n + p + 1} - (n + 1)u_{n + 1} - \sum\limits_{k = n + 1}^{n + p}u_k\right| < 3\epsilon$, 这说明 $\sum\limits_{n = 1}^{\infty}(n+1)(u_{n+1}-u_n)$ 收敛.

命题得证.

## 第 6 题

利用定义判断下列级数的敛散性, 对收敛的级数求和.

(1) $\sum\limits_{n = 1}^{\infty}100\left(\dfrac{1}{4}\right)^{n-1}$;

(3) $\sum\limits_{n = 1}^{\infty}\dfrac{1}{(2n-1)(2n + 3)}$;

(5) $\sum\limits_{n = 1}^{\infty}\dfrac{(-1)^{n}n^3}{2n^3 + n}$;

(7) $\sum\limits_{n = 1}^{\infty}\arctan{\dfrac{1}{2n^2}}$;

(9) $\sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt[n]{n}}$.

**解**

(1) 由于 $S_n = 100 \times 1 \times\dfrac{1 - \left(\frac{1}{4}\right)^{n}}{1 - \frac{1}{4}} = \dfrac{400}{3}\left(1 - 4^{-n}\right)$, 因此 $\sum\limits_{n = 1}^{\infty}100\left(\dfrac{1}{4}\right)^{n-1} = \lim\limits_{n \to \infty}S_n = \dfrac{400}{3}$.

(3) 由于 $S_n = \dfrac{1}{4}\sum\limits_{k = 1}^{n}\left(\dfrac{1}{2k - 1} - \dfrac{1}{2k + 3}\right) = \dfrac{1}{4}\left(\dfrac{4}{3} - \dfrac{1}{2n + 1} - \dfrac{1}{2n + 3}\right)$, 因此 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{(2n-1)(2n + 3)} = \lim\limits_{n\to\infty}S_n = \dfrac{1}{3}$.

(5) 由于 $\lim\limits_{n \to \infty}u_n$ 不存在, 所以该级数发散.

(7) 由于 $\arctan{\dfrac{1}{2n^2}} = \arctan{\dfrac{1}{2n - 1}} - \arctan{\dfrac{1}{2n + 1}}$, 所以 $S_n = \sum\limits_{k = 1}^{n}\left(\arctan\dfrac{1}{2k - 1} - \arctan\dfrac{1}{2k + 1}\right) = \arctan 1 - \arctan\dfrac{1}{2n + 1} = \dfrac{\pi}{4} -  \arctan\dfrac{1}{2n + 1}$. 故 $\sum\limits_{n = 1}^{\infty}\arctan{\dfrac{1}{2n^2}} = \lim\limits_{n \to \infty}S_n = \dfrac{\pi}{4}$.

(9) 由于 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{\sqrt[n]{n}} \ge \sum\limits_{n = 1}^{\infty}\dfrac{1}{n}$, 且后者发散, 故级数发散.

## 第 7 题

求级数 $\sum\limits_{n = 1}^{\infty}\dfrac{1}{n(n+m)}(m > 0, m \in \mathbb{Z})$ 的和.

**解**

$$
\begin{aligned}
    \sum\limits_{n = 1}^{\infty}\dfrac{1}{n(n+m)} & = \dfrac{1}{m}\sum\limits_{n = 1}^{\infty}\left(\dfrac{1}{n} - \dfrac{1}{n + m}\right) \\
    & = \dfrac{1}{m}\lim\limits_{n \to \infty}\sum\limits_{k = 1}^{n}\left(\dfrac{1}{n} - \dfrac{1}{n + m}\right) \\
    & = \dfrac{1}{m}\lim\limits_{n \to \infty}\left(1 + \dfrac{1}{2} + \cdots + \dfrac{1}{m} - \dfrac{1}{n + 1} - \dfrac{1}{n + 2} - \cdots - \dfrac{1}{n + m}\right) \\
    & = \dfrac{1}{m}\sum\limits_{k = 1}^{m}\dfrac{1}{k}
\end{aligned}
$$
