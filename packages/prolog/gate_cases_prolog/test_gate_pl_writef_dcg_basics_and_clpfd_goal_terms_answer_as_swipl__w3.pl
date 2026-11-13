:- use_module(library(dcg/basics), [string//1]).
:- initialization(main).
seq(E, [X|Xs]) --> call(E, X), ( ",", !, seq(E, Xs) ; { Xs = [] } ).
main :- ( phrase(seq(string, L), `ab,cd`) -> findall(A, (member(C, L), atom_codes(A, C)), As), writeq(As) ; writeq(failed) ), nl, halt.
