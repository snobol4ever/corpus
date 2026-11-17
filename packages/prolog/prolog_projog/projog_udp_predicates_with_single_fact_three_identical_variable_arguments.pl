p(X,X,X).

%FAIL p(b,a,a)
%FAIL p(a,b,a)
%FAIL p(a,a,b)

%TRUE p(a,a,a)
%TRUE p(b,b,b)

%FAIL p(a,a,b)

%?- p(p(X),Y,p(7))
% X=7
% Y=p(7)

%?- p(Y,p(X),p(7))
% X=7
% Y=p(7)

%?- p(Y,p(7),p(X))
% X=7
% Y=p(7)

%?- p(p(7),Y,p(X))
% X=7
% Y=p(7)

%?- p(p(7),p(X),Y)
% X=7
% Y=p(7)

%?- p(p(X),p(7),Y)
% X=7
% Y=p(7)

%?- D=x(A,B,C), p(A,B,C)
% A=UNINSTANTIATED VARIABLE
% B=UNINSTANTIATED VARIABLE
% C=UNINSTANTIATED VARIABLE
% D=x(X, X, X)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(p(X),Y,p(7))'), nl, '$pj_reset', catch(( ( p(p(X),Y,p(7)) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(Y,p(X),p(7))'), nl, '$pj_reset', catch(( ( p(Y,p(X),p(7)) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(Y,p(7),p(X))'), nl, '$pj_reset', catch(( ( p(Y,p(7),p(X)) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(p(7),Y,p(X))'), nl, '$pj_reset', catch(( ( p(p(7),Y,p(X)) ), write('Y = '), writeq(Y), nl, write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(p(7),p(X),Y)'), nl, '$pj_reset', catch(( ( p(p(7),p(X),Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(p(X),p(7),Y)'), nl, '$pj_reset', catch(( ( p(p(X),p(7),Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- D=x(A,B,C), p(A,B,C)'), nl, '$pj_reset', catch(( ( D=x(A,B,C), p(A,B,C) ), write('D = '), writeq(D), nl, write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
