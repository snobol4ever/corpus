p(a,X,c).

%FAIL p(a,X,a)
%FAIL p(c,X,c)
%FAIL p(x,X,z)
%FAIL p(x,y,z)
%FAIL p(a,c,a)
%FAIL p(c,a,c)

%TRUE p(a,a,c)
%TRUE p(a,c,c)
%TRUE p(a,b,c)
%TRUE p(a,z,c)

%?- p(A,B,C)
% A=a
% B=UNINSTANTIATED VARIABLE
% C=c

%?- p(a,Q,c)
% Q=UNINSTANTIATED VARIABLE

%?- p(a,Q,c),W=[Q]
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
'$pj_q'(2) :- write('?- p(a,Q,c)'), nl, '$pj_reset', catch(( ( p(a,Q,c) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(a,Q,c),W=[Q]'), nl, '$pj_reset', catch(( ( p(a,Q,c),W=[Q] ), write('Q = '), writeq(Q), nl, write('W = '), writeq(W), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_main' :- between(1, 3, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
