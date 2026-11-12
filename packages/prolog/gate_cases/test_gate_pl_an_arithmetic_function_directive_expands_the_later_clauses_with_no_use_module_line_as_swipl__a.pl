:- use_module(library(lists)).
:- arithmetic_function(binomial/2).
binomial(N, K, R) :- R is N * K.
t(R) :- R is binomial(3, 4) + 1.
:- initialization((t(R), writeln(R))).
