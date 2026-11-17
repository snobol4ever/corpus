%?- X = p(_), X = p(1)
% X=p(1)

%FAIL X = p(_), X = p(1), X = p(2)

%?- X = p(_), X = p(1), Y=p(_), Y=p(2)
% X=p(1)
% Y=p(2)

%TRUE p(_,_,_)=p(1,2,3)

x(X,Y) :- X = p(_), X = p(1), Y=p(_), Y=p(2).

%?- x(X,Y)
% X=p(1)
% Y=p(2)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X = p(_), X = p(1)'), nl, '$pj_reset', catch(( ( X = p(_), X = p(1) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X = p(_), X = p(1), Y=p(_), Y=p(2)'), nl, '$pj_reset', catch(( ( X = p(_), X = p(1), Y=p(_), Y=p(2) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x(X,Y)'), nl, '$pj_reset', catch(( ( x(X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
