empty(U-V) :-
    unify_with_occurs_check(U, V).

push(Queue, Value, NewQueue) :-
    append_dl(Queue, [Value|X]-X, NewQueue).

% when queue is empty pop fails.
pop([X|V]-U, X, V-U) :-
    \+empty([X|V]-U).

append_dl(X-Y, Y-Z, X-Z).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines empty/1, push/3 and pop/3 and never calls them; the driver pushes 1, 2, 3, pops them in FIFO order and tests empty/1 and pop/3 on the empty queue.
:- initialization((empty(Q0), push(Q0, 1, Q1), push(Q1, 2, Q2), push(Q2, 3, Q3), pop(Q3, A, Q4), format('pop: ~w~n', [A]), pop(Q4, B, Q5), format('pop: ~w~n', [B]), (empty(Q5) -> writeln('empty: yes') ; writeln('empty: no')), pop(Q5, C, Q6), format('pop: ~w~n', [C]), (empty(Q6) -> writeln('empty: yes') ; writeln('empty: no')), (pop(Q6, _, _) -> writeln('pop: a value') ; writeln('pop on the empty queue fails')))).
