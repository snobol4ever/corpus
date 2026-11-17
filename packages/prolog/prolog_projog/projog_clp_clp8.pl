:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%FAIL X in 1..3, integer(X)

%?- X in 1..3, label([X]), integer(X)
% X=1
% X=2
% X=3
%NO

%?- X in 1..3, \+ integer(X), label([X]), integer(X)
% X=1
% X=2
% X=3
%NO

%?- X in 1..3, X=1, integer(X)
% X=1

%?- X in 1..3, 1=X, integer(X)
% X=1

%?- X in 1..3, X#=1, integer(X)
% X=1

%?- X in 1..3, 1#=X, integer(X)
% X=1

%?- X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y)
% X=1
% Y=3

%?- X in 0..3, Y#=X+2, X=1, integer(X), integer(Y)
% X=1
% Y=3

%?- X in 0..3, Y#=X+2, X#=1, integer(X), integer(Y)
% X=1
% Y=3

%?- X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y)
% X=1
% Y=3

%?- X in 0..3, Y#=X+2, 1#=X, integer(X), integer(Y)
% X=1
% Y=3

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X in 1..3, label([X]), integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, label([X]), integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 1..3, \\+ integer(X), label([X]), integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, \+ integer(X), label([X]), integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 1..3, X=1, integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, X=1, integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X in 1..3, 1=X, integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, 1=X, integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X in 1..3, X#=1, integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, X#=1, integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X in 1..3, 1#=X, integer(X)'), nl, '$pj_reset', catch(( ( X in 1..3, 1#=X, integer(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X in 0..3, Y#=X+2, X=1, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, X=1, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X in 0..3, Y#=X+2, X#=1, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, X#=1, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, 1=X, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X in 0..3, Y#=X+2, 1#=X, integer(X), integer(Y)'), nl, '$pj_reset', catch(( ( X in 0..3, Y#=X+2, 1#=X, integer(X), integer(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_main' :- between(1, 11, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
