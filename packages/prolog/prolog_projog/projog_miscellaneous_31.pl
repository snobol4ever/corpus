a :- true, !, true, repeat(3).
a :- true.

%?- a
%YES
%YES
%YES
%NO

b :- true, repeat(3), !, repeat(3).
b :- true.

%?- b
%YES
%YES
%YES
%NO

c1 :- true, true, !.
c1 :- true.

c2 :- true, !, true.
c2 :- true.

c3 :- !, true, true.
c3 :- true.

c4 :- !, true, !, true.
c4 :- true.

c5 :- true, !, true, !.
c5 :- true.

c6 :- !, true, true, !.
c6 :- true.

c7 :- !, true, !, true, !.
c7 :- true.

c8 :- true, !.
c8 :- true.

c9 :- !, true.
c9 :- true.

c10 :- !.
c10 :- true.

%TRUE c1
%TRUE c2
%TRUE c3
%TRUE c4
%TRUE c5
%TRUE c6
%TRUE c7
%TRUE c8
%TRUE c9
%TRUE c10

d :- true, 1>2, !.
d :- true.

%TRUE d

e :- true, true, !, 1>2.
e :- true.

%FAIL e

f :- true, fail, !, 1>2.
f :- true.

%TRUE f

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- a'), nl, '$pj_reset', catch(( ( a ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- b'), nl, '$pj_reset', catch(( ( b ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
