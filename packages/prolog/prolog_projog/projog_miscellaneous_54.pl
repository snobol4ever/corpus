a.

%TRUE a

b(_).

%TRUE b(1)

c(_,_).

%TRUE c(1,2)

d(_,_,_,_,_,_,_,_,_).

%TRUE d(1,2,3,4,5,6,7,8,9)

e.
e.

%?- e
%YES
%YES

f(_).
f(_).

%?- f(1)
%YES
%YES

g(_,_).
g(_,_).

%?- g(1,2)
%YES
%YES

h(_,_,_,_,_,_,_,_,_).
h(_,_,_,_,_,_,_,_,_).

%?- h(1,2,3,4,5,6,7,8,9)
%YES
%YES

i.
i.
i.
i.
i.
i.
i.
i.
i.

%?- i
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%YES
%YES

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- e'), nl, '$pj_reset', catch(( ( e ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- f(1)'), nl, '$pj_reset', catch(( ( f(1) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- g(1,2)'), nl, '$pj_reset', catch(( ( g(1,2) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- h(1,2,3,4,5,6,7,8,9)'), nl, '$pj_reset', catch(( ( h(1,2,3,4,5,6,7,8,9) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- i'), nl, '$pj_reset', catch(( ( i ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
