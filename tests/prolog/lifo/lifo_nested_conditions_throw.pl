w(A) :- ( ( A = 1 ; A = 2 ) -> write(small(A)) ; A = 3 -> write(three) ; write(other) ), nl.
main :- w(1), w(3), w(7), catch(( true -> throw(e2) ; true ), E, (write(c(E)), nl)), write(done), nl.
:- initialization(main).
