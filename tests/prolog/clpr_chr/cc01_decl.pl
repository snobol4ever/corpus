:- use_module(library(chr)).
:- chr_option(debug, off).
:- chr_option(optimize, full).
:- chr_constraint c/1, d/2, e/0.
:- initialization(main).
main :- c(1), d(a, b), e, c(2), findall(G, find_chr_constraint(G), L), writeln(L), chr_show_store(user), writeln(done), halt.
