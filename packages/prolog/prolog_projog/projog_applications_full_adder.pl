full_adder(Input1,Input2,Input3,Output1,Output2) :-
  Output1 #<==> (Input1 #\ Input2) #\ Input3,
  Output2 #<==> (Input1 #/\ Input2) #\/ (Input3 #/\ (Input1 #\ Input2)).

%?- full_adder(1,1,1,Output1,Output2)
% Output1 = 1
% Output2 = 1

%?- full_adder(1,1,0,Output1,Output2)
% Output1 = 0
% Output2 = 1

%?- full_adder(1,0,1,Output1,Output2)
% Output1 = 0
% Output2 = 1

%?- full_adder(0,1,1,Output1,Output2)
% Output1 = 0
% Output2 = 1

%?- full_adder(1,0,0,Output1,Output2)
% Output1 = 1
% Output2 = 0

%?- full_adder(0,1,0,Output1,Output2)
% Output1 = 1
% Output2 = 0

%?- full_adder(0,0,1,Output1,Output2)
% Output1 = 1
% Output2 = 0

%?- full_adder(0,0,0,Output1,Output2)
% Output1 = 0
% Output2 = 0

%?- full_adder(0,Input2,Input3,Output1,1)
% Input2 = 1
% Input3 = 1
% Output1 = 0

%?- full_adder(Input1,0,Input3,Output1,1)
% Input1 = 1
% Input3 = 1
% Output1 = 0

%?- full_adder(Input1,Input2,0,Output1,1)
% Input1 = 1
% Input2 = 1
% Output1 = 0

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- full_adder(1,1,1,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(1,1,1,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- full_adder(1,1,0,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(1,1,0,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- full_adder(1,0,1,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(1,0,1,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- full_adder(0,1,1,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(0,1,1,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- full_adder(1,0,0,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(1,0,0,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- full_adder(0,1,0,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(0,1,0,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- full_adder(0,0,1,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(0,0,1,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- full_adder(0,0,0,Output1,Output2)'), nl, '$pj_reset', catch(( ( full_adder(0,0,0,Output1,Output2) ), write('Output1 = '), writeq(Output1), nl, write('Output2 = '), writeq(Output2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- full_adder(0,Input2,Input3,Output1,1)'), nl, '$pj_reset', catch(( ( full_adder(0,Input2,Input3,Output1,1) ), write('Input2 = '), writeq(Input2), nl, write('Input3 = '), writeq(Input3), nl, write('Output1 = '), writeq(Output1), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- full_adder(Input1,0,Input3,Output1,1)'), nl, '$pj_reset', catch(( ( full_adder(Input1,0,Input3,Output1,1) ), write('Input1 = '), writeq(Input1), nl, write('Input3 = '), writeq(Input3), nl, write('Output1 = '), writeq(Output1), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- full_adder(Input1,Input2,0,Output1,1)'), nl, '$pj_reset', catch(( ( full_adder(Input1,Input2,0,Output1,1) ), write('Input1 = '), writeq(Input1), nl, write('Input2 = '), writeq(Input2), nl, write('Output1 = '), writeq(Output1), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_main' :- between(1, 11, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
