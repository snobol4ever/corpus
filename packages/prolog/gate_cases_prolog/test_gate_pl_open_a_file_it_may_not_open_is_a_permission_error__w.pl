t(N, F, M) :- catch((open(F, M, S), close(S), R = ok), error(E, _), R = E), write('@ '), write(N), write(' '), writeq(R), nl.
:- initialization(main).
main :- t(noread, nr, read), t(nowrite, nw, write), t(noappend, nw, append), t(rootwrite, '/no_write_permission', write),
    t(missing_dir, 'no/such/dir/x', write), t(missing_file, nosuchfile, read).
