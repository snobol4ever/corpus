hanoi(N) :- move(N,left,centre,right).

move(0,_,_,_) :- !.
move(N,A,B,C) :-
  M is N-1,
  move(M,A,C,B), inform(A,B), move(M,C,B,A).

inform(X,Y) :-
  write([move,a,disc,from,the,X,pole,to,the,Y,pole]),
  nl.

%?- hanoi(3)
%OUTPUT
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%
%OUTPUT
%YES

%?- hanoi(5)
%OUTPUT
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,right,pole]
%[move,a,disc,from,the,centre,pole,to,the,right,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%[move,a,disc,from,the,right,pole,to,the,left,pole]
%[move,a,disc,from,the,right,pole,to,the,centre,pole]
%[move,a,disc,from,the,left,pole,to,the,centre,pole]
%
%OUTPUT
%YES

%?- hanoi(X)
% X=0

%?- hanoi(x)
%ERROR Cannot find arithmetic operator: x/0

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- hanoi(3)'), nl, '$pj_reset', catch(( ( hanoi(3) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- hanoi(5)'), nl, '$pj_reset', catch(( ( hanoi(5) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- hanoi(X)'), nl, '$pj_reset', catch(( ( hanoi(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- hanoi(x)'), nl, '$pj_reset', catch(( ( hanoi(x) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
