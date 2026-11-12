:- module(mci, []).
:- use_module(library(prolog_clause)).
t7 :- a(x), b(y).
a(_). b(_).
main :- clause(t7, _, Ref), ( clause_info(Ref, F, _, _) -> file_base_name(F, B), writeq(B) ; writeq(no_info) ), nl.
:- initialization(main).
