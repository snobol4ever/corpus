student(X,Y) :- taught(Y,X).
taught(socrates,plato).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines student/2 and taught/2 and never calls them; the driver asks the Rosetta page's own queries student(X, socrates) and student(socrates, X) (variables-3).
:- initialization(((student(X, socrates) -> format("student(X, socrates): X = ~w~n", [X]) ; writeln('student(X, socrates): no')), (student(socrates, Y) -> format("student(socrates, X): X = ~w~n", [Y]) ; writeln('student(socrates, X): no')))).
