concatenate([],L,L).
concatenate([X|L1],L2,[X|L3]) :- concatenate(L1,L2,L3).

data([a,b,c]).
data([x,y,z]).
data([1,2,3]).

test1(Q) :- data(X), concatenate([q,w,e,r,t,y],X,Q).

test2(Q) :- data(X), data(D), concatenate(D,X,Q).

% TODO remove cut from both of these queries and confirm still determines if re-evaluation should succeed

%?- test1(Q), !
% Q=[q,w,e,r,t,y,a,b,c]
%NO

%?- test2(Q), !
% Q=[a,b,c,a,b,c]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test1(Q), !'), nl, '$pj_reset', catch(( ( test1(Q), ! ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test2(Q), !'), nl, '$pj_reset', catch(( ( test2(Q), ! ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
