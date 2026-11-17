% first

test_repeat1(N).
test_repeat1(N) :- N > 1, N1 is N-1, test_repeat1(N1).

?-assert(a1(x,y,z)).
?-assert(a1(q,w,e)).
?-assert(a1(g,h,j)).

x1(X,Y,Z) :- test_repeat1(3), a1(X,Y,Z).

y1(X,Y,Z) :- assert(a1(1,3,5)), test_repeat1(3), asserta(a1(2,4,6)), assertz(a1(3,6,9)), a1(X,Y,Z).

z1(X,Y,Z) :- assert(b1(1,2,3)), assert(b1(4,5,6)), assert(b1(7,8,9)), test_repeat1(3), b1(X,Y,Z).

% second

test_repeat2(X) :- X<100.
test_repeat2(X) :- X<1000.
test_repeat2(X) :- X<10000.

?-assert(a2(x,y,z)).
?-assert(a2(q,w,e)).
?-assert(a2(g,h,j)).

x2(X,Y,Z) :- test_repeat2(3), a2(X,Y,Z).

y2(X,Y,Z) :- assert(a2(1,3,5)), test_repeat2(3), asserta(a2(2,4,6)), assertz(a2(3,6,9)), a2(X,Y,Z).

z2(X,Y,Z) :- assert(b2(1,2,3)), assert(b2(4,5,6)), assert(b2(7,8,9)), test_repeat2(3), b2(X,Y,Z).

% third

?-assert(a3(x,y,z)).
?-assert(a3(q,w,e)).
?-assert(a3(g,h,j)).

x3(X,Y,Z) :- repeat(3), a3(X,Y,Z).

y3(X,Y,Z) :- assert(a3(1,3,5)), repeat(3), asserta(a3(2,4,6)), assertz(a3(3,6,9)), a3(X,Y,Z).

z3(X,Y,Z) :- assert(b3(1,2,3)), assert(b3(4,5,6)), assert(b3(7,8,9)), repeat(3), b3(X,Y,Z).

%?- assert(q(10,30,50)), asserta(q(20,40,60)), assertz(q(30,60,90)), q(X,Y,Z)
% X=20
% Y=40
% Z=60
% X=10
% Y=30
% Z=50
% X=30
% Y=60
% Z=90

% first

%?- 0=0, x1(X,w,Z)
% X=q
% Z=e
% X=q
% Z=e
% X=q
% Z=e
%NO

%?- 1=1, x1(X,Y,Z)
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
%NO

%?- 2=2, y1(X,Y,Z)
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
%NO

