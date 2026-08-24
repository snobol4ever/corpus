main :- read(X), ( X == end_of_file -> write(eof) ; write(X) ), nl.
