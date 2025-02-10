---
title: 论文阅读：Campion: Debugging Router Configuration Differences
tags:
  - 网络验证
  - 路由器
  - BatFish
  - Campion
categories:
  - 科研
mathjax: true
toc: true
date: 2025-02-05 20:56:40
password:
id: Paper-Reading-Campion-Debugging-Router-Configuration-Differences
---

SIGCOMM'21, [论文链接](https://doi.org/10.1145/3452296.3472925)

<!--more-->

## 主要成果

1. 提出了一种模块化方法，能够识别两个配置之间的所有行为差异，并将这些差异**定位到相关的配置代码行**。
2. 依据以上方法设计并开源了 Campion。

Modular Checking：(route maps, ACLs, OSPF costs, etc.) 不同的 component 分别进行检查，便于确定错误的位置。

- StructuralDiff
  - OSPF、静态路由等，只有它们的配置**完全一样**，行为才会完全一致。
  - 每处 structural mismatch 就是一处行为差异
- SemanticDiff
  - 把 component 看成 function（比如 ACL，以 packet 作为输入，输出是一个 bool 值）
  - 使用 Header Localization，找到所有的会出错的输入。
    - 用两个集合 $\text{Included Prefixes}$ 和 $\text{Excluded Prefixes}$ 表示。会出错的输入是所有在 $\text{Included Prefixes}$ 里，但是不在 $\text{Excluded Prefixes}$ 里的 IP 前缀的集合。
  - Text Localization，找到导致这些错误的配置代码行。

Minesweeper 的缺点：

1. Minesweeper 每次的输出样例只能展示一个行为差异。
2. Minesweeper 只会输出一个**具体**的例子，而如何从这个例子对应到出错的配置代码行，仍然需要专家和人力。

虽然的确可以对 SMT solver 进行各种约束，来重复得到不同的输出样例（以解决问题 1），但问题 2 仍然无法得到解决。

## 研究思路

```rust
fn ConfigDiff(C_1, C_2) {
	result = [ ]
	pairs = MatchPolicies(C_1, C_2)
	for (p_1, p_2) in pairs do {
        differences = Diff(p_1, p_2)
        for d in differences do
            result = result.append(Present(d, {C_1, C_2}))
    }
    return result
}
```

三部分：

1. MatchPolicy，用于将不同的 component 对应起来。
2. Diff，具体分为 SemanticDiff 和 StructuralDiff，得到（很多组）：
   - input
   - component 的行为差异
   - 对应的配置代码行
3. Present，形式化输出结果，包括但不限于用 Header Localization 表示 SemanticDiff 得到的会出错的输入的 IP Prefix。

### SemanticDiff

得到的 difference 是一个五元组 $(i, a_1, a_2, t_1, t_2)$。

- $i$ 是输入。
  - 对于 ACL 而言，是 packets
  - 对于 route maps 而言，是 route advertisements
  - $a_1$ 和 $a_2$ 是 components 分别的 action。
- $t_1$ 和 $t_2$ 是 components 对应的配置代码。

#### Step 1：生成列表

将 input 分为等价类。ACL 和 route map 都可以看作是很多个 if-then-else。如果两个输入在这些语句中经过相同的分支路径，则它们属于同一个等价类。

#### Step 2：比对

对于等价类 $(i_{1, i}, a_{1, i}, t_{1, i})$ 和 $(i_{2, j}, a_{2, j}, t_{2, j})$ 而言，如果 $i_{1, i} \cap i_{2, j} \neq \varnothing$，且 $a_{1, i} \neq a_{2, j}$，那么就找到了
$$
(i_{1, i} \cap i_{2, j}, a_{1, i}, a_{2, j}, t_{1, i}, t_{2, j})
$$
这个 difference。

### HeaderLocalize

SemanticDiff 会生成一组以逻辑谓词形式表示的数据包，这些数据包展示了行为差异。HeaderLocalize 的目标是将 SemanticDiff 所产生的差异数据进一步转化为**更易于人类理解的表示形式**。

具体来说，HeaderLocalize 会生成一个紧凑的表示形式，涵盖与 ACL 差异相关的所有目标 IP 地址集合，以及与路由映射差异相关的所有 IP 前缀范围集合。

#### Prefix Range

对于 Route Map 来说，IP 前缀范围集合是由 *prefix range* 表示的。Prefix Range 由一个 IP 前缀，和一个长度范围构成。例如 (1.2.0.0/16, 16-32)。

#### HeaderLocalize

HeaderLocalize 的

- 输入是一个 BDD $S$，它表示受已识别策略差异影响的消息集合，以及原始配置 $C_1$ 和 $C_2$。
- 输出是 $S$ 的前缀范围表示，用 $C_1$、$C_2$ 中的前缀范围的交、并、补来表示。

HeaderLocalize 的目的是找到 $S$ 的最小表示。记 $R$ 为 $C_1$ 和 $C_2$ 中所有前缀范围的并集。如果 (0.0.0.0/0, 0-32)（所有前缀范围，记为 $U$）不在 $R$ 中，则 $R \gets R \cup \{U\}$。

现在的目的是用 $R$ 中的元素表示出 $S$。可以构造出一个 DAG。

根节点是 $U$。每个前缀范围都对应一个节点。假设 $u, v$ 是两个节点，分别对应前缀范围 $R_u, R_v$，连接 $(u, v)$，当且仅当 $R_v \subset R_u$ 且不存在 $w$ 满足 $R_u \subset R_w \subset R_v$。

#### 余集

某内部节点 $u$ 的余集，是 $R_u - \cup R_v$，其中 $v$ 是 $u$ 的孩子。**所有的 Remainder Set，与叶节点的 prefix range：要么是 $S$ 的子集，要么与 $S$ 不相交。**

#### GetMatch

```rust
fn GetMatch(S, node) {
    C = Children(node)
    R = PrefixRange(node)
    
    if isLeaf(node) {
        if R is subset of S {
            return {R}
        } else {
            return EmptySet
        }
    }
    
    if Remainder(node, C) is subset of S {
        nonmatches = Union(GetMatch(not S, k) for k in C)
        return {R - nonmatches}
    } else {
        return Union(GetMatch(S, k) for k in C)
    }
}
```

### StructuralDiff

用于比较两个 component 的结构是否相同。所有的 component 由 atomic values, tuples 和 unordered sets 组成。

#### OSPF

例如，检查两个 OSPF 配置是否相同：

- OSPF peers 相同
  - 这是一个 unordered set
- OSPF edges 相同（包括边上的 costs、passive status 等）
  - 可以认为每一个 OSPF link 是具有以上属性的 tuple，然后检查每个 atomic value 是否对应相等

#### BGP

BGP 和 OSPF 是类似的。

#### Connected Routes

将每个路由器的 Connected Subnet 表示为一个 unordered set，通过计算差集来找出 difference。

#### Static Routes

每个 Static Route 可以表示为一个 tuple，包含 destination prefix, next hop 和 administrative distance 等。

## 总结

Campion 是一个基于 Batfish 的工具，能够用来对路由器的行为进行差异分析，支持 BGP、OSPF、静态路由和 ACL 等常见网络特性。

它通过 BDD 表示数据，并使用启发式规则匹配路由器间的配置组件。然后通过 SemanticDiff 和 StructuralDiff，加上 HeaderLocalize，得到两个路由器配置的差异。同时，它能够给出多个具体反例，并**定位问题对应的配置行**。
