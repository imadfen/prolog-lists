# Prolog Task Management System
This repository is a homework for module **Artificial Intelligence**, for understanding and get familiar with `Prolog` language.

This job was done by:
+ [Mohamed Imad Fenniche.](https://github.com/imadfen/)
+ [Aboubakr Aymen Bensoltana.](https://github.com/aymen-benso/)


### Prerequisites
+ `SWI-Prolog` should be installed from [here.](http://www.swi-prolog.org/Download.html)

## **Homework Subject:** Lists

1. Write a Prolog predicate that is true if x is an element of the list L.
2. `first(E, L)` is true if E is the first element of L.
3. Write a Prolog predicate `last` that finds the last element of a list L.
4. Write a Prolog predicate `penultimate` that finds the penultimate (second-to-last) element of a list L.
5. Write a Prolog predicate that removes the Kth element from a list L1 and writes the result into a list L2.
```prolog
    ?- del_k(X,[a,b,c,d],2,R).
    X = b
    R = [a,c,d]
```
1. Define the predicate `length(L, N)`, which, given the list L, calculates its length N.
2. Define the predicate `even(L)` that is true if L has an even number of elements.
3. Define the predicate `concat(L1, L2, L3)` where L3 is the result of concatenating L1 and L2 (without using append).
4. Define the predicate `palindrome(L)` that is true if the list L is its own reversed image (example: [x,a,m,a,x]).