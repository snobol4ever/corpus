% argument indexing avoids trying to find alternative solutions
% first argument of p/3 is indexable as all values in that position are immutable

p(a, X, Y) :- Y is X+1.
p(b, X, Y) :- Y is X-1.
p(c, X, Y) :- Y is X*2.

%?- p(a,5,Y)
% Y=6

%?- p(b,5,Y)
% Y=4

%?- p(c,5,Y)
% Y=10

%FAIL p(z,5,Y)

%?- p(X,5,Y)
% X=a
% Y=6
% X=b
% Y=4
% X=c
% Y=10

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(a,5,Y)'), nl, '$pj_reset', catch(( ( p(a,5,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(b,5,Y)'), nl, '$pj_reset', catch(( ( p(b,5,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(c,5,Y)'), nl, '$pj_reset', catch(( ( p(c,5,Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(X,5,Y)'), nl, '$pj_reset', catch(( ( p(X,5,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
