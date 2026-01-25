---
title: Quine：一个能输出自身代码的程序
tags:
  - Quine
  - 图灵机
  - Lambda 演算
categories:
  - 技术
mathjax: true
toc: true
date: 2026-01-25 17:27:14
password:
id: Quine-a-Program-That-Outputs-Its-Own-Code
---

几天前看到了 Tsoding 的一段视频：[Self-Reproducing Programs
](https://www.youtube.com/watch?v=QGm-d5Ch5JM)，里面提到了 C 和 Rust 语言编译器的自举、以及 Quine，让我联想到了在《理论计算机科学导论》这门课上学到的 Y Combinator 和 Self-Printing Turing Machine 等内容。

感觉 Quine 是很有意思的一件事儿，~~但已经过了接近两年了，我早就把这些内容忘光了。~~于是又重新学习了相关资料，写下了这篇博客。

<!--more-->

## Self-Printing Turing Machine

{% note info %}
### 引理

存在算法 $\mathcal{A} : \Sigma^* \to \Sigma^*$，对于任意输入 $w \in \Sigma^*$，均有 $\mathcal{A}(w) = \left<P_w\right>$。其中，$P_w$ 是这样的 Turing Machine：对于任意输入 $x \in \Sigma^*$，$P_w$ 都输出 $w$ 并停机。
{% endnote %}

>   **证明**
>
>   构造 Turing Machine $Q$，其功能是：对于任意输入 $w$，构造 Turing Machine $P_w$，其功能是：在输入任意字符串时，擦掉纸带上的内容，写入 $w$，然后停机。$Q$ 的描述 $\left<Q\right>$ 就是算法 $\mathcal{A}$ 的实现。

### 构造 Self-Printing Turing Machine

Self-Printing Turing Machine 的构造由两部分组成：

-   $\left<A\right> = \left<P_{\left<B\right>}\right>$
    -   $A$ 这部分的功能是：无论输入什么，都输出 $B$ 部分 Turing Machine 的描述。值得注意的是，$B$ 的描述（即 $\left<B\right>$）是**常量**，与输入无关，所以 $A$ 的功能是可实现的。
-   $\left<B\right> = \text{对于任意输入 }w, \text{输出 }\left<P_w\right>, \text{输出 } w$
    -   $B$ 这部分的功能是：对于输入 $w$，首先输出“能输出 $w$ 的 Turing Machine”的描述，然后输出 $w$ 本身。

引理保证了 $\left<A\right>$ 和 $\left<B\right>$ 都是可以实现的 Turing Machine 描述。将两部分拼接起来，得到的 Turing Machine $\left<M\right> = \left<A\right>\left<B\right>$ 就是一个 Self-Printing Turing Machine。这是因为：

1.  对于任意输入 $x$，$M$ 首先执行 $A$ 部分，输出 $B$ 的描述 $\left<B\right>$ 到纸带上。
2.  然后 $M$ 执行 $B$ 部分，$B$ 读取纸带上的 $\left<B\right>$ 作为输入，并输出“能输出 $B$ 的 Turing Machine”的描述 $\left<P_{\left<B\right>}\right>$，接着输出 $B$ 本身的描述 $\left<B\right>$。此时纸带上的内容是 $\left<P_{\left<B\right>}\right>\left<B\right>$。
3.  由于 $\left<P_{\left<B\right>}\right> = \left<A\right>$，所以 $\left<P_{\left<B\right>}\right>\left<B\right> = \left<A\right>\left<B\right> = \left<M\right>$。因此，最终输出的内容是 $\left<M\right>$，即 $M$ 的完整描述。

## Quine：一个能输出自己代码的程序

Quine 是 Self-Printing Turing Machine 在编程语言中的实现。尽管二者原理相通，编程语言与 Turing Machine 又有不同：Turing Machine 的输入输出全部在纸带上，而编程语言通常通过标准输入输出进行交互。在没有标准输出输出的情况下，“源代码本身”成为了一种隐式输入。

下面以 Python 语言为例，展示如何构造一个 Quine。将 Quine 与 Self-Printing Turing Machine 做比较，最关键的一步在于厘清程序中哪一部分对应理论模型中的 $A$，哪一部分对应 $B$。

程序的逻辑实际上承担了 $B$ 部分的职责：它读取自身的代码作为输入，随后依次输出“能够打印该代码的程序逻辑”（即 $A$ 部分）以及“代码本身”（即 $B$ 部分）。具体实现步骤如下：

1.  **读取代码本身**：在 Python 中，这一步通过将源代码存储在一个字符串变量中实现，例如 `self` 变量。
2.  **输出“能输出代码本身的程序”**：这一步通过遍历 `self` 变量来实现。当遍历到锚点 `$` 时，程序转而输出 `self` 变量的内容（经过适当的转义处理）。之所以需要转义，是为了确保输出的内容符合字符串字面量的语法要求，从而正确生成代码的 $A$ 部分。
3.  **输出代码本身**：最后，程序将 `self` 变量中的剩余内容按原样逐字符输出，从而完整还原出程序的 $B$ 部分。

$B$ 部分的实现如下：

```python quine_b.py
self = "$"

for ch in self:
    if ord(ch) == 36:
        for c in self:
            if c == "\\":
                print("\\\\", end="")
            elif c == "\"":
                print("\\\"", end="")
            elif c == "\n":
                print("\\n", end="")
            else:
                print(c, end="")
    else:
        print(ch, end="")
```

用以下 Python 代码生成包含转义字符的字符串：

```python transform.py
import argparse


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Transform input text to excaped text.")
    parser.add_argument("--input_file", type=str, required=True, help="Path to the input text file.")
    args = parser.parse_args()

    with open(args.input_file, "r", encoding="utf-8") as f:
        for line in f:
            for ch in line:
                if ch == "\n":
                    print("\\n", end="")
                elif ch == "\\":
                    print("\\\\", end="")
                elif ch == "\"":
                    print("\\\"", end="")
                else:
                    print(ch, end="")
    print()
```

运行

```bash
python3 transform.py --input_file=quine_b.py
```

得到输出：

```
self = \"$\"\n\nfor ch in self:\n    if ord(ch) == 36:\n        for c in self:\n            if c == \"\\\\\":\n                print(\"\\\\\\\\\", end=\"\")\n            elif c == \"\\\"\":\n                print(\"\\\\\\\"\", end=\"\")\n            elif c == \"\\n\":\n                print(\"\\\\n\", end=\"\")\n            else:\n                print(c, end=\"\")\n    else:\n        print(ch, end=\"\")
```

粘贴到 `$` 处（对应拼接 $\left<A\right>$ 和 $\left<B\right>$），得到最终的 Quine 代码：

```python quine.py
self = "self = \"$\"\n\nfor ch in self:\n    if ord(ch) == 36:\n        for c in self:\n            if c == \"\\\\\":\n                print(\"\\\\\\\\\", end=\"\")\n            elif c == \"\\\"\":\n                print(\"\\\\\\\"\", end=\"\")\n            elif c == \"\\n\":\n                print(\"\\\\n\", end=\"\")\n            else:\n                print(c, end=\"\")\n    else:\n        print(ch, end=\"\")"

for ch in self:
    if ord(ch) == 36:
        for c in self:
            if c == "\\":
                print("\\\\", end="")
            elif c == "\"":
                print("\\\"", end="")
            elif c == "\n":
                print("\\n", end="")
            else:
                print(c, end="")
    else:
        print(ch, end="")
```

检查 Quine 是否正确，可以运行以下命令：

```bash
python3 quine.py > quine_1.py
diff quine.py quine_1.py
```

没有任何输出，说明两个文件相同。

>   一个更加简洁的 Python Quine 的实现是：
>
>   ```python
>   self = 'self = {0!r}\nprint(self.format(self), end="")'
>   print(self.format(self), end="")
>   ```

Tsoding 说，Quine 有很多实现方式，（上述代码的思路）只是他的实现方式。“程序输出自身”这种自我指涉让我联想到了 Y Combinator，于是我又复习了一下 Lambda Calculus（Lambda 演算）中的相关内容。

## Y Combinator 以及…

Lambda Calculus 的基础内容在此不再赘述。Y Combinator 的定义如下：

$$
Y = \lambda f.(\lambda x.f (x x)) (\lambda x.f (x x))
$$

{% note info %}
### Y Combinator 的性质
对于任意函数 $g: \Sigma^* \to \Sigma^*$，均有 $Y g = g (Y g)$。
{% endnote %}

>   **证明**
>
>   $$
>   \begin{align*}
>   Yg & = (\lambda x.g (x x)) (\lambda x.g (x x)) \\
>   & = g(\lambda x.g (x x)) (\lambda x.g (x x)) \\
>   \end{align*}
>   $$
>
>   这是因为 $\lambda x.g(xx)$ 的作用是，对于任意输入 $t$，输出 $g(tt)$。将 $t = \lambda x.g(xx)$ 作为输入传入自身，得到的结果就是 $g((\lambda x.g(xx))(\lambda x.g(xx)))$。
>
>   因此，
>   $$
>   \begin{align*}
>   g (Y g) & = g((\lambda f.(\lambda x.f (x x)) (\lambda x.f (x x))) g) \\
>   & = g(\lambda x.g (x x)) (\lambda x.g (x x)) \\
>   & = Yg
>   \end{align*}
>   $$

也就是说，$Yg$ 一定是 $g$ 的不动点。因此，如果我们想求一个东西的不动点，我们可以直接将 Y Combinator 应用上去。

从这个角度来看，Quine 其实是一种不动点：设 $T: \Sigma^* \to \Sigma^*, T: \text{input} \mapsto \text{output}$ 表示“将 $\text{input}$ 放进模板代码 $T$ 中，运行后，输出 $\text{output}$”。那么，我们要求的 Quine 其实是模板代码 $T$ 的不动点。

但是，在 Python 这样的严格求值语言中，并不能使用 Y Combinator，因为 Y Combinator 在立即求值的情况下会导致无限递归。我们可以使用延迟（thunk）以懒惰求值。

### Y Combinator + Thunk in Python

Y Combinator 在 Python 中的实现如下：

```python
Y = lambda f: (lambda x: f(x(x)))(lambda x: f(x(x)))
```

但是，这个实现里的 `x(x)` 会导致无限递归。我们可以使用 thunk 来避免这个问题：

```python
Y = lambda f: (lambda x: f(lambda: x(x)))(lambda x: f(lambda: x(x)))
```

这样，`x(x)` 被包裹在一个无参数的 lambda 函数中，只有在需要时才会被调用，从而避免了立即求值导致的无限递归问题。

Python 代码实现如下：

```python quine_y.py
Y = lambda f: (lambda x: f(lambda: x(x)))(lambda x: f(lambda: x(x)))

t = 'Y = lambda f: (lambda x: f(lambda: x(x)))(lambda x: f(lambda: x(x)))\n\nt = {0!r}\n\nT = lambda _: t.format(t)\n\nprint(Y(T), end="")'

T = lambda _: t.format(t)

print(Y(T), end="")
```

这里的 `Y` 为 Y Combinator，`t` 为模板代码，`T` 为“渲染”模板代码的函数。`Y(T)` 会返回 `T` 的不动点，即渲染后的模板代码。

检查 Quine 是否正确，可以运行以下命令：

```bash
python3 quine_y.py > quine_y_1.py
diff quine_y.py quine_y_1.py
```

没有任何输出，说明两个文件相同。
