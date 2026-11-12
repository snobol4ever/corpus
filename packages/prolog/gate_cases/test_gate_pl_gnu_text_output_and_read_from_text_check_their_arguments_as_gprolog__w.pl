t(G) :- catch((G -> R = G ; R = no), error(E, _), R = err(E)), writeq(R), nl.
:- initialization(main).
main :- t(write_to_atom(f(x), a)), t(write_to_atom(abc, a)), t(writeq_to_atom(1, a)), t(write_to_codes(foo, a)),
  t(write_to_codes([0'a|x], a)), t(write_to_chars(f(y), a)), t(format_to_atom(1, '~w', [x])), t(write_term_to_atom(g(1), a, [])),
  t(write_to_codes(_, f(a))), t(write_term_to_codes(x, a, [])), t(print_to_chars([a|_], b)), t(read_from_atom(_, _)),
  t(read_from_atom('', _)), t(read_from_atom('   ', _)), t(read_from_codes([], _)), t(read_from_chars([], _)),
  t(read_from_codes(_, _)), t(read_from_chars('', _)).
