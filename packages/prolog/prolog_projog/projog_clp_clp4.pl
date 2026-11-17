:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- Y in 2..4, Z in 7..9, X#=Y*Z, label([X])
% X = 14
% Y = 2
% Z = 7
% X = 16
% Y = 2
% Z = 8
% X = 18
% Y = 2
% Z = 9
% X = 21
% Y = 3
% Z = 7
% X = 24
% Y = 3
% Z = 8
% X = 27
% Y = 3
% Z = 9
% X = 28
% Y = 4
% Z = 7
% X = 32
% Y = 4
% Z = 8
% X = 36
% Y = 4
% Z = 9
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- Y in 2..4, Z in 7..9, X#=Y*Z, label([X])'), nl, '$pj_reset', catch(( ( Y in 2..4, Z in 7..9, X#=Y*Z, label([X]) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
