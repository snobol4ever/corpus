take( 0, Next, Z-Z, Next).
take( N, Next, [A|B]-Z, NZ):- N>0, !, next( Next, A, Next1),
  N1 is N-1,
  take( N1, Next1, B-Z, NZ).

next( fib(A,B), A, fib(B,C)):- C is A+B.

%% usage: ?- take(15, fib(0,1), _X-[], G), writeln(_X).
%% [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377]
%% G = fib(610, 987)

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines take/4 and never calls it; the driver runs its own usage comment, take(15, fib(0,1), X-[], G).
:- initialization((take(15, fib(0, 1), X-[], G), writeln(X), writeln(G))).
