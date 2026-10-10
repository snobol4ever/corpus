ascii :-
    forall(between(32, 47, N), row(N)).

row(N) :- N > 127, nl, !.
row(N) :-
    code(N),
    ascii(N),
    Nn is N + 16,
    row(Nn).

code(N) :- N < 100, format('  ~d : ', N).
code(N) :- N >= 100, format(' ~d : ', N).

ascii(32) :- write(' Spc    '), !.
ascii(127) :- write(' Del   '), !.
ascii(A) :- char_code(D,A), format(' ~w      ', D).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines ascii/0 and never calls it; the driver calls it once at load.
:- initialization(ascii).
