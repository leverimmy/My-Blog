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

Kani 使用 Rust 的 attribute 机制来指导验证过程。~~把它们放在函数定义语句前面就好了。~~

### `#[kani::proof]`

`#[kani::proof]` 用于标记一个函数是 Proof Harness。Proof Harness 是 Kani 进行形式化验证的入口点。当你运行 `cargo kani`（或者 `kani main.rs`）时，它会查找所有带有这个 attribute 的函数，并尝试验证它们。

例如：
```rust
#[kani::proof]
fn check_my_function_logic() {
    // 使用 kani::any() 来创建任意输入
    let input: u32 = kani::any();
    kani::assume(input < 100); // 添加假设条件

    // 调用要验证的函数
    let result = my_library::my_function(input);

    // 添加断言来检查
    assert!(result > input || result == 0);
}
```

注意，`#[kani::proof]` 这个 attribute **只能用于无参数函数**。不过，这也是合理的，因为我们总是对一个叫作 `fn check_xxx() { ... }` 的函数对其他待验证的函数进行验证。

### `#[kani::should_panic]`

`#[kani::should_panic]` 用于标记一个 Proof Harness，表明**预期这个 Proof Harness 在验证过程中会发生 panic**。

```rust
struct Device {
    is_init: bool,
}

impl Device {
    fn new() -> Self {
        Device { is_init: false }
    }

    fn init(&mut self) {
        assert!(!self.is_init); // 断言设备尚未初始化
        self.is_init = true;
    }
}

#[kani::proof]
#[kani::should_panic]
fn cannot_init_device_twice() {
    let mut device = Device::new();
    device.init();
    device.init(); // 预期此处会 panic
}

fn main() {
    // println!("Hello, world!");
}
```

运行会得到输出

```bash
VERIFICATION:- SUCCESSFUL (encountered one or more panics as expected)
```

它的不足之处在于，如果有多个 `#[kani::should_panic]`，验证的结果只会表明**是否有一个或多个 panic**，而不能精确定位到哪个或哪些 panic 了。

### `#[kani::unwind(<N>)]`

如果在一个函数前面写这个 attribute，那么这个函数里的所有循环都会被默认展开 `N` 次。这个属性会覆盖通过命令行参数 `--default-unwind <M>` 设置的全局循环展开上界。

## Contracts & Loop Contracts

Contracts 和 Loop Contracts 允许我们能直接在代码中嵌入**形式化的规范**，帮助 Kani 进行更深入或模块化的验证。

### Contracts

Contracts 有两种，一种是被称为 **Precondition**（前置条件），一种被称为 **Postcondition**（后置条件）。

- Preconditions 通过 `#[kani::requires(condition)]` 这个 attribute 来指定。
   - 前置条件是调用函数前必须满足的条件。
   - 当 Kani 验证函数体本身时，它会**假设**这些前置条件成立。
   - 当 Kani 验证调用该函数的代码时，它会**检查**调用方是否满足了这些前置条件。
- Postconditions 通过 `#[kani::ensures(condition)]` 属性指定。
   - 后置条件是函数成功执行完毕后必须满足的条件。
   - Kani 会尝试证明在函数返回时（假设前置条件已满足），这些后置条件成立。
   - 在后置条件的表达式中，通常可以使用一个特殊的标识符（例如 `result`）来指代函数的返回值。

下面是一个代码示例：

```rust
#[kani::requires(x >= 0.0)] // 前置条件：x 必须是非负数
#[kani::ensures(|result| result * result - x <= 1e-6 || x - result * result <= 1e-6)] // 后置条件：结果的平方约等于 x
fn checked_sqrt(x: f64) -> f64 {
    return x.sqrt(); // 计算平方根并转换为整数
}

#[kani::proof_for_contract(checked_sqrt)]
fn prove_sqrt_contract() {
    let val: f64 = kani::any();
    kani::assume(val >= 0.0 && val < 5.0); // 假设输入在合理范围内

    // Kani 在验证 checked_sqrt 时会利用其 requires 和 ensures
    // 如果 checked_sqrt 的实现满足其 contract ，这里就可以基于 contract 进行推理
    let result = checked_sqrt(val);

    // 我们可以基于 postcondition 进行进一步断言，或依赖 Kani 自动检查 postcondition
    assert!(result >= 0.0);
}

fn main() {
    // This is a placeholder main function.
}
```

