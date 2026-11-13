:- initialization(main).
:- table path/2.
edge(a, b). edge(b, c). edge(c, a). edge(c, d).
path(X, Y) :- path(X, Z), edge(Z, Y).
path(X, Y) :- edge(X, Y).
:- table fib/2.
fib(0, 0). fib(1, 1).
fib(N, F) :- N > 1, A is N-1, B is N-2, fib(A, FA), fib(B, FB), F is FA+FB.
:- table even/1, odd/1.
even(0).
even(N) :- odd(M), M < 10, N is M+1.
odd(N) :- even(M), M < 10, N is M+1.
:- table conn/2.
conn(X, Y) :- conn(Y, X).
conn(X, Y) :- link(X, Y).
conn(X, Z) :- conn(X, Y), conn(Y, Z).
link(1, 2). link(2, 3). link(4, 4).
:- table b/2.
b(X, Y) :- b(X, Z), b(Z, Y).
b(X, Y) :- e(X, Y).
e(1, 2). e(2, 3).
:- table nv/1.
nv(f(_)).
nv(f(a)).
nv(g(X, X)).
:- table z/0.
z :- z.
z.
:- table boom/1.
boom(X) :- X = 1 ; throw(oops).
:- dynamic(cnt/1).
cnt(0).
:- table counted/1.
counted(X) :- retract(cnt(N)), N1 is N+1, assertz(cnt(N1)), member(X, [p, q]).
s(T, G) :- findall(T, G, L), msort(L, S), writeq(S), nl.
main :-
  s(X-Y, path(X, Y)), ( path(d, _) -> writeq(yes) ; writeq(no) ), nl,
  fib(200, F), writeq(F), nl, fib(30, F30), writeq(F30), nl,
  s(E, even(E)), s(O, odd(O)),
  s(P-Q, conn(P, Q)), s(P2, conn(4, P2)),
  s(B1-B2, b(B1, B2)), s(B3, b(1, B3)),
  findall(V, nv(V), NV), length(NV, NVn), writeq(NVn), nl,
  ( z -> writeq(z_yes) ; writeq(z_no) ), nl,
  catch(s(W, boom(W)), Ex, (writeq(caught(Ex)), nl)),
  s(K, counted(K)), s(K2, counted(K2)), cnt(C1), writeq(evals(C1)), nl,
  abolish_all_tables, s(K3, counted(K3)), cnt(C2), writeq(evals(C2)), nl,
  s(X4-Y4, path(X4, Y4)),
  halt.
