:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
k(qzvfour).
main :- t(get_linedit_prompt(_)), t(set_linedit_prompt('qzv> ')), t(get_linedit_prompt(_)), t(get_linedit_prompt(x)), t(set_linedit_prompt(_)), t(set_linedit_prompt(1)), t(get_linedit_prompt(1)),
  t(set_linedit_prompt('')), t(get_linedit_prompt(_)),
  t(add_linedit_completion(qzvone)), t(add_linedit_completion('QzvTwo')), t(add_linedit_completion('qzv3')), t(add_linedit_completion('qzv x')), t(add_linedit_completion('qzv-y')),
  t(add_linedit_completion('')), t(add_linedit_completion(_)), t(add_linedit_completion(f(x))), t(add_linedit_completion(qzvone)),
  t(find_linedit_completion(qzv, _)), t(find_linedit_completion('Qzv', _)), t(find_linedit_completion(qzvo, _)), t(find_linedit_completion(qzvone, qzvone)), t(find_linedit_completion(qzvf, _)),
  t(find_linedit_completion(qzvnone, _)), t(find_linedit_completion(_, _)), t(find_linedit_completion(1, _)), t(find_linedit_completion(qzv, 1)).