%?- 3=3, z1(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
%NO

%?- 4=4, z1(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
%NO

%TRUE retractall(b1(_,_,_))

%?- 5=5, z1(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
%NO

%TRUE retractall(a1(1,_,_))
%TRUE retractall(a1(2,_,_))
%TRUE retractall(a1(3,_,_))
%TRUE retractall(a1(x,y,z))

%?- 6=6, x1(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
%NO

%TRUE retractall(a1(_,h,j))

%?- 7=7, x1(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e
%NO

%TRUE retractall(a1(q,w,e))

%FAIL 8=8, x1(X,Y,Z)

% second

%?- 0=0, x2(X,w,Z)
% X=q
% Z=e
% X=q
% Z=e
% X=q
% Z=e
%NO

%?- 1=1, x2(X,Y,Z)
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j

%?- 2=2, y2(X,Y,Z)
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9

%?- 3=3, z2(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%?- 4=4, z2(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%TRUE retractall(b2(_,_,_))

%?- 5=5, z2(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%TRUE retractall(a2(1,_,_))
%TRUE retractall(a2(2,_,_))
%TRUE retractall(a2(3,_,_))
%TRUE retractall(a2(x,y,z))

%?- 6=6, x2(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j

%TRUE retractall(a2(_,h,j))

%?- 7=7, x2(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e

%TRUE retractall(a2(q,w,e))

%FAIL 8=8, x2(X,Y,Z)

% third

%?- 0=0, x3(X,w,Z)
% X=q
% Z=e
% X=q
% Z=e
% X=q
% Z=e
%NO

%?- 1=1, x3(X,Y,Z)
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j

%?- 2=2, y3(X,Y,Z)
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=2
% Y=4
% Z=6
% X=x
% Y=y
% Z=z
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=1
% Y=3
% Z=5
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9
% X=3
% Y=6
% Z=9

%?- 3=3, z3(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%?- 4=4, z3(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%TRUE retractall(b3(_,_,_))

%?- 5=5, z3(X,Y,Z)
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9
% X=1
% Y=2
% Z=3
% X=4
% Y=5
% Z=6
% X=7
% Y=8
% Z=9

%TRUE retractall(a3(1,_,_))
%TRUE retractall(a3(2,_,_))
%TRUE retractall(a3(3,_,_))
%TRUE retractall(a3(x,y,z))

%?- 6=6, x3(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j
% X=q
% Y=w
% Z=e
% X=g
% Y=h
% Z=j

%TRUE retractall(a3(_,h,j))

%?- 7=7, x3(X,Y,Z)
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e
% X=q
% Y=w
% Z=e

%TRUE retractall(a3(q,w,e))

%FAIL 8=8, x3(X,Y,Z)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- assert(q(10,30,50)), asserta(q(20,40,60)), assertz(q(30,60,90)), q(X,Y,Z)'), nl, '$pj_reset', catch(( ( assert(q(10,30,50)), asserta(q(20,40,60)), assertz(q(30,60,90)), q(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- 0=0, x1(X,w,Z)'), nl, '$pj_reset', catch(( ( 0=0, x1(X,w,Z) ), write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- 1=1, x1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 1=1, x1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- 2=2, y1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 2=2, y1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- 3=3, z1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 3=3, z1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- 4=4, z1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 4=4, z1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- 5=5, z1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 5=5, z1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_q'(8) :- write('?- 6=6, x1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 6=6, x1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(8).
'$pj_q'(9) :- write('?- 7=7, x1(X,Y,Z)'), nl, '$pj_reset', catch(( ( 7=7, x1(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(9).
'$pj_q'(10) :- write('?- 0=0, x2(X,w,Z)'), nl, '$pj_reset', catch(( ( 0=0, x2(X,w,Z) ), write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(10).
'$pj_q'(11) :- write('?- 1=1, x2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 1=1, x2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(11).
'$pj_q'(12) :- write('?- 2=2, y2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 2=2, y2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(12).
'$pj_q'(13) :- write('?- 3=3, z2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 3=3, z2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(13).
'$pj_q'(14) :- write('?- 4=4, z2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 4=4, z2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(14).
'$pj_q'(15) :- write('?- 5=5, z2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 5=5, z2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(15).
'$pj_q'(16) :- write('?- 6=6, x2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 6=6, x2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(16).
'$pj_q'(17) :- write('?- 7=7, x2(X,Y,Z)'), nl, '$pj_reset', catch(( ( 7=7, x2(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(17).
'$pj_q'(18) :- write('?- 0=0, x3(X,w,Z)'), nl, '$pj_reset', catch(( ( 0=0, x3(X,w,Z) ), write('X = '), writeq(X), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(18).
'$pj_q'(19) :- write('?- 1=1, x3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 1=1, x3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(19).
'$pj_q'(20) :- write('?- 2=2, y3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 2=2, y3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(20).
'$pj_q'(21) :- write('?- 3=3, z3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 3=3, z3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(21).
'$pj_q'(22) :- write('?- 4=4, z3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 4=4, z3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(22).
'$pj_q'(23) :- write('?- 5=5, z3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 5=5, z3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(23).
'$pj_q'(24) :- write('?- 6=6, x3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 6=6, x3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(24).
'$pj_q'(25) :- write('?- 7=7, x3(X,Y,Z)'), nl, '$pj_reset', catch(( ( 7=7, x3(X,Y,Z) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(25).
'$pj_main' :- between(1, 25, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
