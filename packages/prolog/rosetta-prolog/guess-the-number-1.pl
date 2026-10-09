main :-
    random_between(1, 10, N),
    repeat,
    prompt1('Guess the number: '),
    read(N),
    writeln('Well guessed!'),
    !.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
