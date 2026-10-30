:- initialization(main, main).
pos(Text) :-
    open_string(Text, S), read_term(S, T, [subterm_positions(P)]), close(S),
    term_variables(T, Vs), maplist(=(anon), Vs), writeq(T), nl, writeq(P), nl.
main :-
    pos("_{}. "),
    pos("_{a:[1],b:{}}. "),
    pos("tag{bb:1,aa:2}. "),
    pos("a(). "),
    pos("f(x{k:v}, [_{}]). ").
