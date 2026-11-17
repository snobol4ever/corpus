test3_1(X,X).

test3_2([a,b,c]).
test3_2([q,w,e]).
test3_2([x,y,z]).

test3_3(X) :- test3_2(Y), test3_1(X,Y).

%?- test3_3(X)
% X=[a,b,c]
% X=[q,w,e]
% X=[x,y,z]

%TRUE_NO test3_3([a,b,c])
%TRUE_NO test3_3([q,w,e])
%TRUE test3_3([x,y,z])
%?- test3_3([X,y,z])
% X=x
%FAIL test3_3([X,y,X])

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test3_3(X)'), nl, '$pj_reset', catch(( ( test3_3(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test3_3([X,y,z])'), nl, '$pj_reset', catch(( ( test3_3([X,y,z]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
