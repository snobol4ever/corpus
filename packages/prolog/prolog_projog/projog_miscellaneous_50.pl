x(X,Y) :- Y is X + 0.5.
x(X,Y) :- Y is X - 0.5.
x(X,Y) :- Y is X * 0.5.
x(X,Y) :- Y is X / 0.5.
x(X,Y) :- Y is 0.25 + X.
x(X,Y) :- Y is 25 + X.
x(X,Y) :- Y is X + X.
x(X,Y) :- Y is 0.5 + 0.5.
x(X,Y) :- Y is 0.5 + 2.
x(X,Y) :- Y is 0.5 + 0.5 + X.
x(X,Y) :- Y is 0.5 + 7 + X.

%?- x(2,Y)
% Y=2.5
% Y=1.5
% Y=1.0
% Y=4.0
% Y=2.25
% Y=27
% Y=4
% Y=1.0
% Y=2.5
% Y=3.0
% Y=9.5

%?- x(2.0,Y)
% Y=2.5
% Y=1.5
% Y=1.0
% Y=4.0
% Y=2.25
% Y=27.0
% Y=4.0
% Y=1.0
% Y=2.5
% Y=3.0
% Y=9.5

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(2,Y)'), nl, '$pj_reset', catch(( ( x(2,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x(2.0,Y)'), nl, '$pj_reset', catch(( ( x(2.0,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
