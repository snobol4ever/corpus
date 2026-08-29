%-------------------------------------------------- 1 plz_p1_single_clause XFAIL
:- initialization(main).
f(a).
main :- f(X), write(X), nl.
%----------------------------------------------- 2 plz_p2_two_clause_first XFAIL
:- initialization(main).
f(a).
f(b).
main :- f(X), write(X), nl.
%----------------------------------------------------- 3 plz_p3_faildriven XFAIL
:- initialization(main).
f(a).
f(b).
f(c).
main :- ( f(X), write(X), nl, fail ) ; true.
%------------------------------------------------------ 4 plz_p4_recursion XFAIL
:- initialization(main).
count(0) :- !.
count(N) :- N > 0, write(N), nl, N1 is N - 1, count(N1).
main :- count(3).
%---------------------------------------------------- 5 plz_p5_inline_disj XFAIL
:- initialization(main).
main :- ( ( X = a ; X = b ), write(X), nl, fail ) ; true.
%--------------------------------------------------------- 6 plz_p6_member XFAIL
:- initialization(main).
mem(X, [X|_]).
mem(X, [_|T]) :- mem(X, T).
main :- ( mem(X, [1,2,3]), write(X), nl, fail ) ; true.
%----------------------------------------------------- 7 plz_p7_cut_commit XFAIL
:- initialization(main).
f(a) :- !.
f(b).
main :- ( f(X), write(X), nl, fail ) ; true.
%------------------------------------------------- 8 plz_p8_cut_bars_retry XFAIL
:- initialization(main).
t(1).
t(2).
t(3).
g :- t(X), !, X > 2.
main :- ( g -> write(yes) ; write(no) ), nl.
%------------------------------------------------- 9 plz_p9_guard_then_cut XFAIL
:- initialization(main).
t(1).
t(2).
t(3).
f(X) :- t(X), X > 1, !.
main :- f(X), write(X), nl.
