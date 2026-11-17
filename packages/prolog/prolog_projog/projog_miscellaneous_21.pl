test1(X, Y) :- X = Y.

%?- test1(X,X)
% X=UNINSTANTIATED VARIABLE

%?- test1(X,Y)
% X=UNINSTANTIATED VARIABLE
% Y=UNINSTANTIATED VARIABLE

%?- test1(X,1)
% X=1

%?- test1(a,X)
% X=a

p(1).
p(2).
p(3).

test2(X, Y) :- p(X), p(Y).

%?- test2(X,Y)
% X=1
% Y=1
% X=1
% Y=2
% X=1
% Y=3
% X=2
% Y=1
% X=2
% Y=2
% X=2
% Y=3
% X=3
% Y=1
% X=3
% Y=2
% X=3
% Y=3

%?- test2(X,X)
% X=1
% X=2
% X=3

%?- test2(1,Y)
% Y=1
% Y=2
% Y=3

%TRUE test2(1,3)

test3(X, X) :- p(X), p(X).

%?- test3(X,Y)
% X=1
% Y=1
% X=2
% Y=2
% X=3
% Y=3

%?- test3(1,Y)
% Y=1

%TRUE test3(3,3)
%FAIL test3(1,3)

test4(X, Y) :- test1(X, Y), Y=1.
%TRUE test4(1,1)
%FAIL test4(2,2)
%?- test4(1,Y)
% Y=1
%?- test4(Y,1)
% Y=1
%?- test4(X,Y)
% X=1
% Y=1

test5(X, Y) :- test1(X, Y), X=1.
%TRUE test5(1,1)
%FAIL test5(2,2)
%?- test5(1,Y)
% Y=1
%?- test5(Y,1)
% Y=1
%?- test5(X,Y)
% X=1
% Y=1

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1(X,X)'), nl, '$pj_reset', catch(( ( test1(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test1(X,Y)'), nl, '$pj_reset', catch(( ( test1(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test1(X,1)'), nl, '$pj_reset', catch(( ( test1(X,1) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test1(a,X)'), nl, '$pj_reset', catch(( ( test1(a,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- test2(X,Y)'), nl, '$pj_reset', catch(( ( test2(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- test2(X,X)'), nl, '$pj_reset', catch(( ( test2(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- test2(1,Y)'), nl, '$pj_reset', catch(( ( test2(1,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- test3(X,Y)'), nl, '$pj_reset', catch(( ( test3(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- test3(1,Y)'), nl, '$pj_reset', catch(( ( test3(1,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- test4(1,Y)'), nl, '$pj_reset', catch(( ( test4(1,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- test4(Y,1)'), nl, '$pj_reset', catch(( ( test4(Y,1) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- test4(X,Y)'), nl, '$pj_reset', catch(( ( test4(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- test5(1,Y)'), nl, '$pj_reset', catch(( ( test5(1,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- test5(Y,1)'), nl, '$pj_reset', catch(( ( test5(Y,1) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- test5(X,Y)'), nl, '$pj_reset', catch(( ( test5(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_main' :- between(1, 15, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
