x([X], X).
x([X|Xs], Y) :- x(Xs, Y).

%?- x([a,b,c], Y)
% Y=c
%NO 
%?- x([a,b,c], c)
%YES
%NO
%FAIL x([a,b,c], a)
%FAIL x([a,b,c], b)
%FAIL x([a,b,c], d)
%FAIL x([], Y)
%FAIL x(c, Y)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x([a,b,c], Y)'), nl, '$pj_reset', catch(( ( x([a,b,c], Y) ), write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x([a,b,c], c)'), nl, '$pj_reset', catch(( ( x([a,b,c], c) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
