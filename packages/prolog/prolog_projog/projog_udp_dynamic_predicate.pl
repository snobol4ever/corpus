%FAIL p(X,Y,Z)

%TRUE assert(p(a,b,c))

%?- p(X,Y,Z)
% X=a
% Y=b
% Z=c

%TRUE p(a,b,c)
%FAIL p(z,b,c)
%FAIL p(a,z,c)
%FAIL p(a,b,z)

%TRUE assert(p(1,2,3))
%TRUE assert(p(x,y,z))

%TRUE p(a,b,c)
%TRUE_NO retract(p(a,b,c))
%FAIL p(a,b,c)

%TRUE p(x,y,z)
%TRUE retract(p(x,y,z))
%FAIL p(x,y,z)

%TRUE p(1,2,3)
%TRUE retract(p(1,2,3))
%FAIL p(1,2,3)

%TRUE assert(p(a,b,c))
%TRUE assert(p(1,2,3))
%TRUE assert(p(x,y,z))

%?- p(X,Y,Z)
% X=a
% Y=b
% Z=c
% X=1
% Y=2
% Z=3
% X=x
% Y=y
% Z=z

%TRUE p(a,b,c)
%TRUE p(1,2,3)
%TRUE p(x,y,z)
%FAIL p(a,2,3)
%FAIL p(a,y,z)
%FAIL p(1,b,c)
%FAIL p(1,y,z)
%FAIL p(x,b,c)
%FAIL p(x,2,3)
%FAIL p(a,X,3)
%FAIL p(a,y,X)
%FAIL p(1,X,c)
%FAIL p(1,y,X)
%FAIL p(x,X,c)
%FAIL p(x,2,X)
%FAIL p(a,X,X)
%FAIL p(1,X,X)
%FAIL p(x,X,X)
%FAIL p(X,b,X)
%FAIL p(X,2,X)
%FAIL p(X,y,X)
%FAIL p(X,X,c)
%FAIL p(X,X,3)
%FAIL p(X,X,z)

%?- p(a,X,Y)
% X=b
% Y=c

%?- p(1,X,Y)
% X=2
% Y=3

%?- p(x,X,Y)
% X=y
% Y=z

%?- p(X,b,c)
% X=a
%NO

%?- p(X,2,3)
% X=1
%NO

%?- p(X,y,z)
% X=x

%?- assert(p(q,X,Y))
% X=UNINSTANTIATED VARIABLE
% Y=UNINSTANTIATED VARIABLE

%TRUE p(a,b,c)
%TRUE p(1,2,3)
%TRUE p(x,y,z)
%TRUE p(q,w,e)
%TRUE p(q,2,3)

%?- assert(p(w,X,X))
% X=UNINSTANTIATED VARIABLE

%TRUE p(a,b,c)
%TRUE p(1,2,3)
%TRUE p(x,y,z)
%TRUE p(q,w,e)
%TRUE p(q,2,3)
%TRUE p(w,2,2)
%FAIL p(w,2,3)

%?- p(w,7,X)
% X=7

%?- p(w,X,9)
% X=9

%?- assert(p(X,y,u))
% X=UNINSTANTIATED VARIABLE

%TRUE_NO p(a,b,c)
%TRUE_NO p(1,2,3)
%TRUE_NO p(x,y,z)
%TRUE_NO p(q,w,e)
%TRUE_NO p(q,2,3)
%TRUE_NO p(q,e,e)
%TRUE_NO p(w,1,1)
%TRUE p(z,y,u)

%?- retract(p(X,y,u))
% X=q
% X=UNINSTANTIATED VARIABLE

%TRUE_NO p(a,b,c)
%TRUE_NO p(1,2,3)
%TRUE_NO p(x,y,z)
%TRUE p(w,1,1)
%FAIL p(q,w,e)
%FAIL p(q,e,e)
%FAIL p(X,y,u)

%TRUE retract(p(w,1,1))
%FAIL p(w,1,1)
%TRUE retract(p(x,y,z))
%FAIL p(x,y,z)
%TRUE retract(p(1,2,3))
%FAIL p(1,2,3)

%TRUE p(a,b,c)

%TRUE assert(p(d,f,g))

%TRUE_NO p(a,b,c)

%TRUE retract(p(d,f,g))
%TRUE retract(p(a,b,c))

%FAIL p(X,Y,Z)

%TRUE assert(p(t,y,u))
%TRUE assert(p(h,j,k))

%TRUE p(t,y,u)
%TRUE p(h,j,k)
%FAIL p(a,b,c)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- p(X,Y,Z)'), nl, '$pj_reset', catch(( ( p(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- p(X,Y,Z)'), nl, '$pj_reset', catch(( ( p(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- p(a,X,Y)'), nl, '$pj_reset', catch(( ( p(a,X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- p(1,X,Y)'), nl, '$pj_reset', catch(( ( p(1,X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(x,X,Y)'), nl, '$pj_reset', catch(( ( p(x,X,Y) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- p(X,b,c)'), nl, '$pj_reset', catch(( ( p(X,b,c) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- p(X,2,3)'), nl, '$pj_reset', catch(( ( p(X,2,3) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- p(X,y,z)'), nl, '$pj_reset', catch(( ( p(X,y,z) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- assert(p(q,X,Y))'), nl, '$pj_reset', catch(( ( assert(p(q,X,Y)) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- assert(p(w,X,X))'), nl, '$pj_reset', catch(( ( assert(p(w,X,X)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- p(w,7,X)'), nl, '$pj_reset', catch(( ( p(w,7,X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- p(w,X,9)'), nl, '$pj_reset', catch(( ( p(w,X,9) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- assert(p(X,y,u))'), nl, '$pj_reset', catch(( ( assert(p(X,y,u)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- retract(p(X,y,u))'), nl, '$pj_reset', catch(( ( retract(p(X,y,u)) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_main' :- between(1, 14, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
