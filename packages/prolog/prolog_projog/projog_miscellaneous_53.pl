y0(X) :- X > 5, !.
y0(X) :- (true,!;fail), write(X), X1 is X+1, y0(X1).

%?- y0(1)
%OUTPUT 12345
%YES
%NO

y1(X, Coll) :- X > 5, !.
y1(X, Coll) :- 
  (memberchk(x(X),Coll), !, write(X); write(' ')),
  X1 is X+1, y1(X1,Coll).  

%?- y1(1, [x(0), x(1), x(2), x(4), x(5), x(6)])
%OUTPUT 12 45
%YES
%NO

y2(X, Coll) :- X > 5, !.
y2(X, Coll) :- 
  true, (memberchk(x(X),Coll), !, write(X); write(' ')),
  X1 is X+1, y2(X1,Coll).

%?- y2(1, [x(0), x(1), x(2), x(4), x(5), x(6)])
%OUTPUT 12 45
%YES
%NO

y3(X, Coll) :- X > 5 , !.
y3(X, Coll) :- memberchk(x(X), Coll) , ! , write(X) ; write(' ') , X1 is X + 1 , y3(X1, Coll).

%?- y3(1, [x(0), x(1), x(2), x(4), x(5), x(6)])
%OUTPUT 1
%YES
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- y0(1)'), nl, '$pj_reset', catch(( ( y0(1) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- y1(1, [x(0), x(1), x(2), x(4), x(5), x(6)])'), nl, '$pj_reset', catch(( ( y1(1, [x(0), x(1), x(2), x(4), x(5), x(6)]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- y2(1, [x(0), x(1), x(2), x(4), x(5), x(6)])'), nl, '$pj_reset', catch(( ( y2(1, [x(0), x(1), x(2), x(4), x(5), x(6)]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- y3(1, [x(0), x(1), x(2), x(4), x(5), x(6)])'), nl, '$pj_reset', catch(( ( y3(1, [x(0), x(1), x(2), x(4), x(5), x(6)]) ), write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_main' :- between(1, 4, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
