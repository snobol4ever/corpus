:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- X in 1..5, Y in 0..4, Y#>X, Z#=X+Y+1, label([X])
% X=1
% Y=2
% Z=4
% X=1
% Y=3
% Z=5
% X=1
% Y=4
% Z=6
% X=2
% Y=3
% Z=6
% X=2
% Y=4
% Z=7
% X=3
% Y=4
% Z=8
%NO

%?- X in 1..5, Y in 0..4, X#<Y, Z#=X+Y+1, label([X])
% X=1
% Y=2
% Z=4
% X=1
% Y=3
% Z=5
% X=1
% Y=4
% Z=6
% X=2
% Y=3
% Z=6
% X=2
% Y=4
% Z=7
% X=3
% Y=4
% Z=8
%NO

%?- X in -5..-1, Y in -4..0, X#>Y, Z#=X+Y+1, label([X])
% X=-3
% Y=-4
% Z=-6
% X=-2
% Y=-4
% Z=-5
% X=-2
% Y=-3
% Z=-4
% X=-1
% Y=-4
% Z=-4
% X=-1
% Y=-3
% Z=-3
% X=-1
% Y=-2
% Z=-2
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in 1..5, Y in 0..4, Y#>X, Z#=X+Y+1, label([X])'), nl, '$pj_reset', catch(( ( X in 1..5, Y in 0..4, Y#>X, Z#=X+Y+1, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 1..5, Y in 0..4, X#<Y, Z#=X+Y+1, label([X])'), nl, '$pj_reset', catch(( ( X in 1..5, Y in 0..4, X#<Y, Z#=X+Y+1, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in -5..-1, Y in -4..0, X#>Y, Z#=X+Y+1, label([X])'), nl, '$pj_reset', catch(( ( X in -5..-1, Y in -4..0, X#>Y, Z#=X+Y+1, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
