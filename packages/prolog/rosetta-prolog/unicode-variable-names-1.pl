% Unicode in predicate names:
是.            % be: means, approximately, "True".
不是 :- \+ 是.  % not be: means, approximately, "False".  Defined as not 是.

% Unicode in variable names:
test(Garçon, Δ) :-
  Garçon = boy,
  Δ = delta.

% Call test2(1, Result) to have 2 assigned to Result.
test2(Δ, R) :- R is Δ + 1.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines 是/0, 不是/0, test/2 and test2/2 and never calls them; the driver runs the Rosetta page's own four queries (unicode-variable-names-2).
:- initialization(((是 -> writeln(true) ; writeln(false)), (不是 -> writeln(true) ; writeln(false)), test(X, Y), format("X = ~w, Y = ~w~n", [X, Y]), test2(1, R), format("Result = ~w~n", [R]))).
