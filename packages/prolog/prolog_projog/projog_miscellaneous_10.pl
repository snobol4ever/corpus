% try to replace W,X,Y,Z and T variables with '_' - no longer works

qwerty1(L1, L2) :- L1=L2.
%?- qwerty1([a,B,c], [A,b(A,x),c])
% A=a
% B=b(a, x)

qwerty2(L1,L2) :- L1=[W,b(X,Y),Z], L1=L2.
%?- qwerty2([a,B,c], [A,b(A,x),c])
% A=a
% B=b(a, x)

qwerty3(L1,L2) :- L1=L2, L1=[W,b(X,Y),Z].
%?- qwerty3([a,B,c], [A,b(A,x),c])
% A=a
% B=b(a, x)

%?- L1=[a,B,c], L2=[A,b(A,x),c], L1=[_,b(T,x),_], L1=L2
% A=a
% B=b(a, x)
% L1=[a,b(a, x),c]
% L2=[a,b(a, x),c]
% T=a

qwerty4(P1,P2) :- P1=p(W,b(X,Y),Z), P1=P2.
%?- qwerty4(p(a,B,c), p(A,b(A,x),c))
% A=a
% B=b(a, x)

%?- P1=p(a,B,c), P2=p(A,b(A,x),c), P1=p(_,b(T,x),_), P1=P2
% A=a
% B=b(a, x)
% P1=p(a, b(a, x), c)
% P2=p(a, b(a, x), c)
% T=a

qwerty5(L1,L2) :- L1=[Q,b(X,Y),Z], L1=L2.
%?- qwerty5([a,B,c], [A,b(A,x),c])
% A=a
% B=b(a, x)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- qwerty1([a,B,c], [A,b(A,x),c])'), nl, '$pj_reset', catch(( ( qwerty1([a,B,c], [A,b(A,x),c]) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- qwerty2([a,B,c], [A,b(A,x),c])'), nl, '$pj_reset', catch(( ( qwerty2([a,B,c], [A,b(A,x),c]) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- qwerty3([a,B,c], [A,b(A,x),c])'), nl, '$pj_reset', catch(( ( qwerty3([a,B,c], [A,b(A,x),c]) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- L1=[a,B,c], L2=[A,b(A,x),c], L1=[_,b(T,x),_], L1=L2'), nl, '$pj_reset', catch(( ( L1=[a,B,c], L2=[A,b(A,x),c], L1=[_,b(T,x),_], L1=L2 ), write('L1 = '), writeq(L1), nl, write('B = '), writeq(B), nl, write('L2 = '), writeq(L2), nl, write('A = '), writeq(A), nl, write('T = '), writeq(T), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- qwerty4(p(a,B,c), p(A,b(A,x),c))'), nl, '$pj_reset', catch(( ( qwerty4(p(a,B,c), p(A,b(A,x),c)) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- P1=p(a,B,c), P2=p(A,b(A,x),c), P1=p(_,b(T,x),_), P1=P2'), nl, '$pj_reset', catch(( ( P1=p(a,B,c), P2=p(A,b(A,x),c), P1=p(_,b(T,x),_), P1=P2 ), write('P1 = '), writeq(P1), nl, write('B = '), writeq(B), nl, write('P2 = '), writeq(P2), nl, write('A = '), writeq(A), nl, write('T = '), writeq(T), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- qwerty5([a,B,c], [A,b(A,x),c])'), nl, '$pj_reset', catch(( ( qwerty5([a,B,c], [A,b(A,x),c]) ), write('B = '), writeq(B), nl, write('A = '), writeq(A), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
