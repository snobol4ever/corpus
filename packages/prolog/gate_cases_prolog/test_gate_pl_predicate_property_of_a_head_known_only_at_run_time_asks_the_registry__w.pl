:- initialization(main).
main :- F = 'gen.txt', consult(F), dynamic(e/1), assertz(f(1)),
  ( predicate_property(d(_), dynamic) -> write(d_dynamic) ; write(d_not) ), nl,
  ( predicate_property(e(_), dynamic) -> write(e_dynamic) ; write(e_not) ), nl,
  ( predicate_property(f(_), dynamic) -> write(f_dynamic) ; write(f_not) ), nl,
  ( predicate_property(d(_), defined) -> write(d_defined) ; write(d_undefined) ), nl,
  ( predicate_property(g(_), dynamic) -> write(g_dynamic) ; write(g_not) ), nl.
