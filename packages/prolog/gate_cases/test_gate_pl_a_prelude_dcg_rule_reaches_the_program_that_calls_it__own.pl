:- initialization(main).
utf8_codes([own|T]) --> [_], !, utf8_codes(T).
utf8_codes([]) --> [].
main :- phrase(utf8_codes(L), [1,2]), writeq(L), nl, halt.
