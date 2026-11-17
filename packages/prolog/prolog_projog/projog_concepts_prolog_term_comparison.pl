% Examples of comparing a uninstantiated variable to a whole number.

%?- X @< 2
% X=UNINSTANTIATED VARIABLE

%FAIL 2 @< X

%?- X @=< 2
% X=UNINSTANTIATED VARIABLE

%FAIL 2 @=< X

%FAIL X @> 2

%?- 2 @> X
% X=UNINSTANTIATED VARIABLE

%FAIL X @>= 2

%?- 2 @>= X
% X=UNINSTANTIATED VARIABLE

% Examples of comparing a uninstantiated variable to an atom.

%?- X @< atom
% X=UNINSTANTIATED VARIABLE

%FAIL atom @< X

%?- X @=< atom
% X=UNINSTANTIATED VARIABLE

%FAIL atom @=< X

%FAIL X @> atom

%?- atom @> X
% X=UNINSTANTIATED VARIABLE

%FAIL X @>= atom

%?- atom @>= X
% X=UNINSTANTIATED VARIABLE

% Examples of comparing a uninstantiated variable to a structure.

%?- X @< structure(a,b,c)
% X=UNINSTANTIATED VARIABLE

%FAIL structure(a,b,c) @< X

%?- X @=< structure(a,b,c)
% X=UNINSTANTIATED VARIABLE

%FAIL structure(a,b,c) @=< X

%FAIL X @> structure(a,b,c)

%?- structure(a,b,c) @> X
% X=UNINSTANTIATED VARIABLE

%FAIL X @>= structure(a,b,c)

%?- structure(a,b,c) @>= X
% X=UNINSTANTIATED VARIABLE

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X @< 2'), nl, '$pj_reset', catch(( ( X @< 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X @=< 2'), nl, '$pj_reset', catch(( ( X @=< 2 ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- 2 @> X'), nl, '$pj_reset', catch(( ( 2 @> X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- 2 @>= X'), nl, '$pj_reset', catch(( ( 2 @>= X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- X @< atom'), nl, '$pj_reset', catch(( ( X @< atom ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- X @=< atom'), nl, '$pj_reset', catch(( ( X @=< atom ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- atom @> X'), nl, '$pj_reset', catch(( ( atom @> X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- atom @>= X'), nl, '$pj_reset', catch(( ( atom @>= X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- X @< structure(a,b,c)'), nl, '$pj_reset', catch(( ( X @< structure(a,b,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- X @=< structure(a,b,c)'), nl, '$pj_reset', catch(( ( X @=< structure(a,b,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- structure(a,b,c) @> X'), nl, '$pj_reset', catch(( ( structure(a,b,c) @> X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- structure(a,b,c) @>= X'), nl, '$pj_reset', catch(( ( structure(a,b,c) @>= X ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_main' :- between(1, 12, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
