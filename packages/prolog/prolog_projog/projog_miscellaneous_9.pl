test_repeat(N).
test_repeat(N) :- N > 1, N1 is N-1, test_repeat(N1).

%TRUE_NO test_repeat(1)

%?- test_repeat(2)
%YES
%YES
%NO

%?- test_repeat(3)
%YES
%YES
%YES
%NO

%?- test_repeat(7)
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%NO

% check conjunction backtracks arguments in second clause before retrying first
%?- test_repeat(2), var(X), X is 1
% X=1
% X=1
%NO

%?- test_repeat(2), var(X), X = 1
% X=1
% X=1
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test_repeat(2)'), nl, '$pj_reset', catch(( ( test_repeat(2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- test_repeat(3)'), nl, '$pj_reset', catch(( ( test_repeat(3) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- test_repeat(7)'), nl, '$pj_reset', catch(( ( test_repeat(7) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- test_repeat(2), var(X), X is 1'), nl, '$pj_reset', catch(( ( test_repeat(2), var(X), X is 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- test_repeat(2), var(X), X = 1'), nl, '$pj_reset', catch(( ( test_repeat(2), var(X), X = 1 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
