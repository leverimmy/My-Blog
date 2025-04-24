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

Kani。

<!--more-->

## Getting Started



## Fundamentals

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
#[kani::unwind(10)]
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

得到的反例输出是：

```bash
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
```

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

## Understanding the Prover

## Verification and Rust