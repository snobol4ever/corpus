% Fibonacci sequence generator
fib(C, [P,S], C, N)  :- N is P + S.
fib(C, [P,S], Cv, V) :- succ(C, Cn), N is P + S, !, fib(Cn, [S,N], Cv, V).

fib(0, 0).
fib(1, 1).
fib(C, N) :- fib(2, [0,1], C, N). % Generate from 3rd sequence on

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines fib/2 and never calls it; the driver prints fib(0) .. fib(20) (its first answer each: retrying fib(0, V) does not end).
:- initialization((findall(V, (between(0, 20, N), once(fib(N, V))), Vs), writeln(Vs))).
