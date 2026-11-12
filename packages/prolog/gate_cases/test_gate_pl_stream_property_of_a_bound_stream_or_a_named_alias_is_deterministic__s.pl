:- use_module(library(lists)).
:- initialization(main).
d(P, G) :- copy_term(G, G1), call_cleanup(G1, D = det), ( var(D) -> R = nondet ; R = D ), !, \+ \+ ( numbervars(P, 0, _), writeq(P-R) ), nl.
d(P, _) :- \+ \+ ( numbervars(P, 0, _), writeq(P-fail) ), nl.
main :- open('sp.txt', write, S), set_stream(S, alias(aa)),
  forall(member(P, [position(_), alias(_), file_name(_), mode(_), output, eof_action(_), reposition(_), type(_), encoding(_), buffer(_), input, mode(read)]), d(P, stream_property(S, P))),
  d(user_output, stream_property(user_output, alias(_))), d(any, stream_property(S, _)), d(unbound_stream, stream_property(_, alias(aa))), close(S).
