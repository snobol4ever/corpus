:- dynamic dyn/1.
fact(0, 1) :- !.
fact(N, F) :- N1 is N - 1, fact(N1, F1), F is N * F1.
len([], 0).
len([_|T], N) :- len(T, M), N is M + 1.
spin(N) :- N1 is N + 1, spin(N1).
color(red).
color(green).
color(blue).
deep(0) :- !.
deep(N) :- N1 is N - 1, deep(N1).
r(X) :- deep(20), X = first.
r(second).
neg(X) :- \+ color(X).
ite(X, Y) :- ( color(X) -> Y = yes ; Y = no ).
dsj(X) :- ( X = 1 ; X = 2 ).
dyn(1).
dyn(2) :- dyn(1).
show(G, L) :- catch(( findall(R, call_with_depth_limit(G, L, R), Rs) -> print(Rs) ; print(none) ), error(E, _), print(E)), nl.
:- show(fact(5, _), 100).
:- show(fact(5, _), 3).
:- show(fact(7, _), 6).
:- show(len([a, b, c], _), 100).
:- show(true, 10).
:- show(fail, 10).
:- show(spin(0), 6).
:- show(color(_), 10).
:- show(r(_), 12).
:- show(r(_), 100).
:- show(neg(red), 10).
:- show(neg(pink), 10).
:- show(ite(red, _), 10).
:- show(ite(pink, _), 10).
:- show(dsj(_), 10).
:- show(dyn(2), 10).
:- show(dyn(_), 10).
:- show(call_with_depth_limit(fact(3, _), 10, _), 20).
:- show(true, a).
:- show(true, _).
:- show(undefined_pred_xyz, 10).
