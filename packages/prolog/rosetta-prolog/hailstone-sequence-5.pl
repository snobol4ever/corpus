:- use_module(library(chr)).
:- chr_option(debug, off).
:- chr_option(optimize, full).

:- chr_constraint collatz/2, hailstone/1, clean/0.

% to remove all constraints hailstone/1 after computation
clean @ clean \ hailstone(_) <=> true.
clean @ clean <=> true.

% compute Collatz number
init @ collatz(1,X) <=>  X = 1 | true.
collatz @ collatz(N, C) <=> (N mod 2 =:= 0 -> C is N / 2; C is 3 * N + 1).

% Hailstone loop
hailstone(1) ==> true.
hailstone(N) ==> N \= 1 | collatz(N, H), hailstone(H).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the CHR constraints hailstone/1, collatz/2 and clean/0 and never posts them; the driver posts hailstone(27) and prints the task's length and first and last four, as hailstone-sequence-6 checks.
:- initialization((hailstone(27), findall(X, find_chr_constraint(hailstone(X)), L), clean, length(L, N), L = [A, B, C, D|_], append(_, [E, F, G, H], L), format("hailstone(27): ~w elements, ~w, ~w, ~w, ~w ... ~w, ~w, ~w, ~w~n", [N, A, B, C, D, E, F, G, H]))).
