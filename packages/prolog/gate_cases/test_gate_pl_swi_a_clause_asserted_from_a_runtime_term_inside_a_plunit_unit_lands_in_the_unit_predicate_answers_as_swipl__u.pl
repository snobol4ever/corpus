:- use_module(library(plunit)).
:- begin_tests(mq).
:- dynamic tmp/2, cnt/1.
test(a) :- C1 = tmp(5, 6), assertz(C1), tmp(5, X1), format("W:~q~n", [X1]).
test(b) :- C2 = (tmp(7, V) :- V = 8), assertz(C2), tmp(7, X2), format("W:~q~n", [X2]).
test(c) :- C3 = tmp(9, 10), asserta(C3, Ref), tmp(9, Y3), erase(Ref), findall(Z, tmp(9, Z), L3), format("W:~q ~q~n", [Y3, L3]).
test(d) :- C4 = tmp(5, 6), retract(C4), findall(X-Y, tmp(X, Y), L4), format("W:~q~n", [L4]).
test(e) :- H5 = tmp(7, _), retractall(H5), findall(X-Y, tmp(X, Y), L5), format("W:~q~n", [L5]).
test(f) :- H6 = cnt(_), assertz(cnt(1)), clause(H6, B6), format("W:~q~n", [B6]).
test(g) :- forall(member(N, [1, 2, 3]), (C7 = cnt(N), assertz(C7))), findall(M, cnt(M), L7), format("W:~q~n", [L7]).
test(h) :- H = cnt(1), ( retract(H) -> format("W:retracted~n") ; format("W:none~n") ), findall(M, cnt(M), L), format("W:~q~n", [L]).
test(i) :- Cl = (cnt(77) :- true), assertz(Cl, R), clause(H, B, R), erase(R), format("W:~q ~q ~q~n", [H, B, H =@= cnt(77)]).
:- end_tests(mq).
