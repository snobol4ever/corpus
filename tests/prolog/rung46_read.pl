%------------------------------------------------------------- 1 rung46_read_eof
main :- read(X), ( X == end_of_file -> write(eof) ; write(X) ), nl.
%---------------------------------------------------------- 2 rung46_read_repeat
main :- read(X), read(Y), ( ( X == end_of_file, Y == end_of_file ) -> write(both_eof) ; write(no) ), nl.
%-------------------------------------------------------- 3 rung46_read_term_eof
main :- read_term(X, []), ( X == end_of_file -> write(rt_eof) ; write(X) ), nl.
