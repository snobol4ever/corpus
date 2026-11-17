:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [X,Y,Z] ins 7..10, Y#<X, Z#>X+1
% X=8
% Y=7
% Z=10

%FAIL [X,Y,Z] ins 7..10, Y#<X, Z#>X+2

%?- X in 7..9, Y#=X+2, X#=7
% X = 7
% Y = 9

%?- X in 7..9, X#=7, Y#=X+2
% X = 7
% Y = 9

%?- Y#=X+2, X in 7..9, X#=7
% X = 7
% Y = 9

%?- Y#=X+2, X#=7, X in 7..9
% X = 7
% Y = 9

%?- X#=7, Y#=X+2, X in 7..9
% X = 7
% Y = 9

%?- X#=7, X in 7..9, Y#=X+2
% X = 7
% Y = 9

%?- [X,Y] in 7..9, Y#=X+2
% X = 7
% Y = 9

%?- Y#=X+2, [X,Y] in 7..9
% X = 7
% Y = 9

%?- [X,Y] in 7..9, Y-2#=X
% X = 7
% Y = 9

%?- Y-2#=X, [X,Y] in 7..9
% X = 7
% Y = 9

%FAIL X in 7..9, Y#=X+2, X#=6
%FAIL X in 7..9, X#=6, Y#=X+2
%FAIL Y#=X+2, X in 7..9, X#=6
%FAIL Y#=X+2, X#=6, X in 7..9
%FAIL X#=6, Y#=X+2, X in 7..9
%FAIL X#=6, X in 7..9, Y#=X+2
%FAIL [X,Y] ins 7..9, Y#=X+2, X#=8
%FAIL [X,Y] ins 7..9, X#=8, Y#=X+2
%FAIL Y#=X+2, [X,Y] ins 7..9, X#=8
%FAIL Y#=X+2, X#=8, [X,Y] ins 7..9
%FAIL X#=8, Y#=X+2, [X,Y] ins 7..9
%FAIL X#=8, [X,Y] ins 7..9, Y#=X+2

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y,Z] ins 7..10, Y#<X, Z#>X+1'), nl, '$pj_reset', catch(( ( [X,Y,Z] ins 7..10, Y#<X, Z#>X+1 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X in 7..9, Y#=X+2, X#=7'), nl, '$pj_reset', catch(( ( X in 7..9, Y#=X+2, X#=7 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 7..9, X#=7, Y#=X+2'), nl, '$pj_reset', catch(( ( X in 7..9, X#=7, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- Y#=X+2, X in 7..9, X#=7'), nl, '$pj_reset', catch(( ( Y#=X+2, X in 7..9, X#=7 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- Y#=X+2, X#=7, X in 7..9'), nl, '$pj_reset', catch(( ( Y#=X+2, X#=7, X in 7..9 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X#=7, Y#=X+2, X in 7..9'), nl, '$pj_reset', catch(( ( X#=7, Y#=X+2, X in 7..9 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X#=7, X in 7..9, Y#=X+2'), nl, '$pj_reset', catch(( ( X#=7, X in 7..9, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- [X,Y] in 7..9, Y#=X+2'), nl, '$pj_reset', catch(( ( [X,Y] in 7..9, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- Y#=X+2, [X,Y] in 7..9'), nl, '$pj_reset', catch(( ( Y#=X+2, [X,Y] in 7..9 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- [X,Y] in 7..9, Y-2#=X'), nl, '$pj_reset', catch(( ( [X,Y] in 7..9, Y-2#=X ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- Y-2#=X, [X,Y] in 7..9'), nl, '$pj_reset', catch(( ( Y-2#=X, [X,Y] in 7..9 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_main' :- between(1, 11, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
