:- initialization(main).
main :-
    forall(member(A, [user_input, user_output, user_error]),
           ( stream_property(S, alias(A)), stream_property(S, mode(M)), write(A-M), nl )),
    current_output(C), stream_property(C, mode(CM)), write(current_output-CM), nl,
    open('$d/appended.txt', append, F), stream_property(F, mode(FM)), write(file-FM), nl, close(F),
    halt.
