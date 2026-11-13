:- begin_tests(bigint,
	       [ condition(current_prolog_flag(bounded, false))
	       ]).

:- dynamic
    gmp_clause/2.

fac(1,1) :- !.
fac(X,N) :-
    X > 1,
    X2 is X - 1,
    fac(X2, N0),
    N is N0 * X.

oefac(X, Fac) :-                        % produce large pos and neg ints
    fac(X, F0),
    odd_even_neg(X, F0, Fac).

odd_even_neg(X, V0, V) :-
    (   X mod 2 =:= 0
    ->  V = V0
    ;   V is -V0
    ).

:- if(current_prolog_flag(bounded, false)). % GMP implies rational

ratp(C, X, X ) :-
    C =< 0,
    !.
ratp(Count, In, Out) :-
    succ(Count0, Count),
    T is In + (In rdiv 2),
    ratp(Count0, T, Out).

dec(X, Y) :-
    Y is X - 1.

unbound(_).

:- endif.
test(t1) :- Clause = (gmp_clause(X,Y) :- X is Y + 3), assert(Clause, Ref), clause(H,B,Ref).
test(probe) :- catch(length(_, -1), E, true), E = error(domain_error(not_less_than_zero, -1), _).
:- end_tests(bigint).
