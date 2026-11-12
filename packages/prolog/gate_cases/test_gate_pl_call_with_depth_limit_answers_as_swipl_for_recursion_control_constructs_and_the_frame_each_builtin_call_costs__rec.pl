t(0).
t(N) :- N > 0, N1 is N - 1, t(N1).
u(0).
u(N) :- N > 0, N1 is N - 1, u(N1), true.
w(0) :- !.
w(N) :- N1 is N - 1, w(N1).
x(0).
x(N) :- N > 0, N1 is N - 1, y(N1).
y(N) :- x(N).
:- forall(member(G, [t(5), u(5), w(5), x(5)]), ( call_with_depth_limit(G, 100, R), writeln(G-R) )).
:- forall(member(G, [t(5), u(5), w(5), x(5)]), forall(member(L, [3, 4, 5, 6, 7, 8, 9, 10, 11]), ( call_with_depth_limit(G, L, R) -> format("~w L=~w R=~w~n", [G, L, R]) ; true ))).
loop(I) :- writeln(I), I1 is I + 1, loop(I1).
loop2(I) :- I1 is I + 1, writeln(I), loop2(I1).
:- call_with_depth_limit(loop(1), 6, R), writeln(R).
:- call_with_depth_limit(loop2(1), 6, R), writeln(R).
