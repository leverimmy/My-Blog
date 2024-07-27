
## 第 4 题
设 $f \in C[0, 2a], f(0) = f(2a)$. 求证：$\exists \xi \in[0, a]$ 使得 $f(\xi) = f(\xi + a)$.

**证明**
设 $F(x) = f(x) - f(x + a)$. 由 $f \in C[0, 2a]$ 知 $F \in C[0, a]$. 注意到 $F(0) = f(0) - f(a)$, $F(a) = f(a) - f(2a) = f(a) - f(0) = -F(0)$, 不妨设 $F(0) \le 0 \le  F(a)$. 由介值定理知 $\exists \xi \in[0, a]$ 使得 $F(\xi) = 0$. 即得 $f(\xi) = f(\xi + a)$.
