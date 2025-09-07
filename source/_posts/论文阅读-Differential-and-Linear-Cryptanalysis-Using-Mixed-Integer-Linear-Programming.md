---
title: "论文阅读：Differential and Linear Cryptanalysis Using Mixed-Integer Linear Programming"
tags:
  - 密码学
  - 差分分析
  - MILP
categories:
  - 科研
mathjax: true
toc: true
date: 2025-07-05 11:56:40
password:
id: Paper-Reading-Differential-and-Linear-Cryptanalysis-Using-Mixed-Integer-Linear-Programming
---

主要学习了“差分分析及其自动化”这个领域内的两篇论文：

- Differential and Linear Cryptanalysis Using Mixed-Integer Linear Programming，[论文链接](https://link.springer.com/chapter/10.1007/978-3-642-34704-7_5)
- Automatic Security Evaluation and (Related-key) Differential Characteristic Search: Application to SIMON, PRESENT, LBlock, DES(L) and Other Bit-oriented Block Ciphers，ASIACRYPT 14'，[论文链接](https://www.iacr.org/archive/asiacrypt2014/88730115/88730115.pdf)

<!--more-->

## 背景知识

### 差分分析

#### 一轮加密

假设有以下一轮加密过程，其中 $m$ 为明文，$c$ 为密文，$k_0, k_1 \in \{0, 1\}^n$ 为密钥，$S$ 为 S-box。

```
      k_0                       k_1
       |                         |
       v                         v
m -> (xor) -> u -> [S] -> v -> (xor) -> c
```

这里 $c = S(m \oplus k_0) \oplus k_1$。朴素的破译方法是枚举 $k_0, k_1$，有 $2^{2n}$ 种可能。但假设我们知道 $(m_1, c_1), (m_2, c_2)$ 两个明密文对，则 $u_1 \oplus u_2 = (m_1 \oplus k_0) \oplus (m_2 \oplus k_1) = m_1 \oplus m_2$，因此

$$
m_1 \oplus m_2 = S^{-1}(c_1 \oplus k_1) \oplus S^{-1}(c_2 \oplus k_1)
$$

可以看出，此时只需要枚举 $k_1$ 即可，有 $2^n$ 种可能；这相较于 $2^{2n}$ 取得了极大进步。

#### 二轮加密

假设有以下二轮加密过程，其中 $m$ 为明文，$c$ 为密文，$k_0, k_1, k_2 \in \{0, 1\}^n$ 为密钥，$S$ 为 S-box。

```
      k_0                       k_1                       k_2
       |                         |                         |
       v                         v                         v
m -> (xor) -> u -> [S] -> v -> (xor) -> w -> [S] -> x -> (xor) -> c
```

这里 $c = S(S(m \oplus k_0) \oplus k_1) \oplus k_2$。朴素的破译方法是枚举 $k_0, k_1, k_2$，有 $2^{3n}$ 种可能。如果采用一轮加密中的想法，可以不用枚举 $k_0$，只枚举 $k_1, k_2$，有 $2^{2n}$ 种可能：

$$
m_1 \oplus m_2 = S^{-1}(S^{-1}(c_1 \oplus k_2) \oplus k_1) \oplus S^{-1}(S^{-1}(c_2 \oplus k_2) \oplus k_1)
$$

接下来介绍的差分分析的方法，可以将可能性再次降低，降低为 $2^n$。假设 S-box 如下：

| $x$ | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | a | b | c | d | e | f |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| $S(x)$ | 6 | 4 | c | 5 | 0 | 7 | 2 | e | 1 | f | 3 | d | 8 | a | 9 | b |

当 $\Delta_{\textrm{in}} = m_1 \oplus m_2 = \textrm{0xf}$ 的时候，由下表可知，$\Delta_{\textrm{out}} = v_1 \oplus v_2 = \textrm{0xd}$ 的概率最高，为 $10/16$。

| $i$ | $j$ | $S(i)$ | $S(j)$ | $S(i)\oplus S(j)$ |
| :-: | :-: | :----: | :----: | :---------------: |
|  0  |  f  |   6    |   b    |       **d**       |
|  1  |  e  |   4    |   9    |       **d**       |
|  2  |  d  |   c    |   a    |         6         |
|  3  |  c  |   5    |   8    |       **d**       |
|  4  |  b  |   0    |   d    |       **d**       |
|  5  |  a  |   7    |   3    |         4         |
|  6  |  9  |   2    |   f    |       **d**       |
|  7  |  8  |   e    |   1    |         f         |
|  8  |  7  |   1    |   e    |         f         |
|  9  |  6  |   f    |   2    |       **d**       |
|  a  |  5  |   3    |   7    |         4         |
|  b  |  4  |   d    |   0    |       **d**       |
|  c  |  3  |   8    |   5    |       **d**       |
|  d  |  2  |   a    |   c    |         6         |
|  e  |  1  |   9    |   4    |       **d**       |
|  f  |  0  |   b    |   6    |       **d**       |

因此，在 $\Delta_{\textrm{in}} = u_1 \oplus u_2 = m_1 \oplus m_2 = \textrm{0xf}$ 的情况下，可以得到带概率的方程：

$$
\Delta_{\textrm{out}} = v_1 \oplus v_2 = S^{-1}(c_1 \oplus k_2) \oplus S^{-1}(c_2 \oplus k_2) = \textrm{0xd}
$$

由以上分析可知，随机选取 $m_1 \in \{0, 1\}^n$，取 $m_2 = m_1 \oplus \textrm{0xf}$，计算得到 $c_1, c_2$，则跨越第一个 S-box 的输出中，

$$
\textrm{Pr}(v_1 \oplus v_2 = \textrm{0xd}) = \frac{10}{16}
$$

只需要枚举 $k_2$，就可以由 $c_1, c_2$ 算出 $v_1 \oplus v_2 = S^{-1}(c_1 \oplus k_2) \oplus S^{-1}(c_2 \oplus k_2)$。

借助计数器可以实现这个差分分析的过程。在统计的过程中，若 $v_1 \oplus v_2 = \textrm{0xd}$，则计数器加一。正确密钥（称之为 Signal）的计数应该远高于错误密钥（称之为 Noise）的计数。统计计数器中数目最多的 index，即为 $k_2$。

编写代码如下：

```python
import random

S = [6, 4, 0xc, 5, 0, 7, 2, 0xe, 1, 0xf, 3, 0xd, 8, 0xa, 9, 0xb]
S_inv = [S.index(i) for i in range(16)]


k_0 = random.randint(0, 15)
k_1 = random.randint(0, 15)
k_2 = random.randint(0, 15)
N = 1000


def c(m):
    return S[S[m ^ k_0] ^ k_1] ^ k_2


if __name__ == '__main__':
    cnt = [0 for _ in range(16)]
    for guess in range(16):
        for _ in range(N):
            m_1 =  random.randint(0, 15)
            m_2 = m_1 ^ 0xf
            c_1 = c(m_1)
            c_2 = c(m_2)

            x_1_x_2 = S_inv[c_1 ^ guess] ^ S_inv[c_2 ^ guess]
            if x_1_x_2 == 0xd:
                cnt[guess] += 1
    for i in range(16):
        print(f'[ Stat ] guess: {i}, count: {cnt[i]}')
    guess_k_2 = cnt.index(max(cnt))
    print(f'[ Guess ] guessed k_2: {guess_k_2}, real k_2: {k_2}')

    # 继续猜测 k_1
    cnt = [0 for _ in range(16)]
    for guess in range(16):
        for _ in range(N):
            m_1 = random.randint(0, 15)
            m_2 = random.randint(0, 15)
            c_1 = c(m_1)
            c_2 = c(m_2)

            x_1_x_2 = S_inv[S_inv[c_1 ^ guess_k_2] ^ guess] ^ S_inv[S_inv[c_2 ^ guess_k_2] ^ guess]
            if x_1_x_2 == m_1 ^ m_2:
                cnt[guess] += 1
    for i in range(16):
        print(f'[ Stat ] guess: {i}, count: {cnt[i]}')
    guess_k_1 = cnt.index(max(cnt))
    print(f'[ Guess ] guessed k_1: {guess_k_1}, real k_1: {k_1}')

    # 继续猜测 k_0
    cnt = [0 for _ in range(16)]
    m_1 = random.randint(0, 15)
    c_1 = c(m_1)
    guess_k_0 = S_inv[S_inv[c_1 ^ guess_k_2] ^ guess_k_1] ^ m_1
    print(f'[ Guess ] guessed k_0: {guess_k_0}, real k_0: {k_0}')

    print(f'[ Result ] guess_k_0: {guess_k_0}, \tk_0: {k_0}\n[ Result ] guess_k_1: {guess_k_1}, \tk_1: {k_1}\n[ Result ] guess_k_2: {guess_k_2}, \tk_2: {k_2}')

    assert guess_k_0 == k_0, 'Guess k_0 failed!'
    assert guess_k_1 == k_1, 'Guess k_1 failed!'
    assert guess_k_2 == k_2, 'Guess k_2 failed!'
    print('[ Success ] All keys guessed successfully!')
```

运行结果为：

```
...
[ Guess ] guessed k_2: 5, real k_2: 5
...
[ Guess ] guessed k_1: 13, real k_1: 13
[ Guess ] guessed k_0: 14, real k_0: 14
[ Result ] guess_k_0: 14,       k_0: 14
[ Result ] guess_k_1: 13,       k_1: 13
[ Result ] guess_k_2: 5,        k_2: 5
[ Success ] All keys guessed successfully!
```

由于以上代码中的二轮加密的算法的密钥 $k_0, k_1, k_2$ 都是随机选取的，所以说明破译成功。

#### 三轮加密

假设有以下三轮加密过程，其中 $m$ 为明文，$c$ 为密文，$k_0, k_1, k_2, k_3 \in \{0, 1\}^n$ 为密钥，$S$ 为 S-box。

```
      k_0                  k_1                  k_2                       k_3
       |                    |                    |                         |
       v                    v                    v                         v
m -> (xor) -> u -> [S] -> (xor) -> [S] -> x -> (xor) -> y -> [S] -> z -> (xor) -> c
```

这里 $c = S(S(S(m \oplus k_0) \oplus k_1) \oplus k_2) \oplus k_3$。选择两个明密文对 $(m_1, c_1), (m_2, c_2)$，通过猜测 $k_3$，可以得到 $\Delta_{\textrm{out}} = x_1 \oplus x_2 = S^{-1}(c_1 \oplus k_3) \oplus S^{-1}(c_2 \oplus k_3)$。此时，我们也已知 $\Delta_{\textrm{in}} = u_1 \oplus u_2 = m_1 \oplus m_2$，所以我们**需要在 2 层 S-box 中找到高概率的输入输出差分对应关系**。

画出 S-box 的差分特征如下表所示：

| $\alpha$ \ $\beta$ |  0   |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  a   |  b   |   c   |   d    |  e   |  f   |
| :----------------: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :---: | :----: | :--: | :--: |
|       **0**        |  16  |  -   |  -   |  -   |  -   |  -   |  -   |  -   |  -   |  -   |  -   |  -   |   -   |   -    |  -   |  -   |
|       **1**        |  -   |  -   |  6   |  -   |  -   |  -   |  -   |  2   |  -   |  2   |  -   |  -   |   2   |   -    |  4   |  -   |
|       **2**        |  -   |  6   |  6   |  -   |  -   |  -   |  -   |  -   |  -   |  2   |  2   |  -   |   -   |   -    |  -   |  -   |
|       **3**        |  -   |  -   |  -   |  6   |  -   |  2   |  -   |  -   |  2   |  -   |  -   |  -   |   4   |   -    |  2   |  -   |
|       **4**        |  -   |  -   |  -   |  2   |  -   |  2   |  4   |  -   |  -   |  2   |  2   |  2   |   -   |   -    |  2   |  -   |
|       **5**        |  -   |  2   |  2   |  -   |  4   |  -   |  -   |  4   |  2   |  -   |  -   |  2   |   -   |   -    |  -   |  -   |
|       **6**        |  -   |  -   |  2   |  -   |  4   |  -   |  -   |  2   |  2   |  -   |  2   |  2   |   2   |   -    |  -   |  -   |
|       **7**        |  -   |  -   |  -   |  -   |  -   |  4   |  4   |  -   |  2   |  2   |  2   |  2   |   -   |   -    |  -   |  -   |
|       **8**        |  -   |  -   |  -   |  -   |  -   |  2   |  -   |  2   |  4   |  -   |  -   |  4   |   -   |   2    |  -   |  2   |
|       **9**        |  -   |  2   |  -   |  -   |  -   |  2   |  2   |  2   |  -   |  4   |  2   |  -   |   -   |   -    |  -   |  2   |
|       **a**        |  -   |  -   |  -   |  -   |  2   |  2   |  -   |  -   |  -   |  4   |  4   |  -   |   2   |   2    |  -   |  -   |
|       **b**        |  -   |  -   |  -   |  2   |  2   |  -   |  2   |  2   |  2   |  -   |  -   |  4   |   -   |   -    |  2   |  -   |
|       **c**        |  -   |  4   |  -   |  2   |  -   |  2   |  -   |  -   |  2   |  -   |  -   |  -   |   -   |   -    |  6   |  -   |
|       **d**        |  -   |  -   |  -   |  -   |  -   |  -   |  2   |  2   |  -   |  -   |  -   |  -   | **6** |   2    |  -   |  4   |
|       **e**        |  -   |  2   |  -   |  4   |  2   |  -   |  -   |  -   |  -   |  -   |  2   |  -   |   -   |   -    |  -   |  6   |
|       **f**        |  -   |  -   |  -   |  -   |  2   |  -   |  2   |  -   |  -   |  -   |  -   |  -   |   -   | **10** |  -   |  2   |

对 S-box 而言，若输入对的差分 $\Delta_{\textrm{in}} = \alpha$，输出对的差分 $\Delta_{\textrm{out}} = \beta$，则 $\alpha \xrightarrow{S} \beta$ 是 S-box 的一条差分特征。将输入差分 $\alpha$ 经过 S 盒以概率 $p$ 导致输出差分 $\beta$，记为
$$
\textrm{Pr}(\alpha \xrightarrow{S} \beta) = p = \frac{N_s(\alpha, \beta)}{2^m},
$$
其中 $m$ 为 $\alpha$ 的二进制位数，即 $\alpha \in \{0, 1\}^m$；$N_s(\cdot, \cdot)$ 为表格函数。随机置换的概率为 $\textrm{Pr}(\alpha \xrightarrow{\textrm{RP}} \beta) = 2^{1-m}$。【TODO：这个值对吗？】

由上表可知，第一个 S-box 对应 $\textrm{Pr}(\textrm{0xf} \to \textrm{0xd}) = 10/16$，第二个 S-box 对应 $\textrm{Pr}(\textrm{0xd} \to \textrm{0xc}) = 6/16$。由此可以找到一条差分路径：
$$
\textrm{Pr}(\textrm{0xf} \to \textrm{0xd} \to \textrm{0xc}) = \frac{10}{16} \times \frac{6}{16} > \frac{1}{16}
$$
这条差分路径，对应着一个带概率的转移方程。【TODO：这里为什么要和 1/16 比较？】【TODO：无法复现这个差分特征，为什么呢？】

#### 差分分析

**一轮差分特征**

对于轮函数 $g$ 而言，若输入差分为 $\alpha$，相应输出差分为 $\beta$，则 $\alpha \xrightarrow{g} \beta$是轮函数的一条差分特征，即一轮加密的差分特征。

轮函数差分特征的概率：$\textrm{DP}(\Lambda_{i-1} \xrightarrow{1 \textrm{r EN}} \Lambda_i) = \textrm{Pr}(\Lambda_{i-1} \xrightarrow{g} \Lambda_i)$

**$r$ 轮差分特征**

一个三元组 $\Omega = (\Lambda_0, \Omega_\Lambda, \Lambda_r)$。其中，$\Lambda_0$ 和 $\Lambda_r$ 是初始输入差分和 $r$ 轮加密运算后的差分；$\Omega_\Lambda = (\Lambda_1, \Lambda_2, \cdots, \Lambda_{r-1})$ 中的 $\Lambda_i$ 表示第 $i$ 轮的输出差分。$r$ 轮差分特征可以看作是 $r$ 个一轮差分特征的级联，概率为
$$
\textrm{DP}(\Omega) = \prod_{i = 1}^{r}\textrm{DP}(\Lambda_{i - 1} \xrightarrow{1 \textrm{r EN}} \Lambda_i)
$$
**差分分析**

-   敌手得到一个黑盒，可以选择输入并获得相应的输出，需判断该黑盒是 **$r$ 轮加密函数**还是一个**随机置换**。
-   设 $\textrm{DP}(\Delta_0 \xrightarrow{r\textrm{-round}} \Delta_r) = p$，则随机选择 $N$ 个明文对 $(P, P^*)$，其中 $P \oplus P^*=\Delta_0$，获得加密后的相应的密文对 $(C, C^*)$，并计数满足 $C \oplus C^*=\Delta_r$ 的对数 $v$。
    - 若 $v \approx Np$，则判定该算法为**特定 $r$ 轮加密函数**；
    - 否则，为**随机置换**。

由此可见，**输入、输出差分分布的不均匀性是差分分析的基础**。

### 差分分支数

设在 $\{0, 1\}^n$ 上定义有 Hamming Weight $W$，$W(x)$ 表示 $x$ 的二进制表示中 $1$ 的个数。设有一个 $\{0, 1\}^n \to \{0, 1\}^n$ 的函数 $F$，则 $F$ 的差分分支数 (Differential Branch Number) 被定义为：

$$
B_d(F)= \min_{a \neq b}(W(a \oplus b) + W(F(a)\oplus F(b)))
$$

换句话说，$F$ 是一个“黑盒”，那么 $B_d(F)$ 就是所有的输入对 $(a, b)$ 中，输入的差分与输出的差分之和的最小值。[Branch Number - Wikipedia](https://en.wikipedia.org/wiki/Branch_number) 中的描述如下：

> In cryptography, the **branch number** is a numerical value that characterizes the amount of diffusion introduced by a vectorial Boolean function $F$ that maps an input vector $a$ to output vector $F(a)$.

所以，Branch Number 越大，说明“扩散”越强，该组件对于加密越有用。

## 使用 MILP 技术进行差分分析

*Differential and Linear Cryptanalysis Using Mixed-Integer Linear Programming* 这篇论文给出了使用混合整数动态规划 (Mixed-Integer Linear Programming) 的方式来寻找加密算法的差分路径。

### XOR 模块带来的约束

设 XOR 模块的输入为 $a, b \in \mathbb{F}_2^{\omega}$，输出 $c = a \oplus b$，则可以用以下约束来表示该 XOR 模块：
$$
\begin{cases}
    a + b + c \ge 2 d_{\oplus}, \\
    d_{\oplus} \ge a, \\
    d_{\oplus} \ge b, \\
    d_{\oplus} \ge c.
\end{cases}
$$
考虑 $\omega = 1$ 的情况，此时需要添加约束 $a + b + c \le 2$。由于 $a + b + c \le 2$，所以 $d_{\oplus} \in \{0, 1\}$。

- 当 $a = b = 0$ 时，$c/2 \ge d_{\oplus} \ge c$，因此 $d_{\oplus} = c = 0$，符合条件。
- 当 $a = 1, b = 0$ 或 $a = 0, b = 1$ 时，不妨设 $a = 1, b = 0$，则 $d_{\oplus} \ge 1$，因此 $d_{\oplus} = 1$。因此 $1 + c \ge 2$ 且 $1 \ge c$，故 $c = 1$，符合条件。
- 当 $a = b = 1$ 时，则 $d_{\oplus} \ge 1$，因此 $d_{\oplus} = 1$。因此 $2 + c \ge 2$ 且 $1 \ge c$ 且 $2 + c \le 2$，故 $c = 0$，符合条件。

### 线性变换带来的约束

设 $x_{i_k}, y_{j_k}, k \in \{0, 1, \cdots, m-1\}$ 分别表示线性变换 $L$ 的输入和输出差分，设 $\mathcal{B}_L$ 是 $L$ 的线性分支数，则有以下约束：
$$
\begin{cases}
    \sum_{k = 0}^{m - 1}(x_{i_k} + y_{j_k}) \ge \mathcal{B}_L d_L, \\
    d_L \ge x_{i_k}, \quad k \in \{0, 1, \cdots, m-1\}, \\
    d_L \ge y_{j_k}, \quad k \in \{0, 1, \cdots, m-1\}.
\end{cases}
$$
这个约束的依据是 $\mathcal{B}_L$ 的定义。

### 目标函数

某条差分路径的概率很大，那么这条路径上激活的 S-box 的个数一定很少。因此，想要得到一条大概率的差分路径，等价于求最少激活 S-box 个数。

### 对以上方法进行的拓展

上述模型最初主要针对**面向字** (word-oriented) 的密码。论文的核心贡献之一是将其扩展到了**面向比特** (bit-oriented) 的密码，这需要对 S-box 进行更精细的建模。

#### S-box 的激活状态

为了在比特层面进行分析，首先需要用一个 0-1 变量 $A_t$ 来精确描述第 $t$ 个 S-box 是否被激活。若第 $t$ 个 S-box 被激活（输入非零），则 $A_t = 1$；反之 $A_t = 0$。设 S-box 的输入差分比特为 $(x_{i_0}, \dots, x_{i_{\omega-1}})$，则 $A_t$ 和输入比特的关系由以下约束刻画：
$$
\begin{cases}
A_t \ge x_{i_k}, \quad \forall k \in \{0, \dots, \omega-1\}, \\
\sum_{k=0}^{\omega-1} x_{i_k} \ge A_t.
\end{cases}
$$
这组约束确保了 $A_t = 1 \iff \sum x_{i_k} > 0$（即 $A_t = 1$ 等价于输入差分非零）。

#### S-box 差分传播的建模

由于**非零输入差分必然对应非零输出差分**，可以建立输入和输出差分之间的约束：
$$
\begin{cases}
\nu \sum_{k=0}^{\omega-1} x_{i_k} - \sum_{k=0}^{\nu-1} y_{j_k} \ge 0, \\
\omega \sum_{k=0}^{\nu-1} y_{j_k} - \sum_{k=0}^{\omega-1} x_{i_k} \ge 0.
\end{cases}
$$
其中 $\omega$ 和 $\nu$ 分别是 S-box 的输入和输出比特数。该约束保证了只要输入（或输出）差分不为零，输出（或输入）差分也必然不为零。

除此之外，还需要使用其**差分分支数 $\mathcal{B}_S$** 来进行约束：
$$
\begin{cases}
\sum_{k = 0}^{\omega-1} x_{i_k} + \sum_{k = 0}^{\nu-1} y_{j_k} \ge \mathcal{B}_S d_S, \\
d_S \ge x_{i_k}, \quad k \in \{0, 1, \cdots, \omega - 1\}, \\
d_S \ge y_{j_k}, \quad k \in \{0, 1, \cdots, \nu - 1\}.	
\end{cases}
$$
这个约束的核心思想是，只要 S-box 被激活（即 $d_S=1$），其输入和输出差分的 Hamming Weight 之和必须大于等于其分支数 $\mathcal{B}_S$。


### 利用 Cutting-Plane 法转为求凸包

以上建模过程表明，每条差分路径都对应 MILP 问题可行域中的一个解。但遗憾的是，MILP 的可行解并不能保证是有效的差分路径，因为仅使用这些约束条件，无法排除所有无效的差分模式。

*Automatic Security Evaluation and (Related-key) Differential Characteristic Search: Application to SIMON, PRESENT, LBlock, DES(L) and Other Bit-oriented Block Ciphers* 这篇论文提出了 Valid Cutting-off Inequality 的概念。剔除一个 Valid Cutting-off Inequality，能**在不干扰有效差分路径的情况下，缩小 MILP 的可行域**。

![Valid Cutting-off Inequality](/gallery/Paper-Reading-Differential-and-Linear-Cryptanalysis-Using-Mixed-Integer-Linear-Programming/cutting-off.png)

#### Conditional Differential Behavior

如果对于一个有界的变量 $x \in [0, M]$，我们希望得到 $\delta \in \{0, 1\}$ 满足 $x > 0 \implies \delta = 1$，则可以用以下约束表示：
$$
x - M\delta \le 0.
$$
*Automatic Security Evaluation and (Related-key) Differential Characteristic Search: Application to SIMON, PRESENT, LBlock, DES(L) and Other Bit-oriented Block Ciphers* 这篇论文给出了在 $\{0, 1\}^n$ 上的 $(x_0, x_1, \cdots, x_{m - 1})$ 与 $(\delta_0, \delta_1, \cdots, \delta_{m-1})$ 之间的关系。
$$
(x_0, x_1, \cdots, x_{m - 1}) = (\delta_0, \delta_1, \cdots, \delta_{m-1}) \implies y = \delta \in\{0, 1\}
$$
 可以使用以下约束表示：
$$
\sum_{i = 0}^{m-1}(-1)^{\delta_i}x_i + (-1)^{\delta + 1}y - \delta + \sum_{i = 0}^{m-1}\delta_i \ge 0
$$
证明的简要思路：只证明 $\delta = 0$ 且 $(\delta_0, \delta_1, \cdots, \delta_{m-1}) = (\delta_0, \cdots, \delta_{s_1-1};\delta_{s_1}, \cdots, \delta_{m-1}) = (1,\cdots, 1;0, \cdots, 0)$。记 $\Delta^*=(\delta_0, \delta_1, \cdots, \delta_{m-1})$。

- 先证明 $(\Delta^*, 0)$ 满足上式。
- 然后证明 $(x_0, x_1, \cdots, x_{m-1}) \neq \Delta^*$ 时，$(x_0, x_1, \cdots, x_{m-1}, y) \in \{0, 1\}^{m+1}$ 都满足上式。
- 最后证明 $(\Delta^*, 1)$ 不满足上式。

#### Convex Hull of All Possible Differentials

以上约束可以看作是一个凸包 (Convex Hull)：
$$
\begin{cases}
	\lambda_{0, 0}x_0 + \cdots + \lambda_{0, n-1}x_{n-1} + \lambda_{0, n} \ge 0, \\
	\cdots \\
	\gamma_{0, 0}x_0 + \cdots + \gamma_{0, n-1}x_{n-1} + \gamma_{0, n}= 0, \\
	\cdots
\end{cases}
$$
由于这些不等式太多了，所以直接跑 MILP 的代价太大。这些不等式（或等式）中可能有**重复的部分**，所以可以用计算几何相关的方法求最小凸包。

#### Selecting Valid Cutting-off Inequalities from the Convex Hull

用贪心的方法，每次选取一条不等式，看是否是 Cutting-off Inequality。

![Greedy Algorithm](/gallery/Paper-Reading-Differential-and-Linear-Cryptanalysis-Using-Mixed-Integer-Linear-Programming/greedy-algo.png)
