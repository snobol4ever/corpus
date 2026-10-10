:- use_module(library(clpfd)).

% main predicate
my_sum(Min, Max, Top, LL):-
    L = [A,B,C,D,E,F,G],
    L ins Min..Max,
    (   Top == 0
    ->  all_distinct(L)
    ;    true),
    R #= A+B,
    R #= B+C+D,
    R #= D+E+F,
    R #= F+G,
    setof(L, labeling([ff], L), LL).


my_sum_1(Min, Max) :-
    my_sum(Min, Max, 0, LL),
    maplist(writeln, LL).

my_sum_2(Min, Max, Len) :-
    my_sum(Min, Max, 1, LL),
    length(LL, Len).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines my_sum_1/2 and my_sum_2/3 and never calls them; the driver asks the task's three questions (1..7 unique, 3..9 unique, the count over 0..9 non-unique).
:- initialization((my_sum_1(1, 7), nl, my_sum_1(3, 9), nl, my_sum_2(0, 9, N), format("~w~n", [N]))).
