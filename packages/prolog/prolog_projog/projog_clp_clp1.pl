:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [Y,Z] ins 1..3, X in 1..2, Y#=X+2, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z]), Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, Y#=X+2, X in 1..2, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z]), X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2, X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2, Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z])
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- Y#=X+2, all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), X in 1..2, Y#=X+2, [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3, Y#=X+2
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), Y#=X+2, X in 1..2, [Y,Z] ins 1..3
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3, X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2, X in 1..2
% X = 1
% Y = 3
% Z = 2

%?- all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2, Y#=X+2
% X = 1
% Y = 3
% Z = 2

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [Y,Z] ins 1..3, X in 1..2, Y#=X+2, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, X in 1..2, Y#=X+2, all_different([X,Y,Z]) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z]), Y#=X+2'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z]), Y#=X+2 ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- [Y,Z] ins 1..3, Y#=X+2, X in 1..2, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, Y#=X+2, X in 1..2, all_different([X,Y,Z]) ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z]), X in 1..2'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z]), X in 1..2 ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2, X in 1..2'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2, X in 1..2 ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2, Y#=X+2'), nl, '$pj_reset', catch(( ( [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2, Y#=X+2 ), write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X in 1..2, [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( X in 1..2, [Y,Z] ins 1..3, Y#=X+2, all_different([X,Y,Z]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2'), nl, '$pj_reset', catch(( ( X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z]), Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X in 1..2, Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( X in 1..2, Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z]) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X in 1..2, Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( X in 1..2, Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- X in 1..2, all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( X in 1..2, all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2'), nl, '$pj_reset', catch(( ( X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- Y#=X+2, X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( Y#=X+2, X in 1..2, [Y,Z] ins 1..3, all_different([X,Y,Z]) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- Y#=X+2, X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( Y#=X+2, X in 1..2, all_different([X,Y,Z]), [Y,Z] ins 1..3 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- Y#=X+2, [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z])'), nl, '$pj_reset', catch(( ( Y#=X+2, [Y,Z] ins 1..3, X in 1..2, all_different([X,Y,Z]) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2'), nl, '$pj_reset', catch(( ( Y#=X+2, [Y,Z] ins 1..3, all_different([X,Y,Z]), X in 1..2 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2'), nl, '$pj_reset', catch(( ( Y#=X+2, all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- Y#=X+2, all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( Y#=X+2, all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3 ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- all_different([X,Y,Z]), X in 1..2, Y#=X+2, [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), X in 1..2, Y#=X+2, [Y,Z] ins 1..3 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3, Y#=X+2'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), X in 1..2, [Y,Z] ins 1..3, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- all_different([X,Y,Z]), Y#=X+2, X in 1..2, [Y,Z] ins 1..3'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), Y#=X+2, X in 1..2, [Y,Z] ins 1..3 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3, X in 1..2'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), Y#=X+2, [Y,Z] ins 1..3, X in 1..2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2, X in 1..2'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), [Y,Z] ins 1..3, Y#=X+2, X in 1..2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2, Y#=X+2'), nl, '$pj_reset', catch(( ( all_different([X,Y,Z]), [Y,Z] ins 1..3, X in 1..2, Y#=X+2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_main' :- between(1, 24, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
