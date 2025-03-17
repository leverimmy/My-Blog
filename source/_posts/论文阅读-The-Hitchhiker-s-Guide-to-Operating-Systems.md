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

用形式化语言理解 OS——**OS 是一个状态机**。

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

从这个角度来看，没有 syscall 的（用户）程序其实什么都做不了，它只能修改寄存器和分配给自己的内存。只有使用 syscall，它才能和 OS 进行交互，做更多的事情——例如修改内存映射（`mmap`）或者终止程序的运行（`exit`）。

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

## Emulate State Machines with Executable Models



## Enumeration Demystifies Operating Systems



## 总结

> Take-home Message: 程序就是状态机；状态机可以用程序表示。因此：我们可以用更 “简单” 的方式 (例如 Python) 描述状态机、建模操作系统上的应用，并且实现操作系统的可执行模型。而一旦把操作系统、应用程序当做 “数学对象” 处理，那么我们图论、数理逻辑中的工具就能被应用于处理程序，甚至可以用图遍历的方法证明程序的正确性。
