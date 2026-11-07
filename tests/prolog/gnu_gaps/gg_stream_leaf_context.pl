:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; R = caught(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :-
    t(character_count(_, _)), t(line_count(_, _)), t(line_position(_, _)), t(stream_line_column(_, _, _)), t(set_stream_position(_, _)),
    t(character_count(foo, _)), t(line_count(foo, _)), t(line_position(foo, _)), t(stream_line_column(foo, _, _)), t(set_stream_position(foo, _)),
    t(character_count(3, _)), t(line_count(3, _)), t(line_position(3, _)), t(stream_line_column(3, _, _)), t(set_stream_position(3, _)),
    halt.
