t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true),
        (   var(E) -> R = L ;   E = error(F, _) -> R = error(F) ;   R = ball(E) ),
        \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
:- initialization(main).
main :- t(read_term_from_atom('a.', _, [nope])),
  t(read_term_from_atom('f(X, Y, X).', _, [variable_names(_)])),
  t(read_term_from_chars([h,'(','.'], _, [syntax_error(fail)])),
  t(read_term_from_chars([h,'(','.'], _, [syntax_error(bad)])),
  t(read_term_from_codes("k(a).", _, foo)),
  t(read_term_from_codes("k(a).", _, [])).