引入 contract 带来的好处是，函数**可以基于其 contract 独立进行验证**，此即“模块化验证”（Modular Verification）。当验证调用者时，Kani 可以信任被调用函数会遵守其 contract（如果被调用函数本身已被验证过），而无需重新分析其内部实现，这有助于提高验证的可伸缩性。

### Loop Contracts

Loop Contracts 用于为循环指定 Loop Invariants（循环不变量），目的是将 Kani 的**有界证明** 扩展到**无界证明**。循环不变量是一个表达式，它在进入循环之前以及每次循环体执行之后都必须为真，它捕捉了循环每一步中某些不变的属性。

回顾一下有界证明和循环展开的概念：Kani 展开循环的次数上限同时也限制了输入的大小，从而导致有界证明。Loop Contracts 通过将循环抽象为非循环的代码块来避免循环展开，进而消除了对输入的限制。

考虑以下示例：

```rust
fn simple_loop() {
    let mut x: u64 = kani::any_where(|i| *i >= 1);

    while x > 1 {
        x = x - 1;
    }

    assert!(x == 1);
}
```

在这个程序中，循环不断递减 `x` 直到它等于 `1`。由于我们没有指定 `x` 的上限，Kani 需要展开循环 `u64::MAX` 次才能验证此函数，这在计算上是不可行的。Loop Contracts 允许我们抽象化循环行为，从而显著降低验证成本。

通过 Loop Contracts，我们可以使用不变量来指定循环的行为。例如：

```rust
#![feature(stmt_expr_attributes)]
#![feature(proc_macro_hygiene)]

fn simple_loop_with_loop_contracts() {
    let mut x: u64 = kani::any_where(|i| *i >= 1);

    #[kani::loop_invariant(x >= 1)]
    while x > 1 {
        x = x - 1;
    }

    assert!(x == 1);
}
```

这里，循环不变量 `#[kani::loop_invariant(x >= 1)]` 指定了条件 `x >= 1` 在每次迭代开始之前（loop guard 检查前）都必须为真。一旦 Kani 验证了该循环不变量是归纳性的，它将使用该不变量来抽象循环并避免展开。

运行带有 Loop Contracts 的证明时 (例如使用 `kani simple_loop_with_loop_contracts.rs -Z loop-contracts`)，Kani 会进行多项检查，包括：

-   **不变量基准情况 (Invariant Base Case)**: 检查循环不变量在首次进入循环前是否成立。
-   **赋值子句包含 (Assigns Clause Inclusion)**: 检查 Kani 推断出的循环修改变量是否正确。
-   **不变量归纳步骤 (Invariant Inductive Step)**: 检查在假设不变量成立并执行一次循环体后，不变量是否依然成立。

如果所有检查都成功，Kani 就能验证属性（例如 `assert!(x == 1);`）在循环抽象的基础上成立。

#### `while` 循环的 Loop Contracts

**语法**

```rust
#[kani::loop_invariant( Expression )]
while Expression {
    // Loop body
    // ...
}
```

**语义**

Loop Contract 会被 Kani 扩展为一系列的假设 (assumptions) 和断言 (assertions)：

1.  在第一次迭代之前，断言不变量成立（**基准情况**）。
2.  假设不变量在一个非确定性状态下成立，以模拟一次非确定性的迭代。
3.  再次断言不变量成立，以确立其**归纳性**。

