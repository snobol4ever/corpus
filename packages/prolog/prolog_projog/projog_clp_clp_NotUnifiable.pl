:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%FAIL X in 7..9, X\=7

%FAIL X in 7..9, 8\=X

%FAIL X in 7..9, X\=9

%?- X in 7..9, X\=6
% X=7..9

%?- X in 7..9, 10\=X
% X=7..9

%FAIL X#=2, Y in 1..3, X\=Y

%FAIL X in 7..9, Y in 9..12, X\=Y

%?- X in 7..9, Y in 10..12, X\=Y
% X=7..9
% Y=10..12

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in 7..9, X\\=6'), nl, '$pj_reset', catch(( ( X in 7..9, X\=6 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 7..9, 10\\=X'), nl, '$pj_reset', catch(( ( X in 7..9, 10\=X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 7..9, Y in 10..12, X\\=Y'), nl, '$pj_reset', catch(( ( X in 7..9, Y in 10..12, X\=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
