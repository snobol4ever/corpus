:- use_module(library(clpfd)).  % the grader: Projog provides CLP(FD) to every program; swipl loads it by this line
% A+B+C=17
% * + +
% D+E+F=77
% + + +
% G+H+I=10
% = = =
% 1 1 1
% 1 9 6
set_square(A,B,C,D,E,F,G,H,I) :-
  Vars = [A,B,C,D,E,F,G,H,I],
  Vars ins 1..9,
  all_different(Vars),
  17 #= A+B+C,
  77 #= (D+E)*F,
  10 #= G+H+I,
  11 #= (A*D)+G,
  19 #= B+E+H,
  16 #= C+F+I,
  label(Vars).

%?- set_square(A,B,C,D,E,F,G,H,I)
% A = 3
% B = 6
% C = 8
% D = 2
% E = 9
% F = 7
% G = 5
% H = 4
% I = 1
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- set_square(A,B,C,D,E,F,G,H,I)'), nl, '$pj_reset', catch(( ( set_square(A,B,C,D,E,F,G,H,I) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write('G = '), writeq(G), nl, write('H = '), writeq(H), nl, write('I = '), writeq(I), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
