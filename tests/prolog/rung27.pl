%------------------------------------------------------------- 1 aggregate_count
:- initialization(main).
fruit(apple). fruit(banana). fruit(cherry).
main :-
    aggregate_all(count, fruit(_), N),
    write(N), nl.
%----------------------------------------------------------- 2 aggregate_max_min
:- initialization(main).
val(5). val(3). val(8). val(1).
main :-
    aggregate_all(max(V), val(V), Max), write(Max), nl,
    aggregate_all(min(W), val(W), Min), write(Min), nl.
%--------------------------------------------------------------- 3 aggregate_sum
:- initialization(main).
score(10). score(20). score(30).
main :-
    aggregate_all(sum(S), score(S), Total),
    write(Total), nl.
%------------------------------------------------------------ 4 nb_setval_getval
:- initialization(main).
main :-
    nb_setval(counter, 0),
    nb_setval(counter, 42),
    nb_getval(counter, V),
    write(V), nl.
%------------------------------------------------------------ 5 nb_setval_string
:- initialization(main).
main :-
    nb_setval(msg, hello),
    nb_getval(msg, X),
    write(X), nl.
