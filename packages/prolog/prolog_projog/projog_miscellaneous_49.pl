x([q(X,Y)|Xs]).
x([X|Xs]) :- x(Xs).

y([q(X,Y)|Xs],[q(X1,Y1)|Xs]) :- Y > 0, Y1 is Y - 1.
y([X|Xs],[X|Xs1]) :- y(Xs,Xs1).

%?- x([a,b,q(a,b),c,d,e])
%YES
%NO
%FAIL x([a,b,t(a,b),c,d,e])

%?- y([a,b,q(a,5),c,d,e], [a,b,q(a,4),c,d,e])
%YES
%NO
%FAIL y([a,b,q(a,5),c,d,e], [a,b,q(a,6),c,d,e])
%FAIL y([a,b,q(a,0),c,d,e], [a,b,q(a,-1),c,d,e])
%?- y([a,b,q(a,5),c,d,e], [a,b,q(a,X),c,d,e])
% X=4
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x([a,b,q(a,b),c,d,e])'), nl, '$pj_reset', catch(( ( x([a,b,q(a,b),c,d,e]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- y([a,b,q(a,5),c,d,e], [a,b,q(a,4),c,d,e])'), nl, '$pj_reset', catch(( ( y([a,b,q(a,5),c,d,e], [a,b,q(a,4),c,d,e]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- y([a,b,q(a,5),c,d,e], [a,b,q(a,X),c,d,e])'), nl, '$pj_reset', catch(( ( y([a,b,q(a,5),c,d,e], [a,b,q(a,X),c,d,e]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
