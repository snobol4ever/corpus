%?- X=a:b
% X=a : b

%?- X = a : b
% X=a : b

%?- X=q:w:e:r:t:y
% X=q : w : e : r : t : y

%?- X=q:w:e/r:t:y/u:i:o
% X=q : w : e / r : t : y / u : i : o

%?- write(q:w:e/r:t:y/u:i:o)
%OUTPUT q : w : e / r : t : y / u : i : o
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X=a:b'), nl, '$pj_reset', catch(( ( X=a:b ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X = a : b'), nl, '$pj_reset', catch(( ( X = a : b ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X=q:w:e:r:t:y'), nl, '$pj_reset', catch(( ( X=q:w:e:r:t:y ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- X=q:w:e/r:t:y/u:i:o'), nl, '$pj_reset', catch(( ( X=q:w:e/r:t:y/u:i:o ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- write(q:w:e/r:t:y/u:i:o)'), nl, '$pj_reset', catch(( ( write(q:w:e/r:t:y/u:i:o) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
