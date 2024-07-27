---
title: 【学习笔记】Karatsuba 乘法学习笔记
tags:
  - 高精度
  - 分治
  - 技巧
categories:
  - 学习笔记
mathjax: true
toc: true
date: 2020-05-04 15:40:30
password:
---

上个学期在联赛前听 EternalAlexander 提到了一下这个玄学的算法，现在就学习一下吧。

<!--more-->

### **简介**

「Karatsuba 乘法」是 1960 年由 Anatolii Alexeevitch Karatsuba 提出的可用于大整数乘法的算法。

### **理论推导**

不妨设我们要相乘的两个数字分别为 $a$ 和 $b$，其乘积，也就是我们要求的数，为 $c$。

设 $a = x_1\cdot10^m + x_0, b = y_1\cdot10^m + y_0$，其中 $0 < x_1, x_0, y_1, y_0 < 10^m$，则

$\begin{aligned}c = ab & = (x_1\cdot10^m + x_0) \cdot (y_1\cdot10^m + y_0) \\\\ & = (x_1\cdot y_1)10^{2m} + (x_1\cdot y_0 + x_0\cdot y_1)10^m + x_0\cdot y_0\end{aligned}$

记 $z_2 = x_1\cdot y_1, z_1 = x_1\cdot y_0 + x_0\cdot y_1, z_0 = x_0\cdot y_0$。

**注意到**，$z_1 = (x_1 + x_0)(y_1 + y_0) - z_2 - z_0$。

于是我们可以分步计算 $(x_1 + x_0)(y_1 + y_0), z_2, z_0$ 即可。

### **时间复杂度**

我们实质上是把一个 $n \times n$ 的乘法化简为了三个长度更小的乘法。

当 $m = \left\lfloor\dfrac{n}{2}\right\rfloor$ 时，有递推式 $T(n) = 3T(\left\lfloor\dfrac{n}{2}\right\rfloor) + O(n)$。

不难由主定理得知 $T(n) = \Theta(n^{\log_{2}3}) \approx \Theta(n^{1.585})$

### **代码实现**

这个是 [MUL - Fast Multiplication](http://www.spoj.com/problems/MUL/en/) 的代码。

```cpp
#include <bits/stdc++.h>
#define LL long long
#define LOCAL

namespace io {
    template <typename T> inline void read(T & _x) {
        int f = 0, ch; _x = 0;
        while(!isdigit(ch = getchar())) f |= ch == '-';
        while(isdigit(ch)) _x = _x * 10 + ch - '0', ch = getchar();
        if(f) _x = -_x;
    }
    template <typename T, typename ... Args> inline void read(T &_f, Args& ... args) {
        read(_f), read(args ...);
    }
    inline void _deal(char ch) { putchar(ch); }
    template <typename T> inline void _deal(T _x) {
        if (_x < 0) putchar('-'), _x = -_x;
        if (_x > 9) _deal(_x / 10);
        putchar(_x % 10 + '0');
    }
    inline void write() {}
    template <typename T, typename ... Args> inline void write(T _f, Args ... args) {
        _deal(_f), write(args...);
    }
}

const int N = 1e4 + 5;

int t, n, m;
int a[N], b[N], c[N << 1];
char A[N], B[N];

int *Kmul(int len, int ra[], int rb[]) {
    if(len <= 32) {
        int *r = new int[len * 2 + 1]();
        for(int i = 0; i <= len; ++i)
            for(int j = 0; j <= len; ++j)
                r[i + j] += ra[i] * rb[j];
        return r;
    }
    int hf = len / 2 + 1;
    int *r = new int[hf * 4 + 1]();
    int *z0, *z1, *z2;

    z0 = Kmul(hf - 1, ra, rb);
    z2 = Kmul(len - hf, ra + hf, rb + hf);

    for(int i = 0; i + hf <= len; ++i) ra[i] += ra[i + hf];
    for(int i = 0; i + hf <= len; ++i) rb[i] += rb[i + hf];
    z1 = Kmul(hf - 1, ra, rb);
    for(int i = 0; i + hf <= len; ++i) ra[i] -= ra[i + hf];
    for(int i = 0; i + hf <= len; ++i) rb[i] -= rb[i + hf];

    for(int i = 0; i <= (hf - 1) * 2; ++i) z1[i] -= z0[i];
    for(int i = 0; i <= (len - hf) * 2; ++i) z1[i] -= z2[i];

    for(int i = 0; i <= (hf - 1) * 2; ++i) r[i] += z0[i];
    for(int i = 0; i <= (hf - 1) * 2; ++i) r[i + hf] += z1[i];
    for(int i = 0; i <= (len - hf) * 2; ++i) r[i + hf * 2] += z2[i];

    delete[] z0;
    delete[] z1;
    delete[] z2;
    return r;
}

void Karatsuba(int ra[], int rb[], int rc[]) {
    int *r = Kmul(n - 1, ra, rb);
    memcpy(rc, r, sizeof(int) * m);
    for(int i = 0; i < m - 1; ++i) {
        if(rc[i] >= 10) {
            rc[i + 1] += rc[i] / 10;
            rc[i] %= 10;
        }
    }
    delete[] r;
}

int main() {
#ifdef LOCAL
    freopen("mul.in", "r", stdin);
    freopen("mul.out", "w", stdout);
#endif
    io::read(t);
    while(t--) {
        int len1, len2;
        scanf("%s %s", A + 1, B + 1);
        len1 = strlen(A + 1), len2 = strlen(B + 1);
        n = std::max(len1, len2);
        for(int i = len1, j = len2, k = 0; k < n; --i, --j, ++k) {
            if(i >= 1) a[k] = A[i] - '0';
            else a[k] = 0;
            if(j >= 1) b[k] = B[j] - '0';
            else b[k] = 0;
        }
        /*for(int i = 1; i <= n; ++i) printf("%d", a[i]);
        putchar('\n');
        for(int i = 1; i <= n; ++i) printf("%d", b[i]);
        putchar('\n');*/
        m = len1 + len2 - 1;
        Karatsuba(a, b, c);
        while(!c[m - 1] && m > 1) --m;
        for(int i = m - 1; i >= 0; --i) io::write(c[i]);
        io::write('\n');
    }
    return 0;
}
```
