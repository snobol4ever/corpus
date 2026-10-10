%!  last_list_item(+List, -Last) is det.
last_list_item(List, Last) :-
    msort(List, Sorted),
    ignore(( debugging(last_list_item), writeln('List' = Sorted) )),
    last_list_item_(Sorted, Last).

last_list_item_([Last], Last) :- !.
last_list_item_([X, Y | List0], Last) :-
    Z is X + Y,
    msort([Z | List0], List),
    ignore(( debugging(last_list_item), writeln('List' = List) )),
    last_list_item_(List, Last).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines last_list_item/2 and never calls it; the driver turns on its debug topic to show the steps and runs the task's list.
:- initialization((debug(last_list_item), last_list_item([6, 81, 243, 14, 25, 49, 123, 69, 11], Last), format("~w~n", [Last]))).
