# 数理逻辑-练习一

## 1

构造下列公式的真值表。

1. $\left(\left(p \to q\right) \lor \lnot r\right)$
   
   | p   | q   | r   | y   |
   |:---:|:---:|:---:|:---:|
   | 0   | 0   | 0   | 1   |
   | 0   | 0   | 1   | 1   |
   | 0   | 1   | 0   | 1   |
   | 0   | 1   | 1   | 1   |
   | 1   | 0   | 0   | 1   |
   | 1   | 0   | 1   | 0   |
   | 1   | 1   | 0   | 1   |
   | 1   | 1   | 1   | 1   |
   
   仅当 $\left(p \to q\right)$ 为假，$r$ 为真时结果为假，否则全部为真。

2. $\left(\left(p\to \left(q \to r\right)\right)\to \left(\left(p \to q\right) \to \left(p \to r\right)\right)\right)$
   
   | p   | q   | r   | y   |
   |:---:|:---:|:---:|:---:|
   | 0   | 0   | 0   | 1   |
   | 0   | 0   | 1   | 1   |
   | 0   | 1   | 0   | 1   |
   | 0   | 1   | 1   | 1   |
   | 1   | 0   | 0   | 1   |
   | 1   | 0   | 1   | 1   |
   | 1   | 1   | 0   | 1   |
   | 1   | 1   | 1   | 1   |
   
   仅当前件 $\left(p\to \left(q \to r\right)\right)$ 为真且后件 $\left(\left(p \to q\right) \to \left(p \to r\right)\right)$ 为假时结果才为假，后件为假即 $\left(p \to q\right)$ 为真且 $\left(p \to r\right)$ 为假，由 $p \to r$ 为假得 $p$ 为真且 $r$ 为假，再由 $p \to q$ 为真与 $p$ 为真得 $q$ 为真，但此时 $q \to r$ 为假，总体的前件 $p \to \left(q \to r\right)$ 也为假，与其为真的假设矛盾，所以总体不存在结果为假的情况。

## 2

(a) 用 $p$ 表示 Mr. Jones is happy ，用 $q$ 表示 Mrs. Jones is happy ，则命题可表示为： $(p \to \lnot q) \land (\lnot p \to \lnot q)$ 。

(b) 用 $p$ 表示 $x$ 是质数，用 $q$ 表示 $x$ 是奇数，则命题可表示为 $p \to q$ 。

(c) 用 $p$ 表示 Sam 参加 party ，用  $q$ 表示 Max 参加 party ，用 $r$ 表示 Max enjoy himself, 则命题可以表示为：$(p \land \lnot q) \lor (\lnot p \land r)$ 。

(d) 用 $p$ 表示 $s$ to coverage ，用 $q$ 表示 $s$ is bounded ，则命题可以表示为 $p \to q$ 。

(e) 用 $p$ 表示 $x > 0$ ，用 $q$ 表示 $x^2>0$ ，则命题可以表示为 $p \to q$ 。

## 3

$\Rightarrow$ ：因为 $B \equiv C$ 所以对于任意的赋值 $v$ 有 $B^v=C^v$ ，对任意的赋值 $v$ 如果 $B^v=1$ 则 $C^v=1$ ，从而 $B \models C$ 且 $C \models B$ 。

$\Leftarrow$ ：因为 $B \models C$ 所以对任意赋值 $v$ ，如果 $B^v=1$ 则 $C^v=1$ ；又因为 $C \models B$ 所以对任意赋值 $v$ 如果 $C^v=1$ 则 $B^v=1$ 。如果赋值 $v$ 使得 $B^v=0$ 则只能 $C^v=0$ ，否则如果 $C^v=1$ 会推出 $B^v=1$ 。同理如果赋值 $v$ 使得 $C^v=0$ 也可得只能 $B^v=0$ 。由此，任意赋值 $v$ 要么 $B^v=1$ 且 $C^v=1$ 要么 $B^v=0$ 且 $C^v=0$ ，从而 $B \equiv C$ 。

综上，$B \equiv C$ 当且仅当 $B \models C$ 且 $C \models B$ 。

## 4

