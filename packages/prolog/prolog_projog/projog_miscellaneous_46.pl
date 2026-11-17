x(V) :- V = [a|_].
x(V) :- V = [_|b].
x(V) :- V = [a|b].
x(V) :- V = [X/Y|_].
x(V) :- V = [_|p(X,Y)].

%?- x(W)
% W=[a|_]
% W=[_|b]
% W=[a|b]
% W=[X / Y|_]
% W=[_|p(X, Y)]

y :- [a|b] = [a|a].
y :- [b|a] = [a|a].
y :- [a|a] = [b|a].
y :- [a|a] = [a|b].
y :- [b|a] = [a|b].
%FAIL y

z :- [a|b] = [a|b].
%TRUE z

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- x(W)'), nl, '$pj_reset', catch(( ( x(W) ), write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
