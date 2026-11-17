solve(X) :-
  X = [A1,A2,A3,A4,A5,A6],
  X ins 0..1,
  A1 #<==> 5 #= A2+A3+A4+A5+A6,    % All of the below
  A2 #<==> 0 #= A3+A4+A5+A6,       % None of the below
  A3 #<==> 2 #= A1+A2,             % All of the above
  A4 #<==> 1 #= A1+A2+A3,          % One of the above
  A5 #<==> 0 #= A1+A2+A3+A4,       % None of the above
  A6 #<==> 0 #= A1+A2+A3+A4+A5,    % None of the above
  label(X).

%?- solve(X)
% X = [0,0,0,0,1,0]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- solve(X)'), nl, '$pj_reset', catch(( ( solve(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
