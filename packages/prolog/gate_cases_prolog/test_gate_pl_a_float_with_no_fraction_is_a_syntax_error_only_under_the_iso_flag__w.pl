r(S) :- catch((read(S, X), (X == end_of_file -> true ; writeq(got(X)), nl, r(S))), error(syntax_error(_), _), (write(syntax_error), nl, r(S))).
t(G) :- catch((G -> writeq(G) ; write(failed)), error(syntax_error(_), _), write(syntax_error)), nl.
pass :- open('f.in', read, S), r(S), close(S),
        t(number_codes(_, "1e33")), t(number_chars(_, ['1','E','3'])), t(atom_to_term('1e33', _, _)), t(number_codes(_, "1.5e3")).
main :- write(default), nl, pass, set_prolog_flag(iso, true), write(iso), nl, pass.
:- initialization(main).
