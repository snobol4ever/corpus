:- use_module(library(lists)).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
main :- current_prolog_flag(debug, D0), writeq(default(D0)), nl, t(debug0, debug), current_prolog_flag(debug, D1), writeq(after_debug(D1)), nl,
  t(nodebug0, nodebug), current_prolog_flag(debug, D2), writeq(after_nodebug(D2)), nl, t(set_true, set_prolog_flag(debug, true)), t(set_on, set_prolog_flag(debug, on)), t(set_false, set_prolog_flag(debug, false)).
