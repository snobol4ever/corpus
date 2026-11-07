:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; R = caught(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :-
    t(get_key(_, _)), t(get_key_no_echo(_, _)), t(read_token(_, _)), t(read_atom(_, _)), t(read_integer(_, _)), t(read_number(_, _)),
    t(get_key(foo, _)), t(get_key_no_echo(foo, _)), t(read_token(foo, _)), t(read_atom(foo, _)), t(read_integer(foo, _)), t(read_number(foo, _)),
    t(get_key(3, _)), t(read_token(3, _)), t(read_atom(3, _)), t(get_key(user_output, _)), t(read_token(user_output, _)),
    halt.
