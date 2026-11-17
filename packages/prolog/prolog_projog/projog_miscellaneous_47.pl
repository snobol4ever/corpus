x(X,L) :- L = [X|_].
x(X,L) :- L = [_|X].
x(X,L) :- L = [X|X].

%?- x(a,L)
% L=[a|_]
% L=[_|a]
% L=[a|a]

%?- x(a,[X,b])
% X=a
%NO

%?- x(X,[a|a])
% X=a
% X=a
% X=a

%FAIL x(a,[b|c])

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(a,L)'), nl, '$pj_reset', catch(( ( x(a,L) ), write('L = '), writeq(L), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- x(a,[X,b])'), nl, '$pj_reset', catch(( ( x(a,[X,b]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- x(X,[a|a])'), nl, '$pj_reset', catch(( ( x(X,[a|a]) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
