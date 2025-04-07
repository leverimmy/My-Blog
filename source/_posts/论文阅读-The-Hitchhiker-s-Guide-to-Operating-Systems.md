---
title: "论文阅读：The Hitchhiker's Guide to Operating Systems"
tags:
  - 操作系统
categories:
  - 科研
mathjax: true
toc: true
date: 2025-03-16 17:56:40
password:
id: Paper-Reading-The-Hitchhiker-s-Guide-to-Operating-Systems
---

ACT'23, [论文链接](https://www.usenix.org/system/files/atc23-jiang-yanyan.pdf)

用形式化语言理解 OS——**OS 是一个管理状态机的系统**。

<!--more-->

## Everything is a State Machine

所有的**系统**——只要能被称为“系统”——都可以通过一定的形式化语言进行建模，然后看成一个**状态机**。

### 程序（program）是状态机

高级语言写的程序可以用编译器编译得到汇编语言。对于汇编语言来说，每条指令要么 (a) 对寄存器进行操作，要么 (b) 对内存进行操作。因此，程序对应的状态机可以用一个五元组

$$
A = (S, I, \delta, s_0, F)
$$

对于 $S$ 中的状态 $s_i$，我们可以用一个二元组来表示，$s_i = \left<R_i, M_i\right>$，分别对应着寄存器值与内存布局。$I$ 是指令集合，执行一条指令，对应着状态之间的转移函数 $\delta: S \times I \to S$。程序正常退出时会落入集合 $F$ 中的状态。

![Figure 1: A minimal "Hello World" program and its corresponding state machine.](/gallery/Paper-Reading-The-Hitchhiker-s-Guide-to-Operating-Systems/fig-1.png)

从这个角度来看，没有 System Call 的（用户）程序其实什么都做不了，它只能修改寄存器和分配给自己的内存。只有使用 System Call，它才能和 OS 进行交互，做更多的事情——例如修改内存映射（`mmap`）或者终止程序的运行（`exit`）。

> Without system calls, the program (state machine)
is a "closed world" that can only perform arithmetic and logical operations over memory and register values.

### 裸机（bare-metal）是状态机

与用户程序相似，裸机的运行本质上也是指令执行的过程，可以被视作一个状态机。区别在于，裸机需要**通过端口或 MMIO 与外部世界交互**，并且在任意时刻都有可能因外部中断而触发非确定性的跳转。

### OS 是状态机的管理者

每个进程的初始状态 $s_0$（包含了 initial memory layout）由 ABI 与该程序的二进制文件唯一决定，其转移函数也由二进制文件确定。从这个角度看，操作系统可视为**一个管理多种状态机的系统**。它记录多个状态机目前都位于什么状态，并且管理何时从这些状态进行转移。

OS 作为管理者，为每个进程提供了一定程度的抽象。~~这样的 hierarchy 很像底下的小喽喽并不需要考虑大佬们在商讨什么。~~例如，OS 使用页表进行虚拟内存的管理，而每个进程对此毫不知情；每当有外部中断发生时，OS 会接管当前状态，处理完后再将控制流转交给进程，此时进程感受不到中断，它们仍然认为控制流是完整的。

再仔细考虑 trap/interrupt handler：在处理中断和异常时，需要保存当前现场；这其实就是在保存一个进程状态机的状态（各种寄存器的值以及当前内存布局），以供控制流转交回进程时能够恢复现场。

![Figure 2: Operating system as a state machine manager. In this example, the operating system "executes" state transitions 0 -> 1 and 0 -> 3 -> 5 for applications A and B, respectively](/gallery/Paper-Reading-The-Hitchhiker-s-Guide-to-Operating-Systems/fig-2.png)

上图完美地阐释了“OS 是状态的管理者”这句话。

> The operating system provides system calls as services and leverages application-invisible states (e.g., page table) to give processes the illusion of continuous state machine execution.

### API 是对状态机的操作

从状态机的角度来看，API 对状态机进行“宏观”操作。

