p(X,b,c).

%FAIL p(X,b,b)
%FAIL p(X,c,c)
%FAIL p(X,y,z)
%FAIL p(x,y,z)
%FAIL p(b,c,b)
%FAIL p(c,b,b)

%TRUE p(a,b,c)
%TRUE p(z,b,c)

%?- p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=b
% C=c

%?- p(Q,b,c)
% Q=UNINSTANTIATED VARIABLE

%?- p(Q,b,c),W=[Q]
% Q=UNINSTANTIATED VARIABLE
% W=[X]

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(A,B,C)'), nl, '$pj_reset', catch(( ( p(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(Q,b,c)'), nl, '$pj_reset', catch(( ( p(Q,b,c) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(Q,b,c),W=[Q]'), nl, '$pj_reset', catch(( ( p(Q,b,c),W=[Q] ), write('Q = '), writeq(Q), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
