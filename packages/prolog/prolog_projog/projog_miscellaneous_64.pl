x([a,b]).
x([a,b,c]).
x([a,b,c,d]).
x([a]).

test(List1,List2) :-
  x(List1),
  length(List1, Length1),
  Length1 > 2,
  x(List2),
  length(List2, Length2),
  Length2 > 1.

%?- test(List1, List2)
% List1=[a,b,c]
% List2=[a,b]
% List1=[a,b,c]
% List2=[a,b,c]
% List1=[a,b,c]
% List2=[a,b,c,d]
% List1=[a,b,c,d]
% List2=[a,b]
% List1=[a,b,c,d]
% List2=[a,b,c]
% List1=[a,b,c,d]
% List2=[a,b,c,d]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- test(List1, List2)'), nl, '$pj_reset', catch(( ( test(List1, List2) ), write('List1 = '), writeq(List1), nl, write('List2 = '), writeq(List2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
