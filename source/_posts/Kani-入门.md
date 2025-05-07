---
title: Kani 入门
tags:
  - Kani
  - 形式化验证
  - Rust
categories:
  - 技术
mathjax: true
toc: true
date: 2025-04-22 12:51:13
password:
id: An-Introduction-to-Kani
---

这学期在学习《操作系统》这门课程，参加了“操作系统大实验”来替代期中、期末考试。我选择的方向是用形式化验证工具来验证 OS 的正确性，因此来学习一下 [Kani](https://github.com/model-checking/kani)。

<!--more-->

## Getting Started

### Installation

通过 `cargo` 来安装 Kani：

```bash
cargo install --locked kani-verifier
cargo kani setup
```

如果显示

```bash
...
   Installed package `kani-verifier v0.xx.0` (executables `cargo-kani`, `kani`)
...
[5/5] Successfully completed Kani first-time setup.
```

就说明安装成功了！

### Usage

- 对于单文件而言，`kani main.rs` 可以进行验证；
- 对于一个 Cargo package 而言，使用 `cargo kani` 可以进行验证。

使用 Kani 有很多参数，其中最常见的一些：

- `--concrete-playback=[print|inplace]`：用于生成一个反例 testcase。
  - 如果使用 `print`，Kani 会将生成的单元测试代码打印到标准输出，方便你查看和复制。
  - 如果使用 `inplace`，Kani 会**自动将该单元测试代码添加到你的源代码中**。这对于调试和理解验证失败的原因非常有帮助。更详细的使用说明可以参考 concrete playback 部分。
- `--default-unwind <n>`：用于设置一个全局的默认循环展开上界。
  在形式化验证过程中，处理循环是一个关键的挑战。Kani 使用的底层模型检查器是 CBMC，通常会尝试展开循环来分析所有可能的执行路径。然而，对于需要大量展开的循环或者无限循环，完全展开可能会导致验证过程无法终止。使用 `--default-unwind <n>` 可以强制 Kani 在循环展开到 `n` 次后停止。

更多的使用方法可以查看 `cargo kani --help`，或者参考 [Using Kani - The Kani Rust Verifier](https://model-checking.github.io/kani/usage.html)。

## Tutorial

### Loop Unwinding

在形式化验证中，尤其是基于有界模型检查（Bounded Model Checking, BMC）的工具（如 Kani 底层使用的 CBMC），循环的处理是一个核心问题。由于循环的迭代次数可能是无限的，或者在静态分析时难以确定，直接分析所有可能的循环路径通常是不可行的。

Kani 通过 **Loop Unwinding**（循环展开）的技术来解决这个问题。这意味着 Kani 会将循环体复制（展开）一个固定的次数 $N$，将循环结构转换为一个没有循环的、更长的代码序列进行分析。

**工作方式**

当你为 Kani 指定一个循环展开上界 $N$ 时（例如，通过 [`#[kani::unwind(N)]` attribute](#attributes<!-- TODO -->) 或使用命令行参数 `--default-unwind <N>`）：

1.  Kani 会模拟执行循环的前 $N$ 次迭代（即索引从 $0$ 到 $N-1$ 的迭代）。
2.  在第 $N$ 次迭代之后（即当索引为 $N$ 的迭代将要开始时），Kani 会插入一个 assertion，检查此时循环的条件是否为假（即循环是否应该终止）。
3.  如果此时循环条件仍然为真，意味着循环实际执行的次数可能超过了 $N$ 次，Kani 会报告一个“unwinding assertion failure”。这并不一定意味着你的代码有 bug，而是表明 Kani 的分析在这个循环上是不完整的（因为它没有检查所有可能的迭代）。

**思考**

选择合适的循环展开次数是使用 Kani 进行验证的关键一步。

- 如果 $N$ 太小，Kani 可能无法探索到足够深的循环迭代，从而遗漏隐藏在循环深处的 bug，或者因为“循环展开断言失败”而无法完成验证。
- 如果 $N$ 太大，会导致生成的模型非常复杂，显著增加验证所需的时间和内存资源，甚至可能超出分析能力。

所以说，在代码中，需要确保 $N$ 的值至少是期望验证的循环最大迭代次数加 $1$。比如，如果一个循环最多迭代 $k$ 次（如 `for i in 0..k`），需要设置展开上界为 $k+1$，这样 Kani 才能完整检查这 $k$ 次迭代，并确认在第 $k+1$ 次迭代时循环条件为假。

在实际操作中，确定最佳的 $N$ 值往往需要对被验证代码的逻辑有深入理解，并可能需要一些实验和调整。对于验证操作系统组件而言，循环无处不在（例如处理缓冲区、消息队列等），因此深刻理解循环展开机制及其影响至关重要。有时，为了验证复杂的循环，可能还需要结合代码重构或更高级的抽象技术。

### Nondeterministic Variables

在进行形式化验证时，我们通常希望证明代码对于“所有可能”的输入或在“所有可能”的条件下都能正确工作。为了实现这一点，Kani 引入了 **Nondeterministic Variables** 的概念。

不确定性变量是指其值在验证开始时不是固定的，而是可以取其类型允许范围内的任何值。Kani 会尝试探索这些不确定性变量的不同取值组合，以覆盖尽可能多的程序行为。

**如何在 Kani 中使用**

1. **`kani::any::<T>()`**: 调用 `kani::any::<T>()` 会返回一个类型为 `T` 的不确定性值。例如，`let x: u32 = kani::any();` 表示 `x` 可以是任何 `u32` 类型的值。
2. **`kani::assume(condition: bool)`**: 仅仅使用 `kani::any()` 可能会产生很多无效或不相关的测试用例（例如，一个数组长度超出了其物理边界）。`kani::assume(condition)` 用于告知 Kani 只考虑那些使得 `condition` 为真的执行路径。
   - 如果 `condition` 为假，Kani 会“放弃”当前的执行路径，不将其视为一个需要检查的场景，也不会报告错误。这与 `assert!(condition)` 不同，`assert!` 在 `condition` 为假时会报告验证失败。
   - `kani::assume` 就像是为你的证明目标添加了前提条件 (preconditions)。

**思考**

Nondeterministic Variables 比传统测试更强，因为传统测试只能在有限的状态空间（测试集）内进行测试，但 `kani::any()` 可以测试一个“任意”类型的、具有“任意”值的变量。

另外，结合 `kani::assume()`，可以精确地定义验证的 boundary 和前提条件，**使得验证集中在感兴趣的行为上**。例如，在验证操作系统内核的某个模块时，可以用不确定性变量来模拟来自用户空间或硬件的任意（但符合特定规范的）输入或事件。你不再是为特定的输入值编写测试，而是描述输入的属性（通过 `assume`）和期望输出的属性（通过 `assert`），让 Kani 去寻找违反这些属性的情况。

使用不确定性变量和 `assume` 可以帮助我们更有信心地~~（但也不是完全有信心 XD）~~声明代码的正确性，因为验证不仅仅针对几个手工挑选的例子，而是针对一大类由不确定性值和约束条件定义的场景。这对于构建可靠的系统（如操作系统）来说，意义非凡。

### Example: Bubble Sort

以下是用于验证“冒泡排序”正确性的一段代码示例：

```rust
fn real_bubble_sort(arr: &mut [u32], n: usize) {
    for i in 0..n {
        for j in 0..n - i - 1 {
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
            }
        }
    }
}

fn wrong_bubble_sort(arr: &mut [u32], n: usize) {
    for i in 0..n {
        for j in i..n - i - 1 { // This is WRONG
            if arr[j] > arr[j + 1] {
                arr.swap(j, j + 1);
            }
        }
    }
}

#[cfg(kani)]
#[kani::proof]
#[kani::unwind(6)] // 至少要比循环次数多 1
fn check_bubble_sort() {
    const LIMIT: usize = 5;

    let mut arr: [u32; LIMIT] = kani::any();
    let length = kani::any();
    kani::assume(length <= LIMIT);

    // real_bubble_sort(&mut arr, length);
    wrong_bubble_sort(&mut arr, length);

    for i in 1..length {
        assert!(arr[i - 1] <= arr[i]);
    }
}

fn main() {
    // This is a placeholder main function.
}
```

执行

```bash
cargo kani -Z concrete-playback --concrete-playback=print
```

得到的反例输出是：

``````bash
SUMMARY:
 ** 1 of 78 failed (4 unreachable)
Failed Checks: assertion failed: arr[i - 1] <= arr[i]
 File: "src/main.rs", line 35, in check_bubble_sort

VERIFICATION:- FAILED
Verification Time: 27.797104s

Concrete playback unit test for `check_bubble_sort`:
```
/// Test generated for harness `check_bubble_sort` 
///
/// Check for `assertion`: "assertion failed: arr[i - 1] <= arr[i]"

#[test]
fn kani_concrete_playback_check_bubble_sort_9039211147796431439() {
    let concrete_vals: Vec<Vec<u8>> = vec![
        // 4294967295
        vec![255, 255, 255, 255],
        // 4294967295
        vec![255, 255, 255, 255],
        // 4294967294
        vec![254, 255, 255, 255],
        // 4294967295
        vec![255, 255, 255, 255],
        // 4294967295
        vec![255, 255, 255, 255],
        // 3ul
        vec![3, 0, 0, 0, 0, 0, 0, 0],
    ];
    kani::concrete_playback_run(concrete_vals, check_bubble_sort);
}
```
INFO: To automatically add the concrete playback unit test(s) to the src code, run Kani with `--concrete-playback=inplace`.
Manual Harness Summary:
Verification failed for - check_bubble_sort
Complete - 0 successfully verified harnesses, 1 failures, 1 total.
``````

这表示，反例的 `a[]` 是 `[4294967295, 4294967295, 4294967294, 4294967295, 4294967295]`，`n` 是 `3ul`。

的确，运行

```rust
fn main() {
    // This is a placeholder main function.
    let mut a = [4294967295, 4294967295, 4294967294, 4294967295, 4294967295];
    let n = 3;
    wrong_bubble_sort(&mut a, n);
    println!("{:?}", a);
}
```

会发现输出的数组的前 $3$ 项并不是有序的。

## Attributes



## Contracts & Loop Contracts



## Experimental Features



## Limitations

Kani 作为（正在发展的）一个形式化验证工具，也存在其固有的局限性和当前待完善的方面。~~比如教程和文档就不是很全（~~

1. **不支持检查并发代码**：目前 Kani 不支持对并发代码的验证。如果有需要的话，可以考虑使用 [Loom](https://github.com/tokio-rs/loom) 或者 [Shuttle](https://github.com/awslabs/shuttle)。
2. **问题规模受限**：
   - 模型检查（尤其是基于 SMT/SAT 求解器）的计算成本可能非常高。对于许多类型的属性或者大规模的程序，验证过程可能变得“过大”而难以在实际中完成。
   - 底层使用的 SAT/SMT 求解本身是 NP-Complete 的。虽然许多实际程序可以在几毫秒到几秒内完成模型检查，但某些问题（例如尝试用 model checker 求一个 one-way function）几乎不可能在合理时间内终止。
3. **编写证明和调试的技能要求**：编写有效的 Proof Harness 需要一定的技巧，有的时候还需要一定的专家知识。
4. **有界验证**：Kani 进行的是有界模型检查（Bounded Model Checking）。这意味着它只在给定的边界内（例如循环展开次数、输入大小、数据结构深度等）进行详尽的分析。虽然在这个边界内它可以提供属性被满足的数学证明，但它不能保证超出这些边界的行为。这与所有基于有界模型检查的工具一样，是一个固有的特性。

选择 Kani 意味着你希望获得比传统测试（比如单元测试）更强的保证：代码在特定条件和 boundary 下具有正确性。然而，这也意味着可能需要投入更多精力来编写 Proof Harness 和处理验证过程中的复杂性。不过，对于系统的关键组件或安全敏感代码来说，这种投入通常是值得的。

## Thoughts


