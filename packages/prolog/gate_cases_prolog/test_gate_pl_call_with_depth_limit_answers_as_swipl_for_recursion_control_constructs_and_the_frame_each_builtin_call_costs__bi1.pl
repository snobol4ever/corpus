:- dynamic zz/1.
c0 :- var(X).
c1 :- nonvar(a).
c2 :- atom(a).
c3 :- integer(1).
c4 :- number(1).
c5 :- atomic(a).
c6 :- compound(f(a)).
c7 :- callable(a).
c8 :- is_list([]).
c9 :- ground(a).
c10 :- X = a.
c11 :- a = a.
c12 :- X = Y.
c13 :- f(X) = f(a).
c14 :- a \= b.
c15 :- X == X.
c16 :- a == a.
c17 :- a \== b.
c18 :- a @< b.
c19 :- 1 < 2.
c20 :- 1 =:= 1.
c21 :- X is 1.
c22 :- a =@= a.
c23 :- true.
c24 :- fail ; true.
c25 :- \+ fail.
c26 :- (true -> true ; fail).
c27 :- call(true).
c28 :- functor(f(a), _, _).
c29 :- arg(1, f(a), _).
c30 :- X =.. [a].
c31 :- copy_term(a, _).
c32 :- atom_length(a, _).
c33 :- nb_setval(k, 1).
c34 :- writeln(x).
c35 :- nl.
c36 :- length([], _).
c37 :- succ(1, _).
c38 :- between(1, 1, _).
c39 :- !.
c40 :- X = 1, X == 1.
cases([c0-0,c1-1,c2-2,c3-3,c4-4,c5-5,c6-6,c7-7,c8-8,c9-9,c10-10,c11-11,c12-12,c13-13,c14-14,c15-15,c16-16,c17-17,c18-18,c19-19,c20-20,c21-21,c22-22,c23-23,c24-24,c25-25,c26-26,c28-28,c29-29,c30-30,c31-31,c32-32,c33-33,c34-34,c35-35,c36-36,c37-37,c38-38,c39-39,c40-40]).
name_of(N, C) :- name_tab(N, C).
name_tab(0, "var(X)").
name_tab(1, "nonvar(a)").
name_tab(2, "atom(a)").
name_tab(3, "integer(1)").
name_tab(4, "number(1)").
name_tab(5, "atomic(a)").
name_tab(6, "compound(f(a))").
name_tab(7, "callable(a)").
name_tab(8, "is_list([])").
name_tab(9, "ground(a)").
name_tab(10, "X = a").
name_tab(11, "a = a").
name_tab(12, "X = Y").
name_tab(13, "f(X) = f(a)").
name_tab(14, "a \\= b").
name_tab(15, "X == X").
name_tab(16, "a == a").
name_tab(17, "a \\== b").
name_tab(18, "a @< b").
name_tab(19, "1 < 2").
name_tab(20, "1 =:= 1").
name_tab(21, "X is 1").
name_tab(22, "a =@= a").
name_tab(23, "true").
name_tab(24, "fail ; true").
name_tab(25, "\\+ fail").
name_tab(26, "(true -> true ; fail)").
name_tab(27, "call(true)").
name_tab(28, "functor(f(a), _, _)").
name_tab(29, "arg(1, f(a), _)").
name_tab(30, "X =.. [a]").
name_tab(31, "copy_term(a, _)").
name_tab(32, "atom_length(a, _)").
name_tab(33, "nb_setval(k, 1)").
name_tab(34, "writeln(x)").
name_tab(35, "nl").
name_tab(36, "length([], _)").
name_tab(37, "succ(1, _)").
name_tab(38, "between(1, 1, _)").
name_tab(39, "!").
name_tab(40, "X = 1, X == 1").
:- cases(L), forall(member(G-N, L), ( name_tab(N, C), ( call_with_depth_limit(G, 1, R) -> format('~s ~w~n', [C, R]) ; format('~s failed~n', [C]) ) )).
