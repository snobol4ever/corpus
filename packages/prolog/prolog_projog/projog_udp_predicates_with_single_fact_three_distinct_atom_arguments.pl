p(a,b,c).

%FAIL p(a,c,b)
%FAIL p(b,a,c)
%FAIL p(b,c,a)
%FAIL p(c,a,b)
%FAIL p(c,b,a)
%FAIL p(a,a,a)
%FAIL p(b,b,b)
%FAIL p(c,c,c)
%FAIL p(x,b,c)
%FAIL p(a,x,c)
%FAIL p(a,b,x)
%FAIL p(x,x,x)
%FAIL p(x,y,z)
%FAIL p(X,X,c)
%FAIL p(X,b,X)
%FAIL p(a,X,X)
%FAIL p(X,X,X)
%FAIL p(Y,X,X)
%FAIL p(X,Y,X)
%FAIL p(X,X,Y)
%FAIL p(a,b)
%FAIL p(a,b,c,d)

%TRUE p(a,b,c)

%?- p(X,b,c)
% X=a

%?- p(a,X,c)
% X=b

%?- p(a,b,X)
% X=c

%?- p(X,Y,c)
% X=a
% Y=b

%?- p(X,b,Y)
% X=a
% Y=c

%?- p(a,X,Y)
% X=b
% Y=c

%?- p(X,Y,Z)
% X=a
% Y=b
% Z=c

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(X,b,c)'), nl, '$pj_reset', catch(( ( p(X,b,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(a,X,c)'), nl, '$pj_reset', catch(( ( p(a,X,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(a,b,X)'), nl, '$pj_reset', catch(( ( p(a,b,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(X,Y,c)'), nl, '$pj_reset', catch(( ( p(X,Y,c) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(X,b,Y)'), nl, '$pj_reset', catch(( ( p(X,b,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(a,X,Y)'), nl, '$pj_reset', catch(( ( p(a,X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- p(X,Y,Z)'), nl, '$pj_reset', catch(( ( p(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
