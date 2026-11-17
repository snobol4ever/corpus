x(A,B,C) :- C=A+B.
x(A,B,C) :- C=A-B.
x(A,B,C) :- C=A*B.
x(A,B,C) :- C=A/B.

a(A,B,C) :- x(A,B,D), C is D.

b(A,C) :- a(A,A,C).

%?- b(5,A)
% A=10
% A=0
% A=25
% A=1

%?- b(26//4-1,A)
% A=10
% A=0
% A=25
% A=1

%?- b(5.5,A)
% A=11.0
% A=0.0
% A=30.25
% A=1.0

%?- b(-(3*7.5),A)
% A=-45.0
% A=0.0
% A=506.25
% A=1.0

%?- a(9,3,A)
% A=12
% A=6
% A=27
% A=3

%?- a(10,2.5,A)
% A=12.5
% A=7.5
% A=25.0
% A=4.0

%?- a(25.5,12,A)
% A=37.5
% A=13.5
% A=306.0
% A=2.125

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- b(5,A)'), nl, '$pj_reset', catch(( ( b(5,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- b(26//4-1,A)'), nl, '$pj_reset', catch(( ( b(26//4-1,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- b(5.5,A)'), nl, '$pj_reset', catch(( ( b(5.5,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- b(-(3*7.5),A)'), nl, '$pj_reset', catch(( ( b(-(3*7.5),A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- a(9,3,A)'), nl, '$pj_reset', catch(( ( a(9,3,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- a(10,2.5,A)'), nl, '$pj_reset', catch(( ( a(10,2.5,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- a(25.5,12,A)'), nl, '$pj_reset', catch(( ( a(25.5,12,A) ), write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
