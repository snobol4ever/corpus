%---------------------------------------------------- 1 rung23_arith_ext_bitwise
:- initialization(main).
main :- X is 5 /\ 3, write(X), nl,
        Y is 5 \/ 3, write(Y), nl,
        Z is 5 xor 3, write(Z), nl,
        W is 5 >> 1, write(W), nl,
        V is 5 << 1, write(V), nl.
%---------------------------------------------------- 2 rung23_arith_ext_max_min
:- initialization(main).
main :- X is max(3,7), write(X), nl, Y is min(3,7), write(Y), nl.
%------------------------------------------------------ 3 rung23_arith_ext_power
:- initialization(main).
main :- X is 2 ** 10, write(X), nl, Y is 3 ^ 3, write(Y), nl.
%------------------------------------------------------- 4 rung23_arith_ext_sign
:- initialization(main).
main :- X is sign(-5), write(X), nl, Y is sign(0), write(Y), nl, Z is sign(3), write(Z), nl.
%--------------------------------------------------- 5 rung23_arith_ext_truncate
:- initialization(main).
main :- X is truncate(7), write(X), nl, Y is integer(4), write(Y), nl.
