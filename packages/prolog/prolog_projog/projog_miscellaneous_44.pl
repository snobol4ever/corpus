% test recursive functions that contain cut (!) #88

x(X,Y,Z) :- Z is X+Y.
x(X,5,Z) :- x(X, 7, Z), Z<9.
x(X,Y,Z) :- Y<8, Q=Y+1, x(X,Q,Z).

y(X,Y,Z) :- Z is X+Y.
y(X,5,Z) :- !, y(X, 7, Z), Z<9.
y(X,Y,Z) :- Y<8, Q=Y+1, y(X,Q,Z).

%?- x(1,5,Z)
% Z=6
% Z=8
% Z=7
% Z=8
% Z=9
%NO

%?- y(1,5,Z)
% Z=6
% Z=8
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(1,5,Z)'), nl, '$pj_reset', catch(( ( x(1,5,Z) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- y(1,5,Z)'), nl, '$pj_reset', catch(( ( y(1,5,Z) ), write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
