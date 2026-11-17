:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [X,Y] ins 1..2, repeat(2), X#=Y, label([X])
% X=1
% Y=1
% X=2
% Y=2
% X=1
% Y=1
% X=2
% Y=2
%NO

%?- repeat(2), X in 1..3, \+ integer(X), label([X])
% X=1
% X=2
% X=3
% X=1
% X=2
% X=3
%NO

%?- X in 1..3, repeat(2), \+ integer(X), label([X])
% X=1
% X=2
% X=3
% X=1
% X=2
% X=3
%NO

p(7).
p(8).
p(9).

%?- X in 1..3, p(Y), label([X]), Z is X*Y
% X=1
% Y=7
% Z=7
% X=2
% Y=7
% Z=14
% X=3
% Y=7
% Z=21
% X=1
% Y=8
% Z=8
% X=2
% Y=8
% Z=16
% X=3
% Y=8
% Z=24
% X=1
% Y=9
% Z=9
% X=2
% Y=9
% Z=18
% X=3
% Y=9
% Z=27
%NO

%?- p(Y), X in 1..3, label([X]), Z is X*Y
% X=1
% Y=7
% Z=7
% X=2
% Y=7
% Z=14
% X=3
% Y=7
% Z=21
% X=1
% Y=8
% Z=8
% X=2
% Y=8
% Z=16
% X=3
% Y=8
% Z=24
% X=1
% Y=9
% Z=9
% X=2
% Y=9
% Z=18
% X=3
% Y=9
% Z=27
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y] ins 1..2, repeat(2), X#=Y, label([X])'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..2, repeat(2), X#=Y, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- repeat(2), X in 1..3, \\+ integer(X), label([X])'), nl, '$pj_reset', catch(( ( repeat(2), X in 1..3, \+ integer(X), label([X]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 1..3, repeat(2), \\+ integer(X), label([X])'), nl, '$pj_reset', catch(( ( X in 1..3, repeat(2), \+ integer(X), label([X]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X in 1..3, p(Y), label([X]), Z is X*Y'), nl, '$pj_reset', catch(( ( X in 1..3, p(Y), label([X]), Z is X*Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(Y), X in 1..3, label([X]), Z is X*Y'), nl, '$pj_reset', catch(( ( p(Y), X in 1..3, label([X]), Z is X*Y ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
