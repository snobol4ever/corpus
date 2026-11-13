:- initialization(main).
main :- open('$w.bin', write, S, [encoding('$enc'), bom(true)]), writeq(S, f('Γειά', '🀙x')), write(S, '.'), nl(S), close(S),
    open('$w.bin', read, R, []), stream_property(R, encoding(E2)), read_term(R, T, []), close(R), writeq(E2-T), nl.
