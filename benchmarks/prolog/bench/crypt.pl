% crypt — cryptomultiplication (van Roy suite, Peter Van Roy). Arithmetic + generate-and-test.
% Source: SWI-Prolog/bench (crypt). Prints the found digit assignment.
:- initialization(main).
main :- top(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P), write([A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P]), nl.
top(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P):-
        odd(A), even(B), even(C), even(E),
        mult([C,B,A], E, [I,H,G,F|X]),
        lefteven(F), odd(G), even(H), even(I), zero(X),
        lefteven(D),
        mult([C,B,A], D, [L,K,J|Y]),
        lefteven(J), odd(K), even(L), zero(Y),
        sum([I,H,G,F], [0,L,K,J], [P,O,N,M|Z]),
        odd(M), odd(N), even(O), even(P), zero(Z).
sum(AL, BL, CL) :- sum(AL, BL, 0, CL).
sum([A|AL], [B|BL], Carry, [C|CL]) :- !, X is (A+B+Carry), C is X mod 10, NewCarry is X // 10, sum(AL, BL, NewCarry, CL).
sum([], BL, 0, BL) :- !.
sum([], [], Carry, [Carry]).
mult(AL, D, BL) :- mult(AL, D, 0, BL).
mult([A|AL], D, Carry, [B|BL] ) :- X is A * D + Carry, B is X mod 10, NewCarry is X // 10, mult(AL, D, NewCarry, BL).
mult([], _, Carry, [C, Cend]) :- C is Carry mod 10, Cend is Carry // 10.
zero([]).
zero([0|L]) :- zero(L).
odd(1).
odd(3).
odd(5).
odd(7).
odd(9).
even(0).
even(2).
even(4).
even(6).
even(8).
lefteven(2).
lefteven(4).
lefteven(6).
lefteven(8).
