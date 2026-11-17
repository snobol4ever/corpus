:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%FAIL [X,Y] ins 1..3, X==Y

%FAIL X in 1..3, X#=Y, X==Y

%FAIL X#=Y, X in 1..3, X==Y

%FAIL X in 1..3, 2==X

%FAIL X in 1..3, X==2

%FAIL X #=1, 2==X

%FAIL X #=1, X==2

%FAIL X==1, X#=1

%?- [X,Y] ins 1..3, X=Y, X==Y
% X=1..3
% Y=1..3

%?- X in 1..3, X=Y, X==Y
% X=1..3
% Y=1..3

%?- X=Y, X in 1..3, X==Y
% X=1..3
% Y=1..3

%?- X#=1, 1==X
% X=1

%?- X#=1, X==1
% X=1

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y] ins 1..3, X=Y, X==Y'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..3, X=Y, X==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 1..3, X=Y, X==Y'), nl, '$pj_reset', catch(( ( X in 1..3, X=Y, X==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X=Y, X in 1..3, X==Y'), nl, '$pj_reset', catch(( ( X=Y, X in 1..3, X==Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X#=1, 1==X'), nl, '$pj_reset', catch(( ( X#=1, 1==X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X#=1, X==1'), nl, '$pj_reset', catch(( ( X#=1, X==1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
