and(A,B) :- A, B.
or(A,B) :- A; B.
true(X) :- X.

%FAIL and(fail, fail)
%FAIL and(true, fail)
%FAIL and(fail, true)
%TRUE and(true, true)

%FAIL or(fail, fail)
%TRUE_NO or(true, fail)
%TRUE or(fail, true)
%?- or(true, true)
%YES
%YES

%?- X=true, X
% X=true

%FAIL X=fail, X

%FAIL true(fail)
%TRUE true(true)
%?- true(repeat(3))
%YES
%YES
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- or(true, true)'), nl, '$pj_reset', catch(( ( or(true, true) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X=true, X'), nl, '$pj_reset', catch(( ( X=true, X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- true(repeat(3))'), nl, '$pj_reset', catch(( ( true(repeat(3)) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
