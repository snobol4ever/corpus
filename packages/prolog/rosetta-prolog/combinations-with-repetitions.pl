combinations_of_length(_,[]).
combinations_of_length([X|T],[X|Combinations]):-
    combinations_of_length([X|T],Combinations).
combinations_of_length([_|T],[X|Combinations]):-
    combinations_of_length(T,[X|Combinations]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines combinations_of_length/2 and never calls it; the driver prints the task's two donuts from iced, jam, plain and counts three from ten types.
:- initialization((length(C, 2), forall(combinations_of_length([iced, jam, plain], C), format("~w~n", [C])), length(T, 3), numlist(1, 10, Ten), aggregate_all(count, combinations_of_length(Ten, T), N), format("~w~n", [N]))).
