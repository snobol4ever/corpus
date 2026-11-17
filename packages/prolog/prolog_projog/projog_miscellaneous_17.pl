p(p(p(1))).
p(p(p(2))).
p(p(p(3))).

test1(X,Y) :- X=A, B=Y, Y=3, C=p(A), p(C).
test1(X,Y) :- X=A, B=Y, C=p(A), Y=2, p(C).

%?- test1(p(X), X)
% X=3
% X=2

p2(I) :- I=I2, p(p(p(I2))), 1 is I mod 2.

test2(V, W, X, Y, Z) :- A=p(X), p(Y)=B, p(A)=C, D=p(B), p(C), p(D), p(Z)=C, p2(T), W is X, C=D, V is T*T.

test3(X,Y) :- A=Y, Y=B, test2(X, A, Y, B, p(B)).
%?- test3(X, Y)
% X=1
% Y=1
% X=9
% Y=1
% X=1
% Y=2
% X=9
% Y=2
% X=1
% Y=3
% X=9
% Y=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1(p(X), X)'), nl, '$pj_reset', catch(( ( test1(p(X), X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test3(X, Y)'), nl, '$pj_reset', catch(( ( test3(X, Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
