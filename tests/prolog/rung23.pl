%-------------------------------------------------------------- 1 bitwise_and_or
:- initialization(main).
main :-
    X1 is 12 /\ 10, write(X1), nl,
    X2 is 12 \/ 3,  write(X2), nl,
    X3 is 12 xor 10, write(X3), nl.
%---------------------------------------------------------------------- 2 maxmin
:- initialization(main).
main :-
    X1 is max(3,7),  write(X1), nl,
    X2 is min(3,7),  write(X2), nl,
    X3 is max(-1,0), write(X3), nl.
%----------------------------------------------------------------------- 3 power
:- initialization(main).
main :-
    X1 is 2**10, write(X1), nl,
    X2 is 3**3,  write(X2), nl.
%----------------------------------------------------------------------- 4 shift
:- initialization(main).
main :-
    X1 is 1 << 4,   write(X1), nl,
    X2 is 256 >> 3, write(X2), nl.
%------------------------------------------------------------------------ 5 sign
:- initialization(main).
main :-
    X1 is sign(5),  write(X1), nl,
    X2 is sign(-3), write(X2), nl,
    X3 is sign(0),  write(X3), nl.
