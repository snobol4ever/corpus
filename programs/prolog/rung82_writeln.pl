main :-
    writeln(hello),
    writeln([1,2,3]),
    writeln(f(a,b)),
    writeln('quoted atom'),
    writeln(1+2*3),
    ( writeln(in_disj) ; true ),
    writeln(user_output, via_stream),
    write(tail_no_nl),
    writeln(after_tail),
    writeln(end).
main :- write(main_failed), nl.
