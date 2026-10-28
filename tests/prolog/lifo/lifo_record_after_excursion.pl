f(N) :- between(1, 2, I), ( I > 1 -> N = I ; fail ).
main :- f(N), write(N), nl, ( between(1, 3, J), ( J =:= 2 -> write(two) ; write(J) ), nl, fail ; true ), write(done), nl.
:- initialization(main).
