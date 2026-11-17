a(Z) :- write(Z), nl, X is Z + 1, b(X).

b(Z) :- Z < 7, a(Z).

%?- b(2)
%OUTPUT
%2
%3
%4
%5
%6
%
%OUTPUT
%NO

w(Z) :- write(Z), nl, X is Z + 1, x(X).
x(Z) :- X is Z + 0.5, z(X).
z(Z) :- Z < 7, w(Z).

%?- z(0.25)
%OUTPUT
%0.25
%1.75
%3.25
%4.75
%6.25
%
%OUTPUT
%NO

q(Z) :- write('q'), nl, r(Z).
r(Z) :- write('r'), nl, z(Z).

%?- q(0.25)
%OUTPUT
%q
%r
%0.25
%1.75
%3.25
%4.75
%6.25
%
%OUTPUT
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- b(2)'), nl, '$pj_reset', catch(( ( b(2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- z(0.25)'), nl, '$pj_reset', catch(( ( z(0.25) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- q(0.25)'), nl, '$pj_reset', catch(( ( q(0.25) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
