p(X,Y,Z).

%TRUE p(a,a,a)
%TRUE p(b,a,a)
%TRUE p(a,b,a)
%TRUE p(a,a,b)
%TRUE p(a,b,c)
%TRUE p(x,y,z)

%?- p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE

%?- D=x(A,B,C), p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
% D=x(A, B, C)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(A,B,C)'), nl, '$pj_reset', catch(( ( p(A,B,C) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- D=x(A,B,C), p(A,B,C)'), nl, '$pj_reset', catch(( ( D=x(A,B,C), p(A,B,C) ), write('D = '), writeq(D), nl, write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_main' :- between(1, 2, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
