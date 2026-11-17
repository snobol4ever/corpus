:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
%?- [X,Y] ins 1..3, X=Y
% X=1..3
% Y=1..3

%?- [X,Y] ins 1..3, X=Y, Y=2
% X=2
% Y=2

%FAIL [X,Y] ins 1..3, X=Y, Y=4

%?- X in 1..4, Y in 2..5, X=Y
% X=2..4
% Y=2..4

%FAIL X in 1..4, Y in 2..5, X=Y, X#=1

%?- X#=2, Y in 1..3, X=Y
% X=2
% Y=2

%?- X in 12..18, Y in 13..22, X#\=14, Y#\=16, X=Y
% X={13, 15, 17, 18}
% Y={13, 15, 17, 18}

%?- X in 1..4, Y=2, X=Y
% X=2
% Y=2

%FAIL X in 1..4, Y=5, X=Y

%FAIL X in 1..3, Y in 4..6, X=Y

%?- X in 1..4, f(X)=f(X)
% X=1..4

%?- X in 1..4, Y in 2..5, f(X)=f(Y)
% X=2..4
% Y=2..4
%FAIL X in 1..4, Y in 5..8, f(X)=f(Y)

%?- X in 1..5, Y in 4..9, f(X)=f(4), X=Y
% X=4
% Y=4
%?- X in 1..4, Y in 4..7, f(X)=f(2), f(5)=f(Y)
% X=2
% Y=5
%FAIL X in 1..4, f(X)=f(0)
%FAIL X in 1..4, f(5)=f(X)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- [X,Y] ins 1..3, X=Y'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..3, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- [X,Y] ins 1..3, X=Y, Y=2'), nl, '$pj_reset', catch(( ( [X,Y] ins 1..3, X=Y, Y=2 ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X in 1..4, Y in 2..5, X=Y'), nl, '$pj_reset', catch(( ( X in 1..4, Y in 2..5, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X#=2, Y in 1..3, X=Y'), nl, '$pj_reset', catch(( ( X#=2, Y in 1..3, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X in 12..18, Y in 13..22, X#\\=14, Y#\\=16, X=Y'), nl, '$pj_reset', catch(( ( X in 12..18, Y in 13..22, X#\=14, Y#\=16, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X in 1..4, Y=2, X=Y'), nl, '$pj_reset', catch(( ( X in 1..4, Y=2, X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- X in 1..4, f(X)=f(X)'), nl, '$pj_reset', catch(( ( X in 1..4, f(X)=f(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- X in 1..4, Y in 2..5, f(X)=f(Y)'), nl, '$pj_reset', catch(( ( X in 1..4, Y in 2..5, f(X)=f(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X in 1..5, Y in 4..9, f(X)=f(4), X=Y'), nl, '$pj_reset', catch(( ( X in 1..5, Y in 4..9, f(X)=f(4), X=Y ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X in 1..4, Y in 4..7, f(X)=f(2), f(5)=f(Y)'), nl, '$pj_reset', catch(( ( X in 1..4, Y in 4..7, f(X)=f(2), f(5)=f(Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_main' :- between(1, 10, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
