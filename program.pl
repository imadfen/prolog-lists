exist([F|R], X):-
    F == X;
    exist(R, X).

first(E, [F|_]):- E == F.

last([F|R], X):-
    (
        R = [] -> X = F;
        last(R, X)
    ).

penultimate([F,_], F).
penultimate([_|R], X):-
    penultimate(R, X).


del_k(X, [F|R], K, Y):-
    (
        K = 1 -> X = F, Y = R;
        K1 is K - 1,
        del_k(X, R, K1, Y1),
        Y = [F|Y1]
    ).


% `size` instead of `length` because it already exists
size([], 0).
size([_|R], N):-
    size(R, N1),
    N is N1 + 1.

even([F|R]):-
    M is F mod 2, M == 0;
    even(R).

concat([], L2, L2).
concat([F|R1], L2, [F|R2]):-
    concat(R1, L2, R2).

palindrome([]).
palindrome([_]).
palindrome([F|R]) :-
    last(R, X),
    X = F,
    size(R, N),
    del_k(_, R, N, R1),
    palindrome(R1).