$\Rightarrow$ ：由 $B \equiv C$ 得，对于任意的赋值 $v$ 有 $B^v=C^v$ 。若 $B^v=1$ 则 $C^v=1$ ，则有 $(\lnot B)^v=1-B^v=0$ 且 $(\lnot C)^v = 0$ ；若 $B^v=0$ 则 $C^v=0$ ，则有 $(\lnot B)^v=1$ 且 $(\lnot C)^v=1$ 。由此对任意的赋值 $v$ 均有 $(\lnot B)^v=(\lnot C)^v$ ，从而 $(\lnot B) \equiv (\lnot C)$ 。

$\Leftarrow$ ：由 $(\lnot B) \equiv (\lnot C)$ 得，对于任意的赋值 $v$ 有 $(\lnot B)^v = (\lnot C)^v$ 。若 $(\lnot B)^v=1$ 则 $(\lnot C)^v=1$ ，则有 $B^v=(\lnot(\lnot B))^v=1-(\lnot B)^v=0$ 且 $C^v=0$ ；若 $(\lnot B)^v=0$ 则 $(\lnot C)^v=0$ ，则有 $B^v=1$ 且 $C^v=1$ ，由此对任意的赋值 $v$ 均有 $B^v=C^v$ ，从而 $B \equiv C$ 。

综上，$B \equiv C$ 当且仅当 $(\lnot B) \equiv (\lnot C)$ 。

## 5

a b c d e f g h 都是 ，i $(A \land (\lnot B))$ 不是。如果存在一组赋值 $v$ 使得 $A^v=1$ 且 $B^v=1$ ，则 $(A \land B)^v=1$ ，但 $(A \land (\lnot B))^v=0$ ，不满足逻辑蕴涵。

## 6

(a) 式 $B \leftrightarrow (B \lor B)$ 是重言式

(b) $((A \to B) \land B) \to A$ 都不是

(c) $(\lnot A) \to (A \land B)$ 都不是

(d) $(A \to B) \to ((B \to C) \to (A \to C))$ 重言式

(e) $(A \leftrightarrow \neg B) \to A \lor B$ 重言式

(f) $A \land \left(\lnot \left(A \lor B\right)\right)$ 矛盾式

(g) $(A \to B) \leftrightarrow ((\lnot A) \land B)$ 都不是

(h) $(A \to B) \leftrightarrow \lnot (A \land (\lnot B))$ 重言式

(i) $(B \leftrightarrow (B \to A)) \to A$ 重言式

## 7

(a) 当 $T$ 为重言式时，$T \land B$ 与 $B$ 逻辑等价。

对任意赋值 $v$ ，如果 $(T \land B)^v=1$ 则 $B^v=1$ ；从而 $(T \land B) \models B$ ；如果 $B^v=1$ 则由于 $T$ 为重言式，$T^v=1$ ，则  $(T \land B)^v=1$ ，从而 $B \models (T \land B)$ 。综上二者逻辑等价。

(b) 当 $T$ 为重言式时，$T \lor B$ 与 $T$ 逻辑等价。

对任意赋值 $v$ ，由于 $T$ 是重言式，即 $T^v=1$ ，从而只能有 $(T \lor B)^v=1$ ，从而 $T \models (T \lor B)$ ；如果 $(T \lor B)^v=1$ 则 $T^v=1$ ，所以 $(T \lor B) \models B$ 。综上二者逻辑等价。

(c) 当 $F$ 是矛盾式时，$F \lor B$ 与 $B$ 逻辑等价。

对任意赋值 $v$ ，当 $(F \lor B)^v=1$ 时，由于 $F$ 为矛盾式，$F^v=0$ ，从而 $B^v=1$ ，因此有 $(F\lor B) \models B$ ；当 $B^v=1$ 时，$(F \lor B)^v=1$ ，因此 $B \models (F\lor B)$ 。综上二者逻辑等价。

(d) 当 $F$ 是矛盾式时，$F \land B$ 与 $F$ 逻辑等价。

对任意赋值 $v$ ，由于 $F$ 是矛盾式，$F^v=0$ ，因此也有 $(F \land B)^v=0$ 。假设存在一组赋值 $v$ 使得 $(F \land B)^v=1$ 则 $F^v=1$ 与 $F$ 是矛盾式之间矛盾，所以不存在使得 $(F \land B)^v=1$ 的赋值 $v$ 。两式均恒假，它们逻辑等价。
