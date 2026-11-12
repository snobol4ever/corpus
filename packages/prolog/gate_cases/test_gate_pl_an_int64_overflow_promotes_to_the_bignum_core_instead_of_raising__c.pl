:- initialization(main).
main :-
    succ(9223372036854775807, A), write(a(A)), nl,
    plus(9223372036854775807, 1, B), write(b(B)), nl,
    halt.
