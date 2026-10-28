v(A) :- ( A == zz -> throw(e1) ; false ).
v(A) :- ( A = q(C) ; A = h(C) ), !, write(C), nl.
v(_) :- write(third), nl.
main :- v(q(1)), v(h(2)), v(other), catch(v(zz), E, (write(caught(E)), nl)).
:- initialization(main).
