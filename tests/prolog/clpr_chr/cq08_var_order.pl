:- use_module(library(clpq)).
:- initialization(main).
g(_).
main :- T = (Y = 3*X + 2), compare(O1, X, Y), writeln(o1(O1)), g(T), U = f(A, g(B, C)), msort([C, B, A], S), ( S == [A, B, C] -> writeln(abc) ; writeln(other) ), g(U), {P = 2*Q + 1}, dump([P, Q], [p, q], D), writeln(D), halt.
