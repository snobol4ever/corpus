% corrected to verify fix for bug #198 - cyclic variable chains caused infinite loop

%?- X=X, numbervars(X)
% X=$VAR(0)

%?- X=Y, Y=X, numbervars(X)
% X=$VAR(0)
% Y=$VAR(0)

%?- X=Y, Y=Z, Z=X, numbervars(X)
% X=$VAR(0)
% Y=$VAR(0)
% Z=$VAR(0)

%?- [A,B,C,D,E|F]=[E,A,D,F,C|B], numbervars(A)
% A=$VAR(0)
% B=$VAR(0)
% C=$VAR(0)
% D=$VAR(0)
% E=$VAR(0)
% F=$VAR(0)

%?- p(A,B,C,D,E,F)=p(E,A,D,F,C,B), numbervars(A)
% A=$VAR(0)
% B=$VAR(0)
% C=$VAR(0)
% D=$VAR(0)
% E=$VAR(0)
% F=$VAR(0)

%?- A=p(X,Y,Z), B=p(Z,X,Y), A=B, numbervars(A)
% A=p($VAR(0), $VAR(0), $VAR(0))
% B=p($VAR(0), $VAR(0), $VAR(0))
% X=$VAR(0)
% Y=$VAR(0)
% Z=$VAR(0)

%?- P1=p(Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M), P2=p(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z), P1=P2, numbervars(P1)
% A=$VAR(0)
% B=$VAR(0)
% C=$VAR(0)
% D=$VAR(0)
% E=$VAR(0)
% F=$VAR(1)
% G=$VAR(0)
% H=$VAR(0)
% I=$VAR(0)
% J=$VAR(0)
% K=$VAR(0)
% L=$VAR(2)
% M=$VAR(0)
% N=$VAR(1)
% O=$VAR(0)
% P=$VAR(0)
% P1=p($VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(1), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(2), $VAR(0), $VAR(1), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(2), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(1), $VAR(0))
% P2=p($VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(1), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(2), $VAR(0), $VAR(1), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(2), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(0), $VAR(1), $VAR(0))
% Q=$VAR(0)
% R=$VAR(0)
% S=$VAR(2)
% T=$VAR(0)
% U=$VAR(0)
% V=$VAR(0)
% W=$VAR(0)
% X=$VAR(0)
% Y=$VAR(1)
% Z=$VAR(0)

% ---- driver of ours (the grader 2026-11-17, projog_gen.py): each %?- query above, run in order after the load ----
:- dynamic('$pj_n'/1).
'$pj_n'(0).
'$pj_count' :- retract('$pj_n'(N)), N1 is N + 1, assertz('$pj_n'(N1)), N1 >= 10, !.
'$pj_reset' :- retractall('$pj_n'(_)), assertz('$pj_n'(0)).
'$pj_err'(error(F, _)) :- !, write(error(F)), nl.
'$pj_err'(E) :- write(thrown(E)), nl.
'$pj_q'(1) :- write('?- X=X, numbervars(X)'), nl, '$pj_reset', catch(( ( X=X, numbervars(X) ), write('X = '), writeq(X), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(1).
'$pj_q'(2) :- write('?- X=Y, Y=X, numbervars(X)'), nl, '$pj_reset', catch(( ( X=Y, Y=X, numbervars(X) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(2).
'$pj_q'(3) :- write('?- X=Y, Y=Z, Z=X, numbervars(X)'), nl, '$pj_reset', catch(( ( X=Y, Y=Z, Z=X, numbervars(X) ), write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(3).
'$pj_q'(4) :- write('?- [A,B,C,D,E|F]=[E,A,D,F,C|B], numbervars(A)'), nl, '$pj_reset', catch(( ( [A,B,C,D,E|F]=[E,A,D,F,C|B], numbervars(A) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(4).
'$pj_q'(5) :- write('?- p(A,B,C,D,E,F)=p(E,A,D,F,C,B), numbervars(A)'), nl, '$pj_reset', catch(( ( p(A,B,C,D,E,F)=p(E,A,D,F,C,B), numbervars(A) ), write('A = '), writeq(A), nl, write('B = '), writeq(B), nl, write('C = '), writeq(C), nl, write('D = '), writeq(D), nl, write('E = '), writeq(E), nl, write('F = '), writeq(F), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(5).
'$pj_q'(6) :- write('?- A=p(X,Y,Z), B=p(Z,X,Y), A=B, numbervars(A)'), nl, '$pj_reset', catch(( ( A=p(X,Y,Z), B=p(Z,X,Y), A=B, numbervars(A) ), write('A = '), writeq(A), nl, write('X = '), writeq(X), nl, write('Y = '), writeq(Y), nl, write('Z = '), writeq(Z), nl, write('B = '), writeq(B), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(6).
'$pj_q'(7) :- write('?- P1=p(Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M), P2=p(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z), P1=P2, numbervars(P1)'), nl, '$pj_reset', catch(( ( P1=p(Q,W,E,R,T,Y,U,I,O,P,A,S,D,F,G,H,J,K,L,Z,X,C,V,B,N,M), P2=p(A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z), P1=P2, numbervars(P1) ), write('P1 = '), writeq(P1), nl, write('Q = '), writeq(Q), nl, write('W = '), writeq(W), nl, write('E = '), writeq(E), nl, write('R = '), writeq(R), nl, write('T = '), writeq(T), nl, write('Y = '), writeq(Y), nl, write('U = '), writeq(U), nl, write('I = '), writeq(I), nl, write('O = '), writeq(O), nl, write('P = '), writeq(P), nl, write('A = '), writeq(A), nl, write('S = '), writeq(S), nl, write('D = '), writeq(D), nl, write('F = '), writeq(F), nl, write('G = '), writeq(G), nl, write('H = '), writeq(H), nl, write('J = '), writeq(J), nl, write('K = '), writeq(K), nl, write('L = '), writeq(L), nl, write('Z = '), writeq(Z), nl, write('X = '), writeq(X), nl, write('C = '), writeq(C), nl, write('V = '), writeq(V), nl, write('B = '), writeq(B), nl, write('N = '), writeq(N), nl, write('M = '), writeq(M), nl, write('P2 = '), writeq(P2), nl, write(yes), nl, '$pj_count' ; write(no), nl ), E, '$pj_err'(E)), !.
'$pj_q'(7).
'$pj_main' :- between(1, 7, I), '$pj_q'(I), fail.
'$pj_main'.
:- initialization('$pj_main').
