a :- write(a).
b :- write(b).
c :- write(c).
d :- write(d), nl.
p(X) :- ( X > 1 -> a ; b ), c, d.
q(_) :- a, ( b, c ), d.
r(X) :- a, \+ X = 3, ( X = 1 *-> d ; write(g), nl ).
main :- p(2), p(0), q(0), r(1), r(2), ( r(3) -> true ; write(no), nl ).
:- initialization(main).
