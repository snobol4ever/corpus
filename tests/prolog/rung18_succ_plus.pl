%---------------------------------------------- 1 rung18_succ_plus_plus_xy_bound
main :-
    plus(3, 4, Z), write(Z), nl,
    plus(0, 7, W), write(W), nl,
    plus(10, 20, V), write(V), nl.
main.
%---------------------------------------------- 2 rung18_succ_plus_plus_xz_bound
main :-
    plus(3, Y, 10), write(Y), nl,
    plus(0, W, 5),  write(W), nl.
main.
%---------------------------------------------- 3 rung18_succ_plus_plus_yz_bound
main :-
    plus(X, 4, 10), write(X), nl,
    plus(Y, 3, 3),  write(Y), nl.
main.
%---------------------------------------------- 4 rung18_succ_plus_succ_backward
main :-
    succ(X, 1), write(X), nl,
    succ(Y, 5), write(Y), nl,
    succ(Z, 100), write(Z), nl.
main.
%----------------------------------------------- 5 rung18_succ_plus_succ_forward
main :-
    succ(0, A), write(A), nl,
    succ(4, B), write(B), nl,
    succ(99, C), write(C), nl.
main.
