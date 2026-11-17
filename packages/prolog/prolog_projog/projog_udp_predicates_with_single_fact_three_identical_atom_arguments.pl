p(a,a,a).

%FAIL p(b,a,a)
%FAIL p(a,b,a)
%FAIL p(a,a,b)
%FAIL p(X,a,b)
%FAIL p(X,b,a)
%FAIL p(a,X,b)
%FAIL p(b,X,a)
%FAIL p(a,b,X)
%FAIL p(b,a,X)

%?- p(X,Y,Z)
% X=a
% Y=a
% Z=a

%?- p(X,X,X)
% X=a

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(X,Y,Z)'), nl, '$pj_reset', catch(( ( p(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X,X,X)'), nl, '$pj_reset', catch(( ( p(X,X,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
