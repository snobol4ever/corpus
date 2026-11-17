split(L,L1,L2) :- append(L1,L2,L), L1 = [_|_], L2 = [_|_].

%?- split([a,b,c,d,e],A,B)
% A=[a]
% B=[b,c,d,e]
% A=[a,b]
% B=[c,d,e]
% A=[a,b,c]
% B=[d,e]
% A=[a,b,c,d]
% B=[e]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- split([a,b,c,d,e],A,B)'), nl, '$pj_reset', catch(( ( split([a,b,c,d,e],A,B) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
