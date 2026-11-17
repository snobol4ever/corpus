e(X,Y, Z) :- X = 9223372036854775807, Y is X+Z.
e(X,Y, Z) :- X = -9223372036854775808, Y is X+Z.

%?- e(X, Y, 1)
% X=9223372036854775807
% Y=-9223372036854775808
% X=-9223372036854775808
% Y=-9223372036854775807

%?- e(X, Y, -1)
% X=9223372036854775807
% Y=9223372036854775806
% X=-9223372036854775808
% Y=9223372036854775807

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- e(X, Y, 1)'), nl, '$pj_reset', catch(( ( e(X, Y, 1) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- e(X, Y, -1)'), nl, '$pj_reset', catch(( ( e(X, Y, -1) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
