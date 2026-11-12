t(G) :- copy_term(G, C), catch(findall(C, C, L), E, true), ( var(E) -> R = L ; E = error(F, _) -> R = error(F) ; R = ball(E) ), \+ \+ ( numbervars(R, 0, _), writeq(R), nl ).
:- dynamic(h/1).
h0 :- assertz((h(Y) :- Y)), assertz((h(Z) :- (Z *-> true ; Z))), assertz((h(W) :- findall(x, W, _), call(W), \+ (W, true))), assertz((h(V) :- (V -> V ; true), V)).
