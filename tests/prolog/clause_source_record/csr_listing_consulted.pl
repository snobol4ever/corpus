:- use_module(library(lists)).
:- initialization(main).

main :-
    consult('csr_consulted_lib.pl'),
    listing(lib_rule/2).
