:- initialization(main).
show(T) :- T =.. L, write(L), nl.
main :- show(#\ foo(1, 2)), show(#\ #=(1, 2)), show(#\ 1 #= 2), show(a #<=> b #==> c), show(a ## b #\/ c), show(a #\/ b #/\ c), show(a #=# b), show(a #\=# b),
    show(1 #=<# 2), show(#\ a #\<=> b), X = (p #\==> q), X = (_ #\==> _), write(ok), nl, halt.
