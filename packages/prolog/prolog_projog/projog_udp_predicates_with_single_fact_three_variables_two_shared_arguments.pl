p(X,Y,X).

%FAIL p(a,b,c)
%FAIL p(a,a,c)
%FAIL p(a,c,c)

%TRUE p(a,a,a)
%TRUE p(a,b,a)
%TRUE p(x,y,x)

%FAIL p(a,c,c)

%?- p(a,b,Q)
% Q=a

%?- p(Q,b,a)
% Q=a

%?- p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE

%?- p(A,B,C), A=7
% A=7
% B=UNINSTANTIATED VARIABLE
% C=7

%?- D=x(A,B,C), p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
% D=x(X, Y, X)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(a,b,Q)'), nl, '$pj_reset', catch(( ( p(a,b,Q) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(Q,b,a)'), nl, '$pj_reset', catch(( ( p(Q,b,a) ), write('Q = '), writeq(Q), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(A,B,C)'), nl, '$pj_reset', catch(( ( p(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(A,B,C), A=7'), nl, '$pj_reset', catch(( ( p(A,B,C), A=7 ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- D=x(A,B,C), p(A,B,C)'), nl, '$pj_reset', catch(( ( D=x(A,B,C), p(A,B,C) ), write('D = '), writeq(D), nl, write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_main' :- between(1, 5, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
