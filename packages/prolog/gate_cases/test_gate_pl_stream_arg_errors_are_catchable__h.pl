:- initialization(main).
main :- open('$D/h.txt', write, S), write(S, hi), nl(S), close(S),
        open('$D/h.txt', read, R), get_char(R, C), close(R), write(handle_ok(C)), nl, halt.
