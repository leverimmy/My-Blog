---
title: 【学习笔记】Quantum Computation and Quantum Information
tags:
  - 理论计算机科学
  - 量子计算
categories:
  - 笔记
mathjax: true
toc: true
date: 2024-05-12 20:14:22
password:
id: QCQI
---

这是 *Quantum Computation and Quantum Information* 的学习笔记。

<!--more-->

## Nomenclature and notation

### Linear Algebra and quantum mechanics

#### Positive, positive definite, and support

An operator $A$ is *positive* if $\braket{\psi |A| \psi} \ge 0$ holds for all $\ket{\psi}$.

An operator $A$ is *positive definite* if $\braket{\psi |A| \psi} > 0$ holds for all $\ket{\psi}$.

The *support* of an operator is defined to be the vector space orthogonal to its kernel.

#### The Letter H

$H$ is for *Hadamard Gate*, which has the matrix representation
$$
H = \frac{1}{\sqrt{2}}\begin{bmatrix}1 & 1 \\ 1 & -1\end{bmatrix}.
$$
Or, it could be the *Hamiltonian* for a quantum system.

### Information theory and probability

#### Relative Entropy

The *relative entropy* of a positive operator $A$ **relative to ** another positive operator B is defined as
$$
S(A \parallel B) = \text{tr}(A \log A) - \text{tr}(B \log B).
$$
Note that the order of the operators matters. $A$ and $B$ need to be positive because of the $\log$ function.

### Frequently used quantum gates and circuit symbols

TBA

## Fundamental concepts

### Introduction and overview

