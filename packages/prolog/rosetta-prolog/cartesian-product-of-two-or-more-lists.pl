product([A|_], Bs, [A, B]) :- member(B, Bs).
product([_|As], Bs, X) :- product(As, Bs, X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines product/3 and never calls it; the driver prints the task's four products {1,2}x{3,4}, {3,4}x{1,2}, {1,2}x{} and {}x{1,2}.
:- initialization(forall(member(A-B, [[1, 2]-[3, 4], [3, 4]-[1, 2], [1, 2]-[], []-[1, 2]]), (findall(X, product(A, B, X), Ps), format("~w x ~w = ~w~n", [A, B, Ps])))).
