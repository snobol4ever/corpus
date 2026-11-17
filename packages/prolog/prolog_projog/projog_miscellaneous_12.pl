x1(W,Z) :- W is 1, Z is 2.

%FAIL x1(X,X)
%?- x1(X,Y)
% X=1
% Y=2

x2(W,Z) :- W is 1, Z == 1.

%?- x2(X,X)
% X=1
%FAIL x2(X,Y)

x3(X, Y) :- X = Y, x1(X,Y).
%FAIL x3(X,X)
%FAIL x3(X,Y)

x4(X, Y) :- X = Y, x2(X,Y).
%?- x4(X,Y)
% X=1
% Y=1
%?- x4(X,X)
% X=1

%?- X=Y, x2(X,Y)
% X=1
% Y=1

%?- Y=X, x2(X,Y)
% X=1
% Y=1

q(1).
q(2).
q(3).

x5(X, Y) :- X = Y, q(X).

%?- x5(X,Y)
% X=1
% Y=1
% X=2
% Y=2
% X=3
% Y=3

%?- x5(X,X)
% X=1
% X=2
% X=3

x6(X, Y) :- X = Y, q(Y).

%?- x6(X,Y)
% X=1
% Y=1
% X=2
% Y=2
% X=3
% Y=3

%?- x6(X,X)
% X=1
% X=2
% X=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x1(X,Y)'), nl, '$pj_reset', catch(( ( x1(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x2(X,X)'), nl, '$pj_reset', catch(( ( x2(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x4(X,Y)'), nl, '$pj_reset', catch(( ( x4(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- x4(X,X)'), nl, '$pj_reset', catch(( ( x4(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X=Y, x2(X,Y)'), nl, '$pj_reset', catch(( ( X=Y, x2(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- Y=X, x2(X,Y)'), nl, '$pj_reset', catch(( ( Y=X, x2(X,Y) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- x5(X,Y)'), nl, '$pj_reset', catch(( ( x5(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- x5(X,X)'), nl, '$pj_reset', catch(( ( x5(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- x6(X,Y)'), nl, '$pj_reset', catch(( ( x6(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- x6(X,X)'), nl, '$pj_reset', catch(( ( x6(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_main' :- between(1, 10, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
