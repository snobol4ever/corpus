a(X,Y,Z):- 
 repeat(3),
 X='text in "double quotes"', write(X), nl,
 Y='text in ''single quote''', write(Y), nl,
 Z='!"$%^&*()-_+-=[]{}:;@''#~?/.>,<\\|`', write(Z), nl.

%?- a(X,Y,Z), !
%OUTPUT
%text in "double quotes"
%text in 'single quote'
%!"$%^&*()-_+-=[]{}:;@'#~?/.>,<\|`
%
%OUTPUT
% X=text in "double quotes"
% Y=text in 'single quote'
% Z=!"$%^&*()-_+-=[]{}:;@'#~?/.>,<\|`
%NO

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- a(X,Y,Z), !'), nl, '$pj_reset', catch(( ( a(X,Y,Z), ! ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_main' :- between(1, 1, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
