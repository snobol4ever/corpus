p(p(1)).
p(p(2)).
p(p(3)).
x(L) :- L = p(X), p(L).

%?- x(A)
% A=p(1)
% A=p(2)
% A=p(3)

%TRUE x(p(1))
%TRUE x(p(2))
%TRUE x(p(3))

%FAIL x(p(4))

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(A)'), nl, '$pj_reset', catch(( ( x(A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
