c0(X, Y, Z) :- X \= Y.
c1(X, Y, Z) :- X \== Y.
c2(X, Y, Z) :- X \== a.
c3(X, Y, Z) :- X @< Y.
c4(X, Y, Z) :- X == Y.
c5(X, Y, Z) :- X == a.
c6(X, Y, Z) :- a == X.
c7(X, Y, Z) :- X = f(Y).
c8(X, Y, Z) :- f(Y) = X.
c9(X, Y, Z) :- a = X.
c10(X, Y, Z) :- fail.
c11(X, Y, Z) :- false.
c12(X, Y, Z) :- X is Y.
c13(X, Y, Z) :- 1 =:= X.
c14(X, Y, Z) :- X =@= Y.
c15(X, Y, Z) :- X > 1.
c16(X, Y, Z) :- X = Y, Y = Z.
c17(X, Y, Z) :- \+ X = a.
c18(X, Y, Z) :- \+ a = a.
c19(X, Y, Z) :- (X = a ; Y = b).
c20(X, Y, Z) :- (X = a -> true ; true).
cases([c0-0,c1-1,c2-2,c3-3,c4-4,c5-5,c6-6,c7-7,c8-8,c9-9,c10-10,c11-11,c12-12,c13-13,c14-14,c15-15,c16-16,c17-17,c18-18,c19-19,c20-20]).
name_tab(0, "X \\= Y").
name_tab(1, "X \\== Y").
name_tab(2, "X \\== a").
name_tab(3, "X @< Y").
name_tab(4, "X == Y").
name_tab(5, "X == a").
name_tab(6, "a == X").
name_tab(7, "X = f(Y)").
name_tab(8, "f(Y) = X").
name_tab(9, "a = X").
name_tab(10, "fail").
name_tab(11, "false").
name_tab(12, "X is Y").
name_tab(13, "1 =:= X").
name_tab(14, "X =@= Y").
name_tab(15, "X > 1").
name_tab(16, "X = Y, Y = Z").
name_tab(17, "\\+ X = a").
name_tab(18, "\\+ a = a").
name_tab(19, "(X = a ; Y = b)").
name_tab(20, "(X = a -> true ; true)").
:- cases(L), forall(member(G-N, L), ( name_tab(N, C), G1 =.. [G, 1, 2, 3], ( call_with_depth_limit(G1, 1, R) -> format('~s ~w~n', [C, R]) ; format('~s failed~n', [C]) ) )).
