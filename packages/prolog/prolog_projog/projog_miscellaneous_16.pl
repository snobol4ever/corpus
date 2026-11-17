p(1).
p(I) :- I is 1*1+1/1.
p(3).

test1(X, Y) :- X = A, B = Y, p(X), p(Y), X=Y.
test1(X, Y) :- X = A, B = Y, p(A), p(B), X=Y.
test1(X, Y) :- X = A, B = Y, p(X), p(B), X=B.
test1(X, Y) :- X = A, B = Y, p(X), p(B), B=A.

test2(X, Y) :- X = A, p(X), B = Y, p(Y), X=Y.
test2(X, Y) :- X = A, p(A), B = Y, p(B), X=Y.
test2(X, Y) :- X = A, p(X), B = Y, p(B), X=B.
test2(X, Y) :- X = A, p(X), B = Y, p(B), B=A.

test3(X, Y) :- x(a(b(X,2,[a,b|B]))) = x(a(b(A,2,[a,b|Y]))), p(X), p(Y), X=Y, p(X), p(Y), p(A), p(B).
test3(X, Y) :- x(a(b(X,2,[a,b|B]))) = x(a(b(A,2,[a,b|Y]))), p(A), p(B), X=Y, p(A), p(B), p(X), p(Y).
test3(X, Y) :- x(a(b(X,2,[a,b|B]))) = x(a(b(A,2,[a,b|Y]))), p(X), p(B), X=B, p(A), p(X), p(B), p(Y).
test3(X, Y) :- x(a(b(X,2,[a,b|B]))) = x(a(b(A,2,[a,b|Y]))), p(X), p(B), B=A, p(Y), p(B), p(X), p(A).

test4(X, Y) :- X = A, B = Y, X=Y, p(X), p(Y).
test4(X, Y) :- X = A, B = Y, X=Y, p(A), p(B).
test4(X, Y) :- X = A, B = Y, X=B, p(X), p(B).
test4(X, Y) :- X = A, B = Y, B=A, p(X), p(B).

test5(X, Y) :- X=Y, X = A, B = Y, p(X), p(Y).
test5(X, Y) :- X=Y, X = A, B = Y, p(A), p(B).
test5(X, Y) :- X=B, X = A, B = Y, p(X), p(B).
test5(X, Y) :- B=A, X = A, B = Y, p(X), p(B).

test6(X, Y) :- p(X), p(Y), X=Y, X = A, B = Y.
test6(X, Y) :- p(A), p(B), X=Y, X = A, B = Y.
test6(X, Y) :- p(X), p(B), X=B, X = A, B = Y.
test6(X, Y) :- p(X), p(B), B=A, X = A, B = Y.

%FAIL test1(1,2)
%FAIL test1(W,5)

%FAIL test2(1,2)
%FAIL test2(W,5)

%FAIL test3(1,2)
%FAIL test3(W,5)

%FAIL test4(1,2)
%FAIL test4(W,5)

%FAIL test5(1,2)
%FAIL test5(W,5)

%FAIL test6(1,2)
%FAIL test6(W,5)

%?- test1(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test1(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test2(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test2(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test3(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test3(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test4(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test4(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test5(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test5(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test6(W,1)
% W=1
% W=1
% W=1
% W=1
%NO

%?- test6(2,W)
% W=2
% W=2
% W=2
% W=2
%NO

%?- test1(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test2(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test3(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test4(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test5(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

%?- test6(W,Z)
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3
% W=1
% Z=1
% W=2
% Z=2
% W=3
% Z=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1(W,1)'), nl, '$pj_reset', catch(( ( test1(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test1(2,W)'), nl, '$pj_reset', catch(( ( test1(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test2(W,1)'), nl, '$pj_reset', catch(( ( test2(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test2(2,W)'), nl, '$pj_reset', catch(( ( test2(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- test3(W,1)'), nl, '$pj_reset', catch(( ( test3(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- test3(2,W)'), nl, '$pj_reset', catch(( ( test3(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- test4(W,1)'), nl, '$pj_reset', catch(( ( test4(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- test4(2,W)'), nl, '$pj_reset', catch(( ( test4(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- test5(W,1)'), nl, '$pj_reset', catch(( ( test5(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- test5(2,W)'), nl, '$pj_reset', catch(( ( test5(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- test6(W,1)'), nl, '$pj_reset', catch(( ( test6(W,1) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- test6(2,W)'), nl, '$pj_reset', catch(( ( test6(2,W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- test1(W,Z)'), nl, '$pj_reset', catch(( ( test1(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- test2(W,Z)'), nl, '$pj_reset', catch(( ( test2(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- test3(W,Z)'), nl, '$pj_reset', catch(( ( test3(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- test4(W,Z)'), nl, '$pj_reset', catch(( ( test4(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- test5(W,Z)'), nl, '$pj_reset', catch(( ( test5(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- test6(W,Z)'), nl, '$pj_reset', catch(( ( test6(W,Z) ), write('W = '), writeq(W), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_main' :- between(1, 18, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
