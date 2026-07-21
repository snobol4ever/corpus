:- initialization(main).
main :-
    open('/tmp/rung66_a.txt', write, S),
    ( current_stream(S) -> write(found_bound) ; write(not_found_bound) ), nl,
    findall(X, current_stream(X), L), ( member(S, L) -> write(in_enum) ; write(not_in_enum) ), nl,
    length(L, N), ( N >= 4 -> write(has_std_plus_open) ; write(too_few) ), nl,
    close(S),
    ( current_stream(S) -> write(still_there) ; write(gone_after_close) ), nl,
    write(done), nl.
