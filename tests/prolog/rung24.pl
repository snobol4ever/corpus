%--------------------------------------------------------------------- 1 ts_atom
:- initialization(main).
main :- term_string(hello, S), write(S), nl.
%----------------------------------------------------------------- 2 ts_compound
:- initialization(main).
main :- term_string(f(1,2), S), write(S), nl.
%---------------------------------------------------------------------- 3 ts_int
:- initialization(main).
main :- term_string(42, S), write(S), nl.
%------------------------------------------------------------- 4 ts_reverse_atom
:- initialization(main).
main :- term_string(T, hello), write(T), nl.
%-------------------------------------------------------------- 5 ts_reverse_int
:- initialization(main).
main :- term_string(T, '42'), write(T), nl.