- `fork()`：复制一个状态，寄存器和内存也被随之（深）复制。
- `execev(path, argv, envp)`：将一个状态**重置**为 `path` 指定的二进制文件所确定的初态。
- `exit(status)`：将当前状态机从 OS 中移除，并且返回 `status`。

### Trace 是状态机中的一条路径

$$
\text{tr} : s_0 \to s_1 \to s_2 \to \cdots \to s_n
$$

如果我们将程序运行的所有状态记录下来，那么它将在状态机（这个图）上构成一条路径。利用这条路径，我们可以方便地对程序进行调试。然而，记录完整轨迹在工程实践中并不现实。原因在于：

1. **数据量过大**：程序每执行一条指令都会导致状态变化，而状态本身可能包含寄存器值和内存布局等大量信息。现代计算机每秒可能执行数十亿条指令，如果完整记录所有状态快照和状态转移，将会占用巨大的存储空间。
2. **大部分状态信息是冗余的**：理解程序执行通常只需要轨迹中的很小一部分信息，而绝大多数状态对特定分析任务无关紧要。

因此，我们可以考虑只记录 $\text{tr}$ 中的一部分。**断点**告诉我们，什么时候需要“记录一个状态”。

文章中提到了 Time-travel Debugging，通过记录相邻状态之间的**增量变化**（而不是完整快照）来实现对轨迹的回溯。文章中还提到了 Trace 和 Profiler，通过在程序逻辑相关的重要状态转移处插入探针（probe），可以记录诊断信息，例如函数调用栈、返回值等。

唯一比较棘手的点在于状态机的状态爆炸问题，这是 Non-deterministic State Machine 固有的通病——例如，系统调用的返回值有很多种可能。文章提到了符号执行（Symbolic Execution）：与其去枚举一个在后续过程中会参与运算的 32 位整数 $x$ 的取值（共有 $2^{32}$ 种可能），不如将其直接看作是一个**符号**，并在运行时对符号施加约束来代替显式枚举所有可能的状态。这种技术允许我们在无需穷举所有状态的情况下，在数学上验证程序行为的正确性。

## Emulate State Machines with Executable Models

