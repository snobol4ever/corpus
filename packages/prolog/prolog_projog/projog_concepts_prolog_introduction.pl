% Facts.
father(homer,bart).
father(homer,lisa).
father(homer,maggie).

mother(marge,bart).
mother(marge,lisa).
mother(marge,maggie).

father(ned,rod).
father(ned,todd).

male(homer).
male(bart).
male(ned).
male(rod).
male(todd).

% Rules.
parents(F,M,C) :- father(F,C), mother(M,C).

siblings(A,B) :- parents(F,M,A), parents(F,M,B).
brother(A,B) :- siblings(A,B), male(B).

% Simple questions - true if the fact exists in the knowledge base, else false.

%TRUE father(homer,bart)
%TRUE father(homer,lisa)
%TRUE father(homer,maggie)
%FAIL father(homer,rod)
%FAIL father(homer,ralph)

% Question using a variable.

%?- father(homer,C)
% C=bart
% C=lisa
% C=maggie

%?- father(ned,C)
% C=rod
% C=todd

% Question using two variables - evaluation of the query uses backtracking to find multiple solutions.

%?- father(F,C)
% F=homer
% C=bart
% F=homer
% C=lisa
% F=homer
% C=maggie
% F=ned
% C=rod
% F=ned
% C=todd

%?- parents(homer,marge,C)
% C=bart
% C=lisa
% C=maggie

%?- brother(lisa,X)
% X=bart
%NO
%?- brother(bart,X)
% X=bart
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- father(homer,C)'), nl, '$pj_reset', catch(( ( father(homer,C) ), write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- father(ned,C)'), nl, '$pj_reset', catch(( ( father(ned,C) ), write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- father(F,C)'), nl, '$pj_reset', catch(( ( father(F,C) ), write('F = '), writeq(F), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- parents(homer,marge,C)'), nl, '$pj_reset', catch(( ( parents(homer,marge,C) ), write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- brother(lisa,X)'), nl, '$pj_reset', catch(( ( brother(lisa,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- brother(bart,X)'), nl, '$pj_reset', catch(( ( brother(bart,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_main' :- between(1, 6, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
