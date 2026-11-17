send_more_money([S,E,N,D],[M,O,R,E],[M,O,N,E,Y]) :-
  Vars = [S,E,N,D,M,O,R,Y],
  Vars ins 0..9,
  S #\= 0,
  M #\= 0,
  all_different(Vars),
  1000*S + 100*E + 10*N + D +
  1000*M + 100*O + 10*R + E #=
  10000*M + 1000*O + 100*N + 10*E + Y,
  label(Vars).

%?- send_more_money(Send,More,Money)
% Money = [1,0,6,5,2]
% More = [1,0,8,5]
% Send = [9,5,6,7]
%NO

donald_gerald_robert([D,O,N,A,L,D],[G,E,R,A,L,D],[R,O,B,E,R,T]) :-
  Vars = [D,O,N,A,L,G,E,R,B,T],
  Vars ins 0..9,
  all_different(Vars),
  100000*D + 10000*O + 1000*N + 100*A + 10*L + D +
  100000*G + 10000*E + 1000*R + 100*A + 10*L + D #=
  100000*R + 10000*O + 1000*B + 100*E + 10*R + T,
  label(Vars).

%?- donald_gerald_robert(Donald,Gerald,Robert)
% Donald = [5,2,6,4,8,5]
% Gerald = [1,9,7,4,8,5]
% Robert = [7,2,3,9,7,0]
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- send_more_money(Send,More,Money)'), nl, '$pj_reset', catch(( ( send_more_money(Send,More,Money) ), write('Send = '), writeq(Send), nl, write('More = '), writeq(More), nl, write('Money = '), writeq(Money), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- donald_gerald_robert(Donald,Gerald,Robert)'), nl, '$pj_reset', catch(( ( donald_gerald_robert(Donald,Gerald,Robert) ), write('Donald = '), writeq(Donald), nl, write('Gerald = '), writeq(Gerald), nl, write('Robert = '), writeq(Robert), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
