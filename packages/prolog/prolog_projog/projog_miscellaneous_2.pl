% simple example of query of an implication giving many results
%?- father(C,F)
% F=tom
% C=harry
% F=fred
% C=john
% F=fred
% C=mary
%?- parent(C,M,F)
% M=ann
% F=fred
% C=john
% M=ann
% F=fred
% C=mary
% M=jane
% F=tom
% C=harry

female(mary).
mother(john,ann).
mother(mary,ann).
mother(harry,jane).
father(harry,tom).
father(john,fred).
father(mary,fred).
parent(C,M,F) :- mother(C,M),father(C,F).

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- father(C,F)'), nl, '$pj_reset', catch(( ( father(C,F) ), write('C = '), writeq(C), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- parent(C,M,F)'), nl, '$pj_reset', catch(( ( parent(C,M,F) ), write('C = '), writeq(C), nl, write('M = '), writeq(M), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
