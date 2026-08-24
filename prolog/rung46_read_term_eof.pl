main :- read_term(X, []), ( X == end_of_file -> write(rt_eof) ; write(X) ), nl.
