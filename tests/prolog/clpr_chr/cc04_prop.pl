:- use_module(library(chr)).
:- chr_constraint a/1, b/1, c/2, collatz/2, hailstone/1, clean/0.
a(X) ==> b(X).
b(X), b(Y) ==> X < Y | c(X, Y).
clean \ hailstone(_) <=> true.
clean <=> true.
init @ collatz(1, X) <=> X = 1 | true.
collatz @ collatz(N, C) <=> (N mod 2 =:= 0 -> C is N // 2 ; C is 3 * N + 1).
hailstone(1) ==> true.
hailstone(N) ==> N \= 1 | collatz(N, H), hailstone(H).
:- initialization(main).
main :- a(1), a(2), a(3), findall(G, find_chr_constraint(G), L), writeln(L), hailstone(27), findall(H, find_chr_constraint(hailstone(H)), Hs), length(Hs, Len), last(Hs, Last), Hs = [First|_], writeln(Len-First-Last), clean, findall(G, find_chr_constraint(G), L2), writeln(L2), halt.
