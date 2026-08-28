%------------------------------------------------------------- 1 rung63_const_io
:- initialization(main).
main :-
    write_to_atom(A1, foo(x,y)), writeq(A1), nl,
    format_to_atom(A2, "~w-~w", [a,b]), writeq(A2), nl,
    read_from_atom('foo(1,2).', T3), write(T3), nl,
    with_output_to(atom(A4), write(hi(9))), writeq(A4), nl,
    with_output_to(codes(A5), write(ab)), write(A5), nl,
    with_output_to(chars(A6), write(cd)), write(A6), nl,
    with_output_to(atom(A7), (write(a), write(b), write(c))), writeq(A7), nl,
    format(atom(A8), "~w!~w", [x,y]), writeq(A8), nl,
    ( with_output_to(atom(_), fail) -> write(unexpected) ; write(goal_failed) ), nl,
    write(done), nl.
