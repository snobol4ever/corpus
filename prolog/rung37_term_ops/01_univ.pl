% =.. (univ): decompose and construct terms
main :-
    foo(a,b,c) =.. L, write(L), nl,
    T =.. [bar, 1, 2], write(T), nl,
    hello =.. L2, write(L2), nl,
    42 =.. L3, write(L3), nl.
