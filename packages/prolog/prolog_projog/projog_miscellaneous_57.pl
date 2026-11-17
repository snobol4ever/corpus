% example 1
x(X) :- e(Y), X is Y+4.

e(0).
e(X) :- o(Y), X is Y+1, X>0.

o(1).
o(X) :- x(Y), X is Y+1, X>1.

% example 2
e2(X) :- repeat(3), fail.
e2(X) :- e1(X).
e1(0).
e1(X) :- o3(Y), X is Y+1, X>0.

o3(X) :- o2(X).
o2(X) :- o1(X).
o1(1).
o1(X) :- e2(Y), X is Y+1, X>1.

%?- e(X), write(X), nl, X>20, !
%OUTPUT
%0
%2
%6
%8
%12
%14
%18
%20
%24
%
%OUTPUT
% X=24
%NO

%?- o(X), write(X), nl, X>20, !
%OUTPUT
%1
%5
%7
%11
%13
%17
%19
%23
%
%OUTPUT
% X=23
%NO

%?- e1(X), write(X), nl, X>10, !
%OUTPUT
%0
%2
%4
%6
%8
%10
%12
%
%OUTPUT
% X=12
%NO

%?- o1(X), write(X), nl, X>10, !
%OUTPUT
%1
%3
%5
%7
%9
%11
%
%OUTPUT
% X=11
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- e(X), write(X), nl, X>20, !'), nl, '$pj_reset', catch(( ( e(X), write(X), nl, X>20, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- o(X), write(X), nl, X>20, !'), nl, '$pj_reset', catch(( ( o(X), write(X), nl, X>20, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- e1(X), write(X), nl, X>10, !'), nl, '$pj_reset', catch(( ( e1(X), write(X), nl, X>10, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- o1(X), write(X), nl, X>10, !'), nl, '$pj_reset', catch(( ( o1(X), write(X), nl, X>10, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
