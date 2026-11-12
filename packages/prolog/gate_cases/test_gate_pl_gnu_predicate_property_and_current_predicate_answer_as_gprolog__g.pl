:- initialization((main, g)).
:- dynamic(pd/1).
:- multifile(pm/1).
pd(1).
pm(a).
ps(X, Y) :- Y is X + 1.
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :- t(current_predicate(ps/2)), t(current_predicate(4)),
  t(predicate_property(ps(_,_), static)), t(predicate_property(pd(_), dynamic)), t(predicate_property(ps(_,_), dynamic)), t(predicate_property(atom_length(_,_), built_in)),
  t(predicate_property(nosuch(_), dynamic)), t(predicate_property(4, dynamic)).
g :- t(predicate_property(ps(_,_), user)), t(predicate_property(ps(_,_), private)), t(predicate_property(pd(_), public)), t(predicate_property(pm(_), multifile)),
  t(predicate_property(ps(_,_), monofile)), t(predicate_property(ps(_,_), prolog_line(_))), t(predicate_property(pd(_), prolog_line(_))), t(predicate_property(atom_length(_,_), native_code)),
  t(predicate_property(atom_length(_,_), static)), t(predicate_property(append(_,_,_), built_in)), t(predicate_property(call(_), control_construct)), t(predicate_property((_,_), control_construct)),
  t(predicate_property(ps(_,_), bogus)), t(predicate_property(ps(_,_), 3)).
