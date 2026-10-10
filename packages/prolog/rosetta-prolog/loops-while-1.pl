while(0) :- !.
while(X) :-
    writeln(X),
    X1 is X // 2,
    while(X1).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines while/1 and never calls it; the driver starts it at the task's 1024 (halving to 1).
:- initialization(while(1024)).