这里运用了数学归纳法的原理。(1) 建立了归纳的基准情况，(2) 和 (3) 建立了归纳步骤。因此，不变量必须在循环执行任意次数后都保持成立。这个不变量，连同循环守卫条件的否定，必须足以证明循环之后的所有断言。如果不足够，则说明抽象不够精确，用户需要提供一个更强的不变量。

Kani 通过将循环抽象为一个非循环块来处理。大致过程如下（以上述 `simple_loop_with_loop_contracts` 为例）：

1. **检查基准情况**: `assert!(x >= 1);`
2. 将循环内修改的变量（如 `x`）设置为任意值：`x = kani::any();`
3. **假设归纳假设成立**: `kani::assume(x >= 1);`
4. 考虑两种路径：
   - **路径 1 (进入循环)**: 如果循环守卫 (`x > 1`) 和循环不变量 (`x >= 1`) 都满足。
      - 执行循环体: `x = x - 1;`
      - **检查不变量归纳性**: `assert!(x >= 1);`
      - 阻塞此路径以分别证明另一路径: `kani::assume(false);` (因为此路径关注的是不变量的保持，而不是循环后的状态)
   - **路径 2 (退出循环)**: 如果循环不变量 (`x >= 1`) 满足但循环守卫 (`x > 1`) 不满足。
      - 此时循环的后置条件可以表示为 `!guard && invariant`，即 `x <= 1 && x >= 1`，这意味着 `x == 1`。
      - 基于此后置条件验证循环后的断言: `assert!(x == 1);`

```rust
assert!(x >= 1) // check loop invariant for the base case.
x = kani::any();
kani::assume(x >= 1);
if x > 1 {
    // proof path 1:
    //   both loop guard and loop invariant are satisfied.
    x = x - 1;
    assert!(x >= 1); // check that loop invariant is inductive.
    kani::assume(false) // block this proof path.
}
// proof path 2:
//   loop invariant is satisfied and loop guard is violated.
assert!(x == 1);
```

通过这种方式，Kani 分别证明循环体保持不变量以及不变量和循环终止条件一起蕴含循环后的属性。

#### 局限性

Loop Contracts 目前存在以下局限性：

1.  **仅支持 `while` 循环**：不支持 `loop`、`while let` 和 `for` 循环。
2.  **循环修改变量的推断**：Kani 通过别名分析来推断循环修改的变量 (loop modifies)。这些是在归纳假设中被假定为任意值的变量，应覆盖循环执行期间所有被写入的内存位置。如果推断的循环修改变量遗漏了循环中实际写入的目标（例如，在循环内调用的其他函数修改了结构体的某些字段），证明可能会失败。
3.  **不检查循环终止性**：在使用 Loop Contracts 进行证明时，Kani 不会检查循环是否总是会终止。因此，某些属性可能被 Kani 成功证明，但由于某些循环不终止，这些属性在实际执行中可能是不可达的。
4.  **循环不变量的副作用**：Kani 不检查循环不变量是否无副作用。带有副作用的循环不变量可能导致不健全的证明结果。用户需要确保指定的 Loop Contracts 是无副作用的。

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

总的来说，这次学习让我对 Kani 这种形式化验证工具有了系统性的了解。虽然它有其局限性，且掌握它需要投入精力，但它为验证代码（尤其是关键和安全敏感部分）的正确性提供了一种比传统测试更强有力的方法。对于我参与的操作系统大实验项目——用形式化验证工具验证 OS 的正确性——Kani 无疑是一个值得深入研究和应用的工具。

## References

1. [The Kani Rust Verifier](https://model-checking.github.io/kani/)
2. [LearningOS/osbiglab-2024s-verifyingkernel](https://github.com/LearningOS/osbiglab-2024s-verifyingkernel/)
3. [程序验证（7）- 有界程序验证](https://zhuanlan.zhihu.com/p/318446383)
4. [Can somebody explain how Kani verifier works?](https://users.rust-lang.org/t/can-somebody-explain-how-kani-verifier-works/113918)
