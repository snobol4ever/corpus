:- use_module(library(lists)).
:- initialization(main).
:- dynamic(pd/1).
pd(1).
ps(X, Y) :- Y is X + 1.
t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(G-R, 0, _), writeq(G), write(' => '), writeq(R), nl ).
main :- t(current_predicate(ps/2)), t(current_predicate(foo/bar)), t(current_predicate(foo/(-1))), t(current_predicate(3/1)), t(current_predicate(4)),
  t(predicate_property(ps(_,_), static)), t(predicate_property(pd(_), dynamic)), t(predicate_property(ps(_,_), dynamic)), t(predicate_property(atom_length(_,_), built_in)),
  t(predicate_property(nosuch(_), dynamic)), t(predicate_property(4, dynamic)).
