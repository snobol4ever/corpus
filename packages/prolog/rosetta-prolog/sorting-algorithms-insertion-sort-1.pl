insert_sort(L1,L2) :-
  insert_sort_intern(L1,[],L2).

insert_sort_intern([],L,L).
insert_sort_intern([H|T],L1,L) :-
  insert(L1,H,L2),
  insert_sort_intern(T,L2,L).

insert([],X,[X]).
insert([H|T],X,[X,H|T]) :-
  X =< H,
  !.
insert([H|T],X,[H|T2]) :-
  insert(T,X,T2).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines insert_sort/2 and never calls it; the driver sorts a sample list.
:- initialization((insert_sort([4, 65, 2, -31, 0, 99, 2, 83, 782, 1], L), format("~w~n", [L]))).