[MOSAIC](https://github.com/jiangyy/mosaic) 是一个**用 Python 模拟的、基于状态机的 OS**，它实现了[部分 System Call](https://github.com/jiangyy/mosaic/tree/main?tab=readme-ov-file#modeled-system-calls)。

{% note danger %}
记得安装 `psutil` 这个 Python 包。
{% endnote %}

### A `fork()` in the Road

利用 MOSAIC，可以轻松模拟 `fork()` 在多线程情况下的输出情况。

```python examples/fork-buf.py (modified)
def main():
    N = 2                       # Let N = 2
    heap.buf = ''
    for _ in range(N):
        pid = sys_fork()
        sys_sched()
        heap.buf += f'️{pid}\n'
    sys_write(heap.buf)
```

运行

```bash
python3 mosaic.py --check examples/fork-buf.py | grep stdout | sort | uniq
```

{% note info no-icon 运行该代码将统计所有可能的输出。运行得到的结果如下： %}
```
"stdout": "",
"stdout": "️0\n️0\n",
"stdout": "️0\n️0\n️0\n️1003\n",
"stdout": "️0\n️0\n️0\n️1003\n️1002\n️0\n",
"stdout": "️0\n️0\n️0\n️1003\n️1002\n️0\n️1002\n️1004\n",
"stdout": "️0\n️0\n️0\n️1003\n️1002\n️1004\n",
"stdout": "️0\n️0\n️0\n️1003\n️1002\n️1004\n️1002\n️0\n",
"stdout": "️0\n️0\n️0\n️1004\n",
"stdout": "️0\n️0\n️0\n️1004\n️1002\n️0\n",
"stdout": "️0\n️0\n️0\n️1004\n️1002\n️0\n️1002\n️1003\n",
"stdout": "️0\n️0\n️0\n️1004\n️1002\n️1003\n",
"stdout": "️0\n️0\n️0\n️1004\n️1002\n️1003\n️1002\n️0\n",
"stdout": "️0\n️0\n️1002\n️0\n",
"stdout": "️0\n️0\n️1002\n️0\n️0\n️1003\n",
"stdout": "️0\n️0\n️1002\n️0\n️0\n️1003\n️1002\n️1004\n",
"stdout": "️0\n️0\n️1002\n️0\n️0\n️1004\n",
"stdout": "️0\n️0\n️1002\n️0\n️0\n️1004\n️1002\n️1003\n",
"stdout": "️0\n️0\n️1002\n️0\n️1002\n️1003\n",
"stdout": "️0\n️0\n️1002\n️0\n️1002\n️1003\n️0\n️1004\n",
"stdout": "️0\n️0\n️1002\n️0\n️1002\n️1004\n",
"stdout": "️0\n️0\n️1002\n️0\n️1002\n️1004\n️0\n️1003\n",
"stdout": "️0\n️0\n️1002\n️1003\n",
"stdout": "️0\n️0\n️1002\n️1003\n️0\n️1004\n",
"stdout": "️0\n️0\n️1002\n️1003\n️0\n️1004\n️1002\n️0\n",
"stdout": "️0\n️0\n️1002\n️1003\n️1002\n️0\n",
"stdout": "️0\n️0\n️1002\n️1003\n️1002\n️0\n️0\n️1004\n",
"stdout": "️0\n️0\n️1002\n️1004\n",
"stdout": "️0\n️0\n️1002\n️1004\n️0\n️1003\n",
"stdout": "️0\n️0\n️1002\n️1004\n️0\n️1003\n️1002\n️0\n",
"stdout": "️0\n️0\n️1002\n️1004\n️1002\n️0\n",
"stdout": "️0\n️0\n️1002\n️1004\n️1002\n️0\n️0\n️1003\n",
"stdout": "️0\n️1003\n",
"stdout": "️0\n️1003\n️0\n️0\n",
"stdout": "️0\n️1003\n️0\n️0\n️1002\n️0\n",
"stdout": "️0\n️1003\n️0\n️0\n️1002\n️0\n️1002\n️1004\n",
"stdout": "️0\n️1003\n️0\n️0\n️1002\n️1004\n",
"stdout": "️0\n️1003\n️0\n️0\n️1002\n️1004\n️1002\n️0\n",
"stdout": "️0\n️1003\n️1002\n️0\n",
"stdout": "️0\n️1003\n️1002\n️0\n️0\n️0\n",
"stdout": "️0\n️1003\n️1002\n️0\n️0\n️0\n️1002\n️1004\n",
"stdout": "️0\n️1003\n️1002\n️0\n️1002\n️1004\n",
"stdout": "️0\n️1003\n️1002\n️0\n️1002\n️1004\n️0\n️0\n",
"stdout": "️0\n️1003\n️1002\n️1004\n",
"stdout": "️0\n️1003\n️1002\n️1004\n️0\n️0\n",
"stdout": "️0\n️1003\n️1002\n️1004\n️0\n️0\n️1002\n️0\n",
"stdout": "️0\n️1003\n️1002\n️1004\n️1002\n️0\n",
"stdout": "️0\n️1003\n️1002\n️1004\n️1002\n️0\n️0\n️0\n",
"stdout": "️0\n️1004\n",
"stdout": "️0\n️1004\n️0\n️0\n",
"stdout": "️0\n️1004\n️0\n️0\n️1002\n️0\n",
"stdout": "️0\n️1004\n️0\n️0\n️1002\n️0\n️1002\n️1003\n",
"stdout": "️0\n️1004\n️0\n️0\n️1002\n️1003\n",
"stdout": "️0\n️1004\n️0\n️0\n️1002\n️1003\n️1002\n️0\n",
"stdout": "️0\n️1004\n️1002\n️0\n",
"stdout": "️0\n️1004\n️1002\n️0\n️0\n️0\n",
"stdout": "️0\n️1004\n️1002\n️0\n️0\n️0\n️1002\n️1003\n",
"stdout": "️0\n️1004\n️1002\n️0\n️1002\n️1003\n",
"stdout": "️0\n️1004\n️1002\n️0\n️1002\n️1003\n️0\n️0\n",
"stdout": "️0\n️1004\n️1002\n️1003\n",
"stdout": "️0\n️1004\n️1002\n️1003\n️0\n️0\n",
"stdout": "️0\n️1004\n️1002\n️1003\n️0\n️0\n️1002\n️0\n",
"stdout": "️0\n️1004\n️1002\n️1003\n️1002\n️0\n",
"stdout": "️0\n️1004\n️1002\n️1003\n️1002\n️0\n️0\n️0\n",
"stdout": "️1002\n️0\n",
"stdout": "️1002\n️0\n️0\n️0\n",
"stdout": "️1002\n️0\n️0\n️0\n️0\n️1003\n",
"stdout": "️1002\n️0\n️0\n️0\n️0\n️1003\n️1002\n️1004\n",
"stdout": "️1002\n️0\n️0\n️0\n️0\n️1004\n",
"stdout": "️1002\n️0\n️0\n️0\n️0\n️1004\n️1002\n️1003\n",
"stdout": "️1002\n️0\n️0\n️0\n️1002\n️1003\n",
"stdout": "️1002\n️0\n️0\n️0\n️1002\n️1003\n️0\n️1004\n",
"stdout": "️1002\n️0\n️0\n️0\n️1002\n️1004\n",
"stdout": "️1002\n️0\n️0\n️0\n️1002\n️1004\n️0\n️1003\n",
"stdout": "️1002\n️0\n️0\n️1003\n",
"stdout": "️1002\n️0\n️0\n️1003\n️0\n️0\n",
"stdout": "️1002\n️0\n️0\n️1003\n️0\n️0\n️1002\n️1004\n",
"stdout": "️1002\n️0\n️0\n️1003\n️1002\n️1004\n",
"stdout": "️1002\n️0\n️0\n️1003\n️1002\n️1004\n️0\n️0\n",
"stdout": "️1002\n️0\n️0\n️1004\n",
"stdout": "️1002\n️0\n️0\n️1004\n️0\n️0\n",
"stdout": "️1002\n️0\n️0\n️1004\n️0\n️0\n️1002\n️1003\n",
"stdout": "️1002\n️0\n️0\n️1004\n️1002\n️1003\n",
"stdout": "️1002\n️0\n️0\n️1004\n️1002\n️1003\n️0\n️0\n",
"stdout": "️1002\n️0\n️1002\n️1003\n",
"stdout": "️1002\n️0\n️1002\n️1003\n️0\n️0\n",
"stdout": "️1002\n️0\n️1002\n️1003\n️0\n️0\n️0\n️1004\n",
"stdout": "️1002\n️0\n️1002\n️1003\n️0\n️1004\n",
"stdout": "️1002\n️0\n️1002\n️1003\n️0\n️1004\n️0\n️0\n",
"stdout": "️1002\n️0\n️1002\n️1004\n",
"stdout": "️1002\n️0\n️1002\n️1004\n️0\n️0\n",
"stdout": "️1002\n️0\n️1002\n️1004\n️0\n️0\n️0\n️1003\n",
"stdout": "️1002\n️0\n️1002\n️1004\n️0\n️1003\n",
"stdout": "️1002\n️0\n️1002\n️1004\n️0\n️1003\n️0\n️0\n",
"stdout": "️1002\n️1003\n",
"stdout": "️1002\n️1003\n️0\n️0\n",
"stdout": "️1002\n️1003\n️0\n️0\n️0\n️1004\n",
"stdout": "️1002\n️1003\n️0\n️0\n️0\n️1004\n️1002\n️0\n",
"stdout": "️1002\n️1003\n️0\n️0\n️1002\n️0\n",
"stdout": "️1002\n️1003\n️0\n️0\n️1002\n️0\n️0\n️1004\n",
"stdout": "️1002\n️1003\n️0\n️1004\n",
"stdout": "️1002\n️1003\n️0\n️1004\n️0\n️0\n",
"stdout": "️1002\n️1003\n️0\n️1004\n️0\n️0\n️1002\n️0\n",
"stdout": "️1002\n️1003\n️0\n️1004\n️1002\n️0\n",
"stdout": "️1002\n️1003\n️0\n️1004\n️1002\n️0\n️0\n️0\n",
"stdout": "️1002\n️1003\n️1002\n️0\n",
"stdout": "️1002\n️1003\n️1002\n️0\n️0\n️0\n",
"stdout": "️1002\n️1003\n️1002\n️0\n️0\n️0\n️0\n️1004\n",
"stdout": "️1002\n️1003\n️1002\n️0\n️0\n️1004\n",
"stdout": "️1002\n️1003\n️1002\n️0\n️0\n️1004\n️0\n️0\n",
"stdout": "️1002\n️1004\n",
"stdout": "️1002\n️1004\n️0\n️0\n",
"stdout": "️1002\n️1004\n️0\n️0\n️0\n️1003\n",
"stdout": "️1002\n️1004\n️0\n️0\n️0\n️1003\n️1002\n️0\n",
"stdout": "️1002\n️1004\n️0\n️0\n️1002\n️0\n",
"stdout": "️1002\n️1004\n️0\n️0\n️1002\n️0\n️0\n️1003\n",
"stdout": "️1002\n️1004\n️0\n️1003\n",
"stdout": "️1002\n️1004\n️0\n️1003\n️0\n️0\n",
"stdout": "️1002\n️1004\n️0\n️1003\n️0\n️0\n️1002\n️0\n",
"stdout": "️1002\n️1004\n️0\n️1003\n️1002\n️0\n",
"stdout": "️1002\n️1004\n️0\n️1003\n️1002\n️0\n️0\n️0\n",
"stdout": "️1002\n️1004\n️1002\n️0\n",
"stdout": "️1002\n️1004\n️1002\n️0\n️0\n️0\n",
"stdout": "️1002\n️1004\n️1002\n️0\n️0\n️0\n️0\n️1003\n",
"stdout": "️1002\n️1004\n️1002\n️0\n️0\n️1003\n",
"stdout": "️1002\n️1004\n️1002\n️0\n️0\n️1003\n️0\n️0\n",
```
{% endnote %}

### Application: Specification of Systems

对于有限大小的状态机，我们可以通过枚举状态转移图中所有可到达的顶点来进行“暴力证明”，以验证一些性质的正确性。

状态机模型还可以作为参考，用于验证真实 OS 实现的正确性。例如，我们可以用相同的输入运行模型和真实的 OS，然后比较它们的输出。这也是我在 OS 大实验中将要关注的部分。

## Enumeration Demystifies Operating Systems

MOSIAC 还支持以 HTML 的形式导出状态机图，而且支持交互。对于上面的 `fork()` 的例子，导出的 HTML 如下：

<iframe src="/gallery/Paper-Reading-The-Hitchhiker-s-Guide-to-Operating-Systems/fork-buf.html" width="100%" height="400px"></iframe>

可惜的是，MOSAIC 没办法解决状态空间爆炸问题，MOSAIC 在处理大量 `fork()` 的程序时显著变慢（例如 `fork-buf.py` 和 `tocttou.py`），因为我们的 fork() 是通过全系统重放实现的。

运行

```bash
python3 examples/_reproduce.py
```

可以得到输出：

```bash
---------------------  fork-buf (7 LOC)  ---------------------
                 N=1        15     0.1s (149 st/s)     16.83MB
                 N=2       557     3.8s (147 st/s)     20.33MB
                 N=3                            Timeout (>60s)
--------------------  cond-var (34 LOC)  ---------------------
   N=1; T_p=1; T_c=1        33               <0.1s     17.33MB
   N=1; T_p=1; T_c=2       306    0.2s (2014 st/s)     19.62MB
   N=2; T_p=1; T_c=2      2799    1.2s (2346 st/s)     25.23MB
   N=2; T_p=2; T_c=1      4666    2.1s (2189 st/s)     31.06MB
---------------------  xv6-log (27 LOC)  ---------------------
                 N=2        55     0.1s (499 st/s)     17.18MB
                 N=4       265    0.2s (1759 st/s)     17.73MB
                 N=8      6157    2.3s (2705 st/s)     40.29MB
                N=10     28687    30.5s (939 st/s)     91.43MB
---------------------  tocttou (24 LOC)  ---------------------
                 P=2        33     0.1s (260 st/s)     17.14MB
                 P=3        97     0.3s (308 st/s)     17.57MB
                 P=4       367     3.4s (108 st/s)     19.15MB
                 P=5      1402     40.5s (34 st/s)     23.12MB
------------------  parallel-inc (11 LOC)  -------------------
            N=1; T=2        40               <0.1s     17.01MB
            N=2; T=2       164               <0.1s     17.86MB
            N=2; T=3      6635    2.6s (2522 st/s)     38.52MB
            N=3; T=3     52685   20.4s (2587 st/s)    146.31MB
--------------------  fs-crash (25 LOC)  ---------------------
                 N=2        90     0.1s (815 st/s)     17.34MB
                 N=4       332    0.1s (2784 st/s)     19.07MB
                 N=8      5136    4.3s (1183 st/s)     30.02MB
                N=10                            Timeout (>60s)
```

不过话说回来，作为一个以教学为主要目的的 OS 来说，MOSAIC 已经够用了。

## MOSAIC 代码阅读

结合论文，可以对 [MOSAIC](https://github.com/jiangyy/mosaic/) 的代码进行分析。

### MOSAIC System Calls

MOSAIC 支持[部分 System Call](https://github.com/jiangyy/mosaic/tree/main?tab=readme-ov-file#modeled-system-calls)。

代码中使用了装饰器语法，这样后文所有 System Call 的实现都可以用 `@syscall` 来将系统调用注册到 `SYSCALLS` 列表中。

### MOSAIC Emulator

#### `__init__`

初始化操作系统状态。创建一个初始线程，绑定 `main()` 函数。初始化线程列表、共享堆、标准输出缓冲区和虚拟存储设备。

#### `sys_spawn`

- 功能: 创建一个共享堆的新线程，执行指定的函数。
- 实现: 新线程的上下文由函数 `func(*args)` 返回的生成器对象初始化，堆与当前线程共享。

#### `sys_fork`

- 功能: 克隆当前线程，创建一个带有拷贝堆的新线程。
- 实现: 使用深度复制操作系统状态来避免直接克隆生成器产生的问题。返回新的线程 ID。

#### `sys_sched`

- 功能: 非确定性地切换到一个可运行的线程。
- 实现: 根据当前线程列表，返回每个线程的上下文切换选项。

#### `sys_choose`

- 功能: 在给定选项列表中返回一个非确定性选择。
- 实现: 返回一个选项字典，通过外部决策选择结果。

#### `sys_write`

- 功能: 将字符串写入模拟的标准输出。
- 实现: 将输入字符串追加到 `self._stdout` 缓冲区。

#### `sys_bread`

- 功能: 从虚拟块存储设备读取指定键的值。
- 实现: 优先从缓冲区读取数据，若无数据则从持久存储读取。

#### `sys_bwrite`

- 功能: 将键值对写入虚拟块存储设备的缓冲区。
- 实现: 更新缓冲区中的键值对。

#### `sys_sync`

- 功能: 将缓冲区中的所有未完成数据写入持久存储。
- 实现: 将缓冲区数据合并到持久存储后清空缓冲区。

#### `sys_crash`

- 功能: 模拟系统崩溃，非确定性地持久化缓冲区中的部分数据。
- 实现: 对缓冲区数据的所有子集生成崩溃点，通过外部决策选择具体持久化结果。

#### `replay`

- 功能: 重放一系列操作记录，恢复系统状态。
- 实现: 按顺序执行操作记录中的每一步，返回最终状态。

#### `_step`

- 功能: 执行当前线程的下一步操作。
- 实现: 从当前线程的生成器中获取系统调用，调用对应的系统调用处理函数，更新系统状态。

#### `state_dump`

- 功能: 导出操作系统当前状态，便于外部分析和模型检查。
- 实现: 包括当前线程、线程上下文、堆状态、标准输出和存储设备状态的详细信息。

#### `current`

- 功能: 获取当前正在运行的线程对象。
- 实现: 返回线程列表中索引为 `self._current` 的线程。

#### `_switch_to`

- 功能: 切换到指定的线程。
- 实现: 更新当前线程索引，重设全局变量 `os` 和 `heap`。

### MOSAIC Runtime

MOSAIC Runtime 由 Checker 和 Parser 两部分组成。

#### MOSAIC Checker

Checker 中有两个重要的函数：`run()` 和 `check()`。`run()` 负责（随机地遍历）模拟一次运行情况，`check()` 负责验证所有的运行情况。

它们的返回值都是一个三元组 `(source, vertices, edges)`：

- `source` 是（运行的）源代码。
- `vertices` 是：
  - 对于 `run()`：所有 `state` 按照运行情况的顺序构成的列表，首个元素是初始状态 `st0`。
  - 对于 `check()`：所有 `state` 构成的集合。

  每一个 `state` 都对应一个 Hash 值。
- `edges` 是所有 `state` 之间转移边的列表。每一条边都由三元组 `(source, target, label)` 表示，其中 `source` 和 `target` 都是对应的 Hash 值，`label` 表示选择的哪个 `choice`。

#### MOSAIC Parser

Parser 负责解析并重写（将要运行的）代码。

`Transformer` 继承于 `ast.NodeTransformer`，重载了 `visit_Call(self, node)` 方法，将代码中所有的 System Call 都转为 `yield (<syscall>, <*args>)` 的形式。

<table style="width: 100%;">
    <thead>
        <tr>
            <th style="width: 50%;">重写前</th>
            <th style="width: 50%;">重写后</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 50%;">
              ```python examples/fork-buf.py (modified)
              def main():
                  N = 2
                  heap.buf = ''
                  for _ in range(N):
                      pid = sys_fork()
                      sys_sched()
                      heap.buf += f'️{pid}\n'
                  sys_write(heap.buf)
              ```
            </td>
            <td style="width: 50%;">
              ```python
              def main():
                  N = 2
                  heap.buf = ''
                  for _ in range(N):
                      pid = (yield ('sys_fork', ()))
                      yield ('sys_sched', ())
                      heap.buf += f'️{pid}\n'
                  yield ('sys_write', (heap.buf,))
              ```
            </td>
        </tr>
    </tbody>
</table>

### `main` 函数

读入（待运行的）源代码，根据运行参数（`--run` 和 `--check`）来选择是（遍历）模拟此文件，还是利用状态机对此文件进行验证。

## 总结

就像 [蒋炎岩](https://ics.nju.edu.cn/~jyy/)老师在 [操作系统原理 (2025 春季学期) - 数学视角的操作系统](https://jyywiki.cn/OS/2025/lect4.md) 中说的那样：

> Take-home Message: 程序就是状态机；状态机可以用程序表示。因此：我们可以用更“简单”的方式 (例如 Python) 描述状态机、建模操作系统上的应用，并且实现操作系统的可执行模型。而一旦把操作系统、应用程序当做 “数学对象” 处理，那么我们图论、数理逻辑中的工具就能被应用于处理程序，甚至可以用图遍历的方法证明程序的正确性。

整篇论文的核心就是进程可以看作是状态机，OS 可以看作是管理状态机的系统。从这个角度来看能够对它进行枚举和验证。
