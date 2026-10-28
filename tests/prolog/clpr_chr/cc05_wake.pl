:- use_module(library(chr)).
:- chr_constraint c/1, d/1, seen/1.
c(X) <=> number(X) | seen(X).
d(X) \ d(X) <=> true.
:- initialization(main).
main :- c(X), findall(G, find_chr_constraint(G), L0), length(L0, N0), writeln(pending(N0)), X = 3, findall(G, find_chr_constraint(G), L1), writeln(L1), d(A), d(B), findall(G, find_chr_constraint(d(_)), L2), length(L2, N2), writeln(ds(N2)), A = B, findall(G, find_chr_constraint(d(_)), L3), length(L3, N3), writeln(ds(N3)), A = z, findall(G, find_chr_constraint(G), L4), writeln(L4), halt.
