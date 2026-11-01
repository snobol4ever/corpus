:- use_module(library(lists)).
:- initialization(main).

main :-
    consult('csr_consulted_plain.pl'),
    (   predicate_property(plain_pair(_, _), dynamic)
    ->  write(dynamic), nl
    ;   write(static), nl
    ),
    listing(plain_pair/2).
