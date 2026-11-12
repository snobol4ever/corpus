:- initialization(main).
o(G) :- write('<'), catch(( G -> R = true ; R = fail ), E, ( E = error(F, _) -> R = error(F) ; R = ball(E) )), write('> '), writeq(R), nl.
portray(secret(_)) :- get_print_stream(S), write(S, '**hidden**').
portray(where) :- get_print_stream(S), ( stream_property(S, alias(user_output)) -> write(S, user_output) ; write(S, other) ).
main :- o(print([secret(1), open, secret(2)])), o(print(g(secret(x), where))), o(print(where)), o(print(user_output, secret(1))),
  o(print(user_output, f('$VAR'(25), where))),
  o((get_print_stream(S), stream_property(S, alias(user_output)))),
  o(get_print_stream(foo)), o(get_print_stream(3)), o((get_print_stream(S2), get_print_stream(S2))).
