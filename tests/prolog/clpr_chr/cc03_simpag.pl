:- use_module(library(chr)).
:- chr_constraint gcd/1, item/1, p/1, q/1, pair/2.
gcd(0) <=> true.
gcd(N) \ gcd(M) <=> N =< M | L is M mod N, gcd(L).
only_one @ item(A) \ item(A) <=> true.
p(X), q(X) <=> pair(X, shared).
:- initialization(main).
main :- gcd(9), gcd(6), findall(G, find_chr_constraint(G), L1), writeln(L1), item(a), item(b), item(a), findall(G, find_chr_constraint(G), L2), writeln(L2), p(V), q(V), V = 7, findall(G, find_chr_constraint(G), L3), writeln(L3), halt.
