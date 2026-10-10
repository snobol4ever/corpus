person_location(person(name(N), age(A)), point(X, Y)).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the nested compound person_location(person(name(N), age(A)), point(X, Y)) and never queries it; the driver prints it with its variables numbered.
:- initialization((person_location(P, L), numbervars(P-L, 0, _), print(person_location(P, L)), nl)).
