writeAndRepeat(N) :- write(N), nl.
writeAndRepeat(N) :- N > 1, N1 is N-1, writeAndRepeat(N1).

%?- writeAndRepeat(0)
%OUTPUT
%0
%
%OUTPUT
%YES
%NO

%?- writeAndRepeat(1)
%OUTPUT
%1
%
%OUTPUT
%YES
%NO

%?- writeAndRepeat(3)
%OUTPUT
%3
%
%OUTPUT
%YES
%OUTPUT
%2
%
%OUTPUT
%YES
%OUTPUT
%1
%
%OUTPUT
%YES
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- writeAndRepeat(0)'), nl, '$pj_reset', catch(( ( writeAndRepeat(0) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- writeAndRepeat(1)'), nl, '$pj_reset', catch(( ( writeAndRepeat(1) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- writeAndRepeat(3)'), nl, '$pj_reset', catch(( ( writeAndRepeat(3) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
