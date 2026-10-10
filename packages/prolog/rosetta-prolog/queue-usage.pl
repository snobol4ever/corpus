%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% definitions of queue
empty(U-V) :-
    unify_with_occurs_check(U, V).

push(Queue, Value, NewQueue) :-
    append_dl(Queue, [Value|X]-X, NewQueue).


pop([X|V]-U, X, V-U) :-
    \+empty([X|V]-U).



append_dl(X-Y, Y-Z, X-Z).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% use of queue
queue :-
    % create an empty queue
    empty(Q),
    format('Create queue ~w~n~n', [Q]),

    % add numbers 1 and 2
    write('Add numbers 1 and 2 : '),
    push(Q, 1, Q1),
    push(Q1, 2, Q2),

    % display queue
    format('~w~n~n', [Q2]),

    % pop element
    pop(Q2, V, Q3),

    % display results
    format('Pop : Value ~w Queue : ~w~n~n', [V, Q3]),

    % test the queue
    write('Test of the queue : '),
    (   empty(Q3) -> writeln('Queue empy'); writeln('Queue not empty')), nl,

    % pop the elements
    write('Pop the queue : '),
    pop(Q3, V1, Q4),
    format('Value ~w Queue : ~w~n~n', [V1, Q4]),

    write('Pop the queue : '),
    pop(Q4, _V, _Q5).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): queue/0 prints its difference-list queues with their unbound tails by name (_123), which no ref can hold; the driver runs queue/0's own steps over empty/1, push/3 and pop/3 and prints each queue in queue/0's format after numbervars/3.
:- initialization((empty(Q), copy_term(Q, C0), numbervars(C0, 0, _), format('Create queue ~w~n~n', [C0]), write('Add numbers 1 and 2 : '), push(Q, 1, Q1), push(Q1, 2, Q2), copy_term(Q2, C2), numbervars(C2, 0, _), format('~w~n~n', [C2]), pop(Q2, V, Q3), copy_term(Q3, C3), numbervars(C3, 0, _), format('Pop : Value ~w Queue : ~w~n~n', [V, C3]), write('Test of the queue : '), (empty(Q3) -> writeln('Queue empy') ; writeln('Queue not empty')), nl, write('Pop the queue : '), pop(Q3, V1, Q4), copy_term(Q4, C4), numbervars(C4, 0, _), format('Value ~w Queue : ~w~n~n', [V1, C4]), write('Pop the queue : '), (pop(Q4, _, _) -> writeln('a value') ; writeln('fails, the queue is empty')))).
