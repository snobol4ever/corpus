:- initialization(main).
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :- t(syntax_error_info(_, _, _, _)),
  t((set_bip_name(foo, 2), current_bip_name(_, _))), t((set_bip_name(bar, 0), current_bip_name(bar, _))), t((set_bip_name(foo, 2), current_bip_name(foo, 3))),
  t((set_bip_name(wide, 300), current_bip_name(_, _))), t(((set_bip_name(kept, 1), fail ; true), current_bip_name(_, _))),
  t(set_bip_name(_, 1)), t(set_bip_name(foo, _)), t(set_bip_name(1, _)), t(set_bip_name(foo, a)), t(set_bip_name(foo, 2.0)),
  t((set_bip_name(foo, 2), current_bip_name(1, _))), t((set_bip_name(foo, 2), current_bip_name(_, a))),
  t(syntax_error_info(3, _, _, _)), t(syntax_error_info(_, a, _, _)), t(syntax_error_info(_, _, b, _)), t(syntax_error_info(_, _, _, 4)).
