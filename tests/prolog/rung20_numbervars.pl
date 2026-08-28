%-------------------------------------------- 1 rung20_numbervars_atom_unchanged
:- initialization(main).
main :- numbervars(foo, 0, End), write(foo), nl, write(End), nl.
%----------------------------------------------------- 2 rung20_numbervars_basic
:- initialization(main).
main :- numbervars(f(X,Y,X), 0, End), write(f(X,Y,X)), nl, write(End), nl.
%------------------------------------------------------ 3 rung20_numbervars_list
:- initialization(main).
main :- numbervars([A,B,C], 0, End), write([A,B,C]), nl, write(End), nl.
%-------------------------------------------------- 4 rung20_numbervars_rollover
:- initialization(main).
main :- numbervars(f(A,B), 25, End), write(f(A,B)), nl, write(End), nl.
%---------------------------------------------- 5 rung20_numbervars_start_offset
:- initialization(main).
main :- numbervars(f(X,Y), 3, End), write(f(X,Y)), nl, write(End), nl.
