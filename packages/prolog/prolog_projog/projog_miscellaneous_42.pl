x([]).
x([[X|Xs]|Ys]) :- writef('%t %t', [X, Xs]), nl, x(Ys).

%?- x([[a,b,c],[q,w,e,r,t,y],[x,y,z]])
%OUTPUT
%a [b,c]
%q [w,e,r,t,y]
%x [y,z]
%
%OUTPUT
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x([[a,b,c],[q,w,e,r,t,y],[x,y,z]])'), nl, '$pj_reset', catch(( ( x([[a,b,c],[q,w,e,r,t,y],[x,y,z]]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
