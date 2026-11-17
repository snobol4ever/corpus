q(1).
q(2).
q(3).

x(X, Y) :- q(X), q(Y).

%?- x(Z,Z)
% Z=1
% Z=2
% Z=3

%?- x(A,B)
% A=1
% B=1
% A=1
% B=2
% A=1
% B=3
% A=2
% B=1
% A=2
% B=2
% A=2
% B=3
% A=3
% B=1
% A=3
% B=2
% A=3
% B=3

% test having anonymous variables ('_') in query arguments

%?- x(_,_)
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%YES

qwerty :- X=Y, q(X), q(Y).
%?- qwerty
%YES
%YES
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(Z,Z)'), nl, '$pj_reset', catch(( ( x(Z,Z) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x(A,B)'), nl, '$pj_reset', catch(( ( x(A,B) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x(_,_)'), nl, '$pj_reset', catch(( ( x(_,_) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- qwerty'), nl, '$pj_reset', catch(( ( qwerty ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
