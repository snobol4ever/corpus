:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- 3*X - 2*Y #= 12, 2*Y #= X, [X,Y] ins -50..50, label([X])
% X = 6
% Y = 3
%NO

%?- Y#>=2, Y#=<X+1, 2*Y#=<8-X, label([X])
% X = 1
% Y = 2
% X = 2
% Y = 2
% X = 3
% Y = 2
% X = 4
% Y = 2
% X = 2
% Y = 3
%NO

%?- X#>=2, Y#>=2, Y#=<X+1, 2*Y#=<8-X, Z#=2*X+3*Y, label([Z])
% X = 2
% Y = 2
% Z = 10
% X = 3
% Y = 2
% Z = 12
% X = 4
% Y = 2
% Z = 14
% X = 2
% Y = 3
% Z = 13
%NO

%?- X#>=2, Y#>=2, Y*2#=<8-X
% X = 2..4
% Y = 2..3

%?- Y in 1..3, X+1#=Y+2
% X = 2..4
% Y = 1..3

%?- Y in 1..3, X+1#=Y+2, label([X])
% X=2
% Y=1
% X=3
% Y=2
% X=4
% Y=3
%NO

%?- X+1#=Y+2, Y in 1..3, label([X])
% X=2
% Y=1
% X=3
% Y=2
% X=4
% Y=3
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- 3*X - 2*Y #= 12, 2*Y #= X, [X,Y] ins -50..50, label([X])'), nl, '$pj_reset', catch(( ( 3*X - 2*Y #= 12, 2*Y #= X, [X,Y] ins -50..50, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- Y#>=2, Y#=<X+1, 2*Y#=<8-X, label([X])'), nl, '$pj_reset', catch(( ( Y#>=2, Y#=<X+1, 2*Y#=<8-X, label([X]) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X#>=2, Y#>=2, Y#=<X+1, 2*Y#=<8-X, Z#=2*X+3*Y, label([Z])'), nl, '$pj_reset', catch(( ( X#>=2, Y#>=2, Y#=<X+1, 2*Y#=<8-X, Z#=2*X+3*Y, label([Z]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X#>=2, Y#>=2, Y*2#=<8-X'), nl, '$pj_reset', catch(( ( X#>=2, Y#>=2, Y*2#=<8-X ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- Y in 1..3, X+1#=Y+2'), nl, '$pj_reset', catch(( ( Y in 1..3, X+1#=Y+2 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- Y in 1..3, X+1#=Y+2, label([X])'), nl, '$pj_reset', catch(( ( Y in 1..3, X+1#=Y+2, label([X]) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X+1#=Y+2, Y in 1..3, label([X])'), nl, '$pj_reset', catch(( ( X+1#=Y+2, Y in 1..3, label([X]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
