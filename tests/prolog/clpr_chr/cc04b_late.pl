:- use_module(library(chr)).
:- chr_option(debug, off).
:- chr_option(optimize, full).
:- chr_constraint a/1, b/1, out/2, collatz/2, hailstone/1, cl/0.
a(X) ==> b(X).
a(X), b(Y) ==> X < Y | out(X, Y).
cl \ hailstone(_) <=> true.
cl <=> true.
init @ collatz(1, X) <=> X = 1 | true.
collatz @ collatz(N, C) <=> (N mod 2 =:= 0 -> C is N // 2 ; C is 3 * N + 1).
hailstone(1) ==> true.
hailstone(N) ==> N \= 1 | collatz(N, H), hailstone(H).
:- initialization(main).
main :- a(3), a(1), a(2), findall(G, find_chr_constraint(G), L0), length(L0, N0), writeln(N0), forall(member(E, L0), writeln(E)), hailstone(27), findall(X, find_chr_constraint(hailstone(X)), L), length(L, N), L = [F1, F2, F3|_], last(L, La), writeln(N-F1-F2-F3-La), cl, findall(G, find_chr_constraint(hailstone(G)), L2), writeln(L2), halt.
