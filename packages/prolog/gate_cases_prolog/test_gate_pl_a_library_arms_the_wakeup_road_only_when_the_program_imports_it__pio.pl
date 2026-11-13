:- use_module(library(pio)).
:- initialization(main).
main :- F = 'pio_null.txt', open(F, write, S), close(S),
    ( phrase_from_file("a", F) -> writeq(a-yes) ; writeq(a-no) ), nl,
    ( phrase_from_file([], F) -> writeq(empty-yes) ; writeq(empty-no) ), nl,
    delete_file(F).
