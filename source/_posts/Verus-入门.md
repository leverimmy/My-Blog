---
title: Verus 入门
tags:
  - Verus
  - 形式化验证
  - Rust
categories:
  - 技术
mathjax: true
toc: true
date: 2025-04-01 12:51:13
password:
id: An-Introduction-to-Verus
---

Verus。

<!--more-->

## Getting Started

从 GitHub 上 `git clone` 源码：

```bash
git clone git@github.com:verus-lang/verus.git
cd verus
```

进入 `source` 文件夹并获取 Z3：

```bash
cd source
./tools/get-z3.sh
```

进行构建：

```bash
source ../tools/activate
vargo build --release
```

我在 `~/.bashrc` 中给 Verus 取了 alias，这样以后就能直接用 `verus` 来调用 Verus。

```bash
alias verus='~/Documents/Projects/verus/source/target-verus/release/verus'
```

测试：

```bash
verus rust_verify/example/vectors.rs 
```

得到输出：

```bash
verification results:: 9 verified, 0 errors
```

安装 `verusfmt`：

```bash
cargo install verusfmt --locked
```

之后可以使用 `verusfmt` 来对代码进行格式化：

```bash
verusfmt main.rs
```

## Fundamentals



## Understanding the Prover

## Verification and Rust