:- set_prolog_flag(double_quotes, chars).

println([]) :- write('\n').
println([Char | Chars]) :- write(Char), println(Chars).

my_compare(A, B) :-
    (   A < B
    ->  println("A is less than B")
    ;   A > B
    ->  println("A is greater than B")
    ;   % double equals is necessary if we want the predicate to fail if A or B is unbound
        A == B
    ->  println("A is equal to B")
    ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines my_compare/2 and never calls it; the driver compares three fixed pairs, one for each outcome.
:- initialization(forall(member(A-B, [1-2, 2-1, 2-2]), (format("~w ~w: ", [A, B]), my_compare(A, B)))).
