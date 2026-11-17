n(1).
n(2).
n(3).

testE(X) :- n(C), X is C+1, X>2.

%?- testE(X)
% X=3
% X=4

n(1,2,3).
n(a,b,c).
n(x,y,x).

testM1(A,B,C,E) :- n(X,Y,Z), n(A,B,C), n(X,b,H), n(V,T,V), E=V.
testM2(A,B,C,E) :- n(X,Y,Z), n(A,B,C), n(X,b,C), n(V,T,V), E=V.

%?- testM1(A,B,C,E)
% A=1
% B=2
% C=3
% E=x
% A=a
% B=b
% C=c
% E=x
% A=x
% B=y
% C=x
% E=x
%NO

%?- testM2(A,B,C,E)
% A=a
% B=b
% C=c
% E=x
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- testE(X)'), nl, '$pj_reset', catch(( ( testE(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- testM1(A,B,C,E)'), nl, '$pj_reset', catch(( ( testM1(A,B,C,E) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('E = '), writeq(E), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- testM2(A,B,C,E)'), nl, '$pj_reset', catch(( ( testM2(A,B,C,E) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('E = '), writeq(E), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
