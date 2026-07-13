main :- read(X), read(Y), ( ( X == end_of_file, Y == end_of_file ) -> write(both_eof) ; write(no) ), nl.
