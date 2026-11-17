geven(0).
geven(X) :- godd(Y), X is Y+1, X>0.
godd(1).
godd(X) :- geven(Y), X is Y+1, X>1.

%?- geven(X), !
% X=0
%NO

%?- godd(X), !
% X=1
%NO

%?- geven(X), X>100, !
% X=102
%NO

%?- godd(X), X>100, !
% X=101
%NO

%?- geven(X), write(X), nl, X>10, !
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

%?- godd(X), write(X), nl, X>10, !
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
'$pj_q'(1) :- write('?- geven(X), !'), nl, '$pj_reset', catch(( ( geven(X), ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- godd(X), !'), nl, '$pj_reset', catch(( ( godd(X), ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- geven(X), X>100, !'), nl, '$pj_reset', catch(( ( geven(X), X>100, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- godd(X), X>100, !'), nl, '$pj_reset', catch(( ( godd(X), X>100, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- geven(X), write(X), nl, X>10, !'), nl, '$pj_reset', catch(( ( geven(X), write(X), nl, X>10, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- godd(X), write(X), nl, X>10, !'), nl, '$pj_reset', catch(( ( godd(X), write(X), nl, X>10, ! ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
