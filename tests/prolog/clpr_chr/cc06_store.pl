:- use_module(library(chr)).
:- chr_constraint c/1, d/2.
:- initialization(main).
main :- c(1), d(a, x), c(2), d(b, y), findall(G, find_chr_constraint(G), L), writeln(L), findall(G, current_chr_constraint(G), L2), writeln(L2), ( find_chr_constraint(d(b, W)) -> writeln(W) ; writeln(none) ), chr_show_store(user), writeln(done), halt.
