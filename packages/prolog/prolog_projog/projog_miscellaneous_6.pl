test2_1(a).
test2_1(b).
test2_1(c).

test2_2(X, X) :- test2_1(_).
%FAIL test2_2(x,y)
%?- test2_2(X,X)
% X=UNINSTANTIATED VARIABLE
% X=UNINSTANTIATED VARIABLE
% X=UNINSTANTIATED VARIABLE

%?- test2_2(x,x)
%YES
%YES
%YES

%?- test2_2(x,X)
% X=x
% X=x
% X=x

%?- test2_2(X,y)
% X=y
% X=y
% X=y

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test2_2(X,X)'), nl, '$pj_reset', catch(( ( test2_2(X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test2_2(x,x)'), nl, '$pj_reset', catch(( ( test2_2(x,x) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test2_2(x,X)'), nl, '$pj_reset', catch(( ( test2_2(x,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test2_2(X,y)'), nl, '$pj_reset', catch(( ( test2_2(X,y) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
