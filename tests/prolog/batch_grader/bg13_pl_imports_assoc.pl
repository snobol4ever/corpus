:- initialization(main).
:- use_module(library(assoc)).
main :- list_to_assoc([a-1, b-2], A), put_assoc(c, A, 3, B), get_assoc(c, B, V), assoc_to_keys(B, K), write(V-K), nl.
