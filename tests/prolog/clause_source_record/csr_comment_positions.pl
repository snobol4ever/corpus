:- use_module(library(lists)).
:- initialization(main).

main :-
    open('csr_comment_data.pl', read, S),
    read_all(S),
    close(S).

read_all(S) :-
    read_term(S, T, [subterm_positions(P)]),
    (   T == end_of_file
    ->  true
    ;   functor(T, N, A),
        write(N/A), write(' '), write(P), nl,
        read_all(S)
    ).
