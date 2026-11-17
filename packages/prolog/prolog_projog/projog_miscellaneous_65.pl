a(1).
a(2).
a(3).

b(X, Y, Z) :- Z is X+Y.
b(X, Y, Z) :- Z is X-Y.
b(X, Y, Z) :- Z is X*Y.

c(A,B,C) :- a(A), a(B), b(A,B,C).

test(A,B,C) :- A=5; c(A,B,C).

%TRUE test(2,3,6)

%?- test(5,B,C)
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
%NO

%?- test(2,3,X)
% X=5
% X=-1
% X=6

%?- test(A,B,6)
% A=5
% B=UNINSTANTIATED VARIABLE
% A=2
% B=3
% A=3
% B=2
% A=3
% B=3
%NO

%?- test(A,B,C)
% A=5
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
% A=1
% B=1
% C=2
% A=1
% B=1
% C=0
% A=1
% B=1
% C=1
% A=1
% B=2
% C=3
% A=1
% B=2
% C=-1
% A=1
% B=2
% C=2
% A=1
% B=3
% C=4
% A=1
% B=3
% C=-2
% A=1
% B=3
% C=3
% A=2
% B=1
% C=3
% A=2
% B=1
% C=1
% A=2
% B=1
% C=2
% A=2
% B=2
% C=4
% A=2
% B=2
% C=0
% A=2
% B=2
% C=4
% A=2
% B=3
% C=5
% A=2
% B=3
% C=-1
% A=2
% B=3
% C=6
% A=3
% B=1
% C=4
% A=3
% B=1
% C=2
% A=3
% B=1
% C=3
% A=3
% B=2
% C=5
% A=3
% B=2
% C=1
% A=3
% B=2
% C=6
% A=3
% B=3
% C=6
% A=3
% B=3
% C=0
% A=3
% B=3
% C=9

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test(5,B,C)'), nl, '$pj_reset', catch(( ( test(5,B,C) ), write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test(2,3,X)'), nl, '$pj_reset', catch(( ( test(2,3,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test(A,B,6)'), nl, '$pj_reset', catch(( ( test(A,B,6) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test(A,B,C)'), nl, '$pj_reset', catch(( ( test(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
