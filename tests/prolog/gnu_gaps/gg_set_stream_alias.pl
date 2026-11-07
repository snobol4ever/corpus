:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; R = caught(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :-
    set_stream_alias(user_output, myout), write(myout, hello), nl(myout),
    set_stream_alias(myout, other), write(myout, x), write(other, viaother), nl(other),
    ( stream_property(S1, alias(other)), stream_property(S1, alias(user_output)) -> write(same_stream) ; write(different_streams) ), nl,
    open('gg_alias_tmp.txt', write, F), set_stream_alias(F, other), write(other, 'intofile.'), nl(other),
    ( stream_property(S2, alias(other)), S2 == F -> write(other_moved_to_file) ; write(other_still_elsewhere) ), nl,
    close(F),
    ( stream_property(_, alias(other)) -> write(other_alias_still_bound) ; write(other_alias_gone) ), nl,
    open('gg_alias_tmp.txt', read, R), read(R, T), close(R), writeq(T), nl,
    write(myout, still_myout), nl(myout),
    t(set_stream_alias(_, zz)), t(set_stream_alias(user_output, _)), t(set_stream_alias(user_output, 3)), t(set_stream_alias(nostream, zz)),
    t(set_stream_alias(3, zz)), t(set_stream_alias(user_output, foo)), t(set_stream_alias(user_output, foo)), t(set_stream_alias(foo, bar)),
    halt.
